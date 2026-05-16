import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:quiz_biblico_5/shared/app_bar_default/app_bar_default.dart';
import 'package:quiz_biblico_5/widgets/popup_menu_button_about_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final user = FirebaseAuth.instance.currentUser;
  final TextEditingController _nameController = TextEditingController();

  String selectedAvatar = 'assets/avatars/avatar1.png';
  bool isLoading = true;
  bool isEditing = true;

  final List<String> avatars = [
    'assets/avatars/avatar1.png',
    'assets/avatars/avatar2.png',
    'assets/avatars/avatar3.png',
    'assets/avatars/avatar4.png',
    'assets/avatars/avatar5.png',
    'assets/avatars/avatar6.png',
    'assets/avatars/avatar7.png',
    'assets/avatars/avatar8.png',
    'assets/avatars/avatar9.png',
    'assets/avatars/avatar10.png',
  ];

  @override
  void initState() {
    super.initState();
    _loadProfile();
  }

  Future<void> _loadProfile() async {
    // Se não houver usuário, paramos o loading e saímos
    if (user == null) {
      if (mounted) setState(() => isLoading = false);
      return;
    }

    try {
      final doc = await FirebaseFirestore.instance
          .collection('users')
          .doc(user!.uid)
          .get();

      if (doc.exists) {
        final data = doc.data()!;
        final name = data['name'];
        final avatar = data['photoUrl'];

        if (name != null && avatar != null) {
          _nameController.text = name;
          selectedAvatar = avatar;
          isEditing = false;
        }
      }
    } catch (e) {
      debugPrint("Erro ao carregar perfil: $e");
      // Opcional: mostrar um alerta de erro aqui
    } finally {
      // O FINALLY garante que o loading pare, dando erro ou não
      if (mounted) {
        setState(() => isLoading = false);
      }
    }
  }

  Future<void> _saveProfile() async {
    // 1. Verificação básica
    if (_nameController.text.trim().isEmpty) {
      _showSnackBar("Por favor, digite um nome.");
      return;
    }

    if (user == null) {
      _showSnackBar("Erro: Usuário não autenticado.");
      return;
    }

    try {
      // Opcional: mostrar um carregando enquanto salva
      setState(() => isLoading = true);

      await FirebaseFirestore.instance.collection('users').doc(user!.uid).set({
        'uid': user!.uid,
        'name': _nameController.text.trim(),
        'photoUrl': selectedAvatar,
        'updatedAt': FieldValue.serverTimestamp(), // Boa prática
      });

      await user!.updateDisplayName(_nameController.text.trim());
      await user!.updatePhotoURL(selectedAvatar);

      if (!mounted) return;
      setState(() {
        isEditing = false;
        isLoading = false;
      });

      _showSnackBar('Perfil atualizado com sucesso!');
    } catch (e) {
      if (!mounted) return;
      setState(() => isLoading = false);

      // ISSO vai te dizer na tela qual é o erro (ex: Permission Denied)
      _showSnackBar("Erro ao salvar: $e");
      debugPrint("ERRO DETALHADO: $e");
    }
  }

  // Função auxiliar para não repetir código
  void _showSnackBar(String message) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return Scaffold(
        body: LayoutBuilder(
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
                child: CircularProgressIndicator(color: Colors.red.shade300),
              ),
            );
          },
        ),
      );
    }

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(55.0),
        child: AppBarDefault(
          text: 'Perfil Bíblico',
          actions: [PopupMenuButtonAboutWidget()],
        ),
      ),

      body: LayoutBuilder(
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
              child: Padding(
                padding: const EdgeInsets.all(16),
                // Adicionado Scroll para não dar erro quando o teclado abrir
                child: SingleChildScrollView(
                  child: isEditing ? _buildEditMode() : _buildViewMode(),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  // 🟢 MODO EDIÇÃO
  Widget _buildEditMode() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Escolha um avatar',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 12),

        Wrap(
          spacing: 10,
          runSpacing: 10,
          children: avatars.map((avatar) {
            final isSelected = selectedAvatar == avatar;

            return GestureDetector(
              onTap: () => setState(() => selectedAvatar = avatar),
              child: Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: isSelected ? Colors.white : Colors.transparent,
                    width: 3,
                  ),
                ),
                child: CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage(avatar),
                ),
              ),
            );
          }).toList(),
        ),

        const SizedBox(height: 32),
        const Text(
          'Seu nome',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),

        TextField(
          controller: _nameController,
          decoration: InputDecoration(
            hintText: 'Digite seu nome',
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade600, width: 1),
              borderRadius: BorderRadius.circular(10),),
            disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade600, width: 1),
              borderRadius: BorderRadius.circular(10),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade600, width: 1),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade600, width: 1),
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),

            prefixIcon: Icon(Icons.person, color: Colors.grey.shade600),
          ),
        ),

        const SizedBox(height: 40),

        SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            onPressed: _saveProfile,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red.shade300,
              
            ),
            child: const Text(
              'Salvar Alterações',
              style: TextStyle(fontFamily: 'Trocchi', fontSize: 18),
            ),
          ),
        ),
      ],
    );
  }

  // 🔵 MODO VISUALIZAÇÃO
  Widget _buildViewMode() {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 20),
          CircleAvatar(radius: 60, backgroundImage: AssetImage(selectedAvatar)),
          const SizedBox(height: 16),
          Text(
            _nameController.text,
            style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text(user?.email ?? '', style: TextStyle(color: Colors.grey[600])),
          const SizedBox(height: 40),
          OutlinedButton.icon(
            onPressed: () => setState(() => isEditing = true),
            icon: Icon(Icons.edit, color: Colors.red.shade300),
            label: Text(
              'Editar Perfil',
              style: TextStyle(fontSize: 18, color: Colors.red.shade300),
            ),
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.red.shade300,
              animationDuration: Duration(milliseconds: 500),
              side: BorderSide(width: 2, color: Colors.red.shade300),
              minimumSize: const Size(200, 45),
            ),
          ),
        ],
      ),
    );
  }
}
