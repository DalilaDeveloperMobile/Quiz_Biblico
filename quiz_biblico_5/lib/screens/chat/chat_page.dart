import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:quiz_biblico_5/screens/profile/profile_page.dart';
import 'package:quiz_biblico_5/shared/app_bar_default/app_bar_default.dart';
import 'package:quiz_biblico_5/widgets/popup_menu_button_about_widget.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final TextEditingController _controller = TextEditingController();
  final user = FirebaseAuth.instance.currentUser;

  // Variáveis para controlar o estado do perfil
  bool _isProfileComplete = false;
  bool checkingProfile = true;

  @override
  void initState() {
    super.initState();
    _checkProfileStatus();
  }

  // 🔍 Verifica se o usuário tem nome e avatar no Firestore
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

        // Só considera completo se ambos existirem e não forem vazios
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
        checkingProfile = false;
      });
    }
  }

  void sendMessage() async {
    // 🛑 SEGUNDA TRAVA: Bloqueia o envio na função caso burlado
    if (!_isProfileComplete) return;
    if (_controller.text.trim().isEmpty || user == null) return;

    final String messageText = _controller.text.trim();
    _controller.clear();

    try {
      final userDoc = await FirebaseFirestore.instance
          .collection('users')
          .doc(user!.uid)
          .get();

      if (userDoc.exists) {
        await FirebaseFirestore.instance.collection('messages').add({
          'text': messageText,
          'uid': user!.uid,
          'name': userDoc.data()?['name'],
          'photoUrl': userDoc.data()?['photoUrl'],
          'createdAt': FieldValue.serverTimestamp(),
        });
      }
    } catch (e) {
      debugPrint("Erro ao enviar mensagem: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(55.0),
        child: AppBarDefault(
          text: 'Chat Bíblico',
          actions: [PopupMenuButtonAboutWidget()],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: StreamBuilder<QuerySnapshot>(
              stream: FirebaseFirestore.instance
                  .collection('messages')
                  .orderBy('createdAt', descending: true)
                  .snapshots(),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return const Center(child: Text('Erro ao carregar'));
                }
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                    child: CircularProgressIndicator(
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  );
                }

                final docs = snapshot.data!.docs;
                if (docs.isEmpty) {
                  return LayoutBuilder(
                  builder: (ctx, constraints) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
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
                      child: Center(
                    child: Text('Nenhuma mensagem encontrada'),
                  ));
                  },);
                }
                return LayoutBuilder(
                  builder: (ctx, constraints) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
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
                      child: ListView.builder(
                        reverse: true,
                        padding: const EdgeInsets.all(15),
                        itemCount: docs.length,
                        itemBuilder: (context, index) {
                          final data =
                              docs[index].data() as Map<String, dynamic>;
                          final isMe = data['uid'] == user?.uid;
                          return _buildMessageBubble(data, isMe);
                        },
                      ),
                    );
                  },
                );
              },
            ),
          ),

          // 🟣 PRIMEIRA TRAVA: Mostra campo de texto OU botão de aviso
          _buildInputArea(),
        ],
      ),
    );
  }

  Widget _buildInputArea() {
    // if (_checkingProfile) {
    //   return Padding(
    //     padding: EdgeInsets.all(20),
    //     child: LinearProgressIndicator(
    //       color: Theme.of(context).primaryColor,
    //       backgroundColor: Theme.of(context).secondaryHeaderColor,
    //     ),
    //   );
    // }

    // Se o perfil não estiver completo, mostra o convite para editar
    if (!_isProfileComplete) {
      return Container(
        padding: const EdgeInsets.all(16),
        color: Theme.of(context).primaryColor,
        child: Column(
          children: [
            const Text(
              "Ops! Você precisa definir um nome e avatar para participar do chat.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red.shade300,
              ),
              onPressed: () async {
                // Navega para o perfil e revalida ao voltar
                await Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProfilePage()),
                );
                _checkProfileStatus();
              },
              icon: Icon(
                Icons.person,
                
              ),
              label: Text(
                "Completar Meu Perfil",
                style: TextStyle(
                 
                ),
              ),
            ),
          ],
        ),
      );
    }

    // Campo de texto normal se estiver tudo OK
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
      ),
      child: SafeArea(
        child: Row(
          children: [
            Expanded(
              child: TextField(
                controller: _controller,
                textCapitalization: TextCapitalization.sentences,
                decoration: InputDecoration(
                  hintText: 'Digite uma mensagem...',
                  hintStyle: TextStyle(color: Colors.grey[100]),
                  filled: true,
                  fillColor: Theme.of(context).secondaryHeaderColor,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 15),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 8),
            CircleAvatar(
              backgroundColor: Colors.green,
              child: IconButton(
                icon: const Icon(Icons.send, color: Colors.white),
                onPressed: sendMessage,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMessageBubble(Map<String, dynamic> data, bool isMe) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: isMe
            ? MainAxisAlignment.end
            : MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          if (!isMe) _buildAvatar(data['photoUrl']),
          const SizedBox(width: 8),
          Flexible(
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: isMe ? Colors.green[100] : Colors.blue[50],
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(15),
                  topRight: const Radius.circular(15),
                  bottomLeft: Radius.circular(isMe ? 15 : 0),
                  bottomRight: Radius.circular(isMe ? 0 : 15),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data['name'] ?? 'Usuário',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: isMe ? Colors.green[900] : Colors.blue[900],
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    data['text'] ?? '',
                    style: const TextStyle(fontSize: 15, color: Colors.black87),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 8),
          if (isMe) _buildAvatar(data['photoUrl']),
        ],
      ),
    );
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
