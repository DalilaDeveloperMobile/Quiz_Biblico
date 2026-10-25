import 'package:quiz_biblico_5/models/variables_game_model.dart';

class Thessalonians1VersesGameMock {
  List<VariablesGameModel> thessalonians1Verses = [
    VariablesGameModel(
      id: '1',
      question: '1 - Quem escreveu a carta de 1 Tessalonicenses?',
      alternatives1: 'a) Paulo, Silvano e Timóteo',
      alternatives2: 'b) Pedro e João',
      alternatives3: 'c) Tiago e Judas',
      response1:
          'Resposta correta: a) Paulo, Silvano e Timóteo (1 Tessalonicenses 1:1)\n\n Você Ganhou 10 Pontos!',
      response2: 'Você Perdeu 20 Pontos!',
      response3: 'Você Perdeu 10 Pontos!',
      alternatives1Imagem: 'images/balloons.png',
      alternatives2Imagem: 'images/sad.png',
      alternatives3Imagem: 'images/sad.png',
      isSelectNamber: false,
    ),
  ];
}
