import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:quiz_biblico_5/screens/profile/profile_page.dart';
import 'package:quiz_biblico_5/shared/app_bar_default/app_bar_default.dart';
import 'package:quiz_biblico_5/widgets/popup_menu_button_about_widget.dart';

class RankingPage extends StatefulWidget {
  const RankingPage({super.key});

  @override
  State<RankingPage> createState() => _RankingPageState();
}

class _RankingPageState extends State<RankingPage> {
  final user = FirebaseAuth.instance.currentUser;
  bool _isProfileComplete = false;
  bool _checkingProfile = true;

  @override
  void initState() {
    super.initState();
    _checkProfileStatus();
  }

  // Mesma lógica de verificação que você usa no Chat
  Future<void> _checkProfileStatus() async {
    if (user == null) return;
    try {
      final doc = await FirebaseFirestore.instance
          .collection('users')
          .doc(user!.uid)
          .get();

      if (doc.exists) {
        final data = doc.data();
        final name = data?['name'];
        final photoUrl = data?['photoUrl'];

        if (name != null &&
            name.toString().trim().isNotEmpty &&
            photoUrl != null &&
            photoUrl.toString().trim().isNotEmpty) {
          setState(() {
            _isProfileComplete = true;
          });
        }
      }
    } catch (e) {
      debugPrint("Erro ao verificar perfil: $e");
    } finally {
      setState(() {
        _checkingProfile = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(55.0),
        child: AppBarDefault(
          text: 'Ranking Global',
          actions: [PopupMenuButtonAboutWidget()],
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
            colors: [
              Theme.of(context).secondaryHeaderColor,
              Theme.of(context).primaryColor,
              Theme.of(context).secondaryHeaderColor,
            ],
          ),
        ),
        // Se estiver carregando, mostra o indicador
        child: _checkingProfile
            ? const Center(child: CircularProgressIndicator())
            // Se o perfil NÃO estiver completo, mostra o aviso (Igual ao Chat)
            : !_isProfileComplete
                ? _buildProfileWarning()
                // Se estiver tudo OK, mostra o Ranking
                : _buildRankingList(),
      ),
    );
  }

  // Widget do Aviso de Perfil Incompleto
  Widget _buildProfileWarning() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.lock_person, size: 80, color: Colors.white70),
            const SizedBox(height: 20),
            const Text(
              "Ops! Você precisa definir um nome e avatar para ver o ranking e participar.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 25),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red.shade400,
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
              ),
              onPressed: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProfilePage()),
                );
                _checkProfileStatus(); // Revalida ao voltar
              },
              icon: const Icon(Icons.person, color: Colors.white),
              label: const Text(
                "Completar Meu Perfil",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget da Lista de Ranking
  Widget _buildRankingList() {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance
          .collection('ranking')
          .orderBy('points', descending: true)
          .limit(50)
          .snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return const Center(child: Text('Erro ao carregar ranking'));
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }

        final docs = snapshot.data!.docs;
        if (docs.isEmpty) {
          return const Center(child: Text('Nenhuma pontuação encontrada'));
        }

        return ListView.builder(
          padding: const EdgeInsets.all(10),
          itemCount: docs.length,
          itemBuilder: (context, index) {
            final data = docs[index].data() as Map<String, dynamic>;
            final isMe = docs[index].id == user?.uid;
            final int points = data['points'] ?? 0;

            return Card(
              elevation: isMe ? 5 : 1,
              color: isMe
                  ? Colors.white.withOpacity(0.9)
                  : Colors.white.withOpacity(0.7),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: ListTile(
                leading: SizedBox(
                  width: 70,
                  child: Row(
                    children: [
                      _buildRankIndex(index),
                      const SizedBox(width: 8),
                      _buildAvatar(data['photoUrl']),
                    ],
                  ),
                ),
                title: Text(
                  data['name'] ?? 'Viajante Bíblico',
                  style: TextStyle(
                    fontWeight: isMe ? FontWeight.bold : FontWeight.normal,
                    color: Colors.black87,
                  ),
                ),
                trailing: Text(
                  "$points pts",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent,
                    fontSize: 16,
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildRankIndex(int index) {
    if (index == 0) return const Icon(Icons.emoji_events, color: Colors.amber);
    if (index == 1) return const Icon(Icons.emoji_events, color: Colors.grey);
    if (index == 2) return const Icon(Icons.emoji_events, color: Colors.brown);
    return Text("${index + 1}º",
        style: const TextStyle(fontWeight: FontWeight.bold));
  }

  Widget _buildAvatar(String? photoUrl) {
    bool isAsset = photoUrl != null && photoUrl.startsWith('assets/');
    return CircleAvatar(
      radius: 18,
      backgroundColor: Colors.grey[300],
      backgroundImage: (photoUrl != null && photoUrl.isNotEmpty)
          ? (isAsset ? AssetImage(photoUrl) : NetworkImage(photoUrl))
              as ImageProvider
          : null,
      child: (photoUrl == null || photoUrl.isEmpty)
          ? const Icon(Icons.person, size: 20, color: Colors.white)
          : null,
    );
  }
}