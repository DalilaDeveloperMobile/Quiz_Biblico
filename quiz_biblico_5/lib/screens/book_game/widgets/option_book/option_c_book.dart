import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_biblico_5/models/variables_game_model.dart';
import 'package:quiz_biblico_5/provider/theme_changer.dart';

import 'package:quiz_biblico_5/utils/routes_books.dart';

class OptionCBook extends StatelessWidget {
  final VariablesGameModel book;
  final String nameBook;

  const OptionCBook({super.key, required this.book, required this.nameBook});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (book.alternatives3Imagem! == 'images/balloons.png') {
          enviarRanking(10);
        } else if (book.response3 == 'Você Perdeu 2 Pontos!') {
          enviarRanking(-2);
        } else if (book.response3 == 'Você Perdeu 5 Pontos!') {
          enviarRanking(-5);
        } else if (book.response3 == 'Você Perdeu 15 Pontos!') {
          enviarRanking(-15);
        } else if (book.response3 == 'Você Perdeu 10 Pontos!') {
          enviarRanking(-10);
        }
        Navigator.of(context).pushReplacementNamed(
          RoutesBooks().routes['${nameBook}AnswerC']!,
          arguments: book,
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Container(
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color:
                Provider.of<ThemeChanger>(context).themeType == AppTheme.light
                ? Colors.brown.withValues(alpha: 0.5)
                : Colors.white24,
            border: const Border(
              top: BorderSide(
                //                    <--- top side
                color: Colors.white,
                width: 5.0,
              ),
              left: BorderSide(color: Colors.white, width: 5.0),
              bottom: BorderSide(
                //                    <--- bottom side
                color: Colors.white,
                width: 5.0,
              ),
              right: BorderSide(
                //                    <--- right side
                color: Colors.white,
                width: 5.0,
              ),
            ),
          ),
          child: Text(
            book.alternatives3!,
            style: const TextStyle(
              color: Colors.white,
              fontFamily: 'FredokaOne',
              fontSize: 18,
              // fontSize: isLandscape! ? constraints!.maxHeight * 0.05 : constraints!.maxHeight * 0.03,
              shadows: [
                Shadow(
                  blurRadius: 7.0,
                  color: Colors.black,
                  offset: Offset(1.0, 1.0),
                ),
              ],
            ),
            maxLines: 5,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }

  Future<void> enviarRanking(int pontosGanhos) async {
    final user = FirebaseAuth.instance.currentUser;
    if (user == null) return;

    try {
      final userDoc = await FirebaseFirestore.instance
          .collection('users')
          .doc(user.uid)
          .get();

      if (!userDoc.exists) return;

      final userData = userDoc.data();

      // /// 🔥 1️⃣ envia mensagem no chat de ranking
      // await FirebaseFirestore.instance.collection('ranking_messages').add({
      //   'text': '🏆 ganhou $pontosGanhos pontos no ranking!',
      //   'uid': user.uid,
      //   'name': userData?['name'],
      //   'photoUrl': userData?['photoUrl'],
      //   'createdAt': FieldValue.serverTimestamp(),
      //   'points': pontosGanhos,
      //   'type': 'ranking',
      // });

      /// 🔥 2️⃣ soma pontos no ranking real
      final rankingRef = FirebaseFirestore.instance
          .collection('ranking')
          .doc(user.uid);

      await FirebaseFirestore.instance.runTransaction((transaction) async {
        final snapshot = await transaction.get(rankingRef);

        int pontosAtuais = 0;
        if (snapshot.exists) {
          pontosAtuais = snapshot.data()?['points'] ?? 0;
        }

        transaction.set(rankingRef, {
          'uid': user.uid,
          'name': userData?['name'],
          'photoUrl': userData?['photoUrl'],
          'points': pontosAtuais + pontosGanhos,
          'updatedAt': FieldValue.serverTimestamp(),
        }, SetOptions(merge: true));
      });
    } catch (e) {
      debugPrint("Erro ao enviar ranking: $e");
    }
  }
}
