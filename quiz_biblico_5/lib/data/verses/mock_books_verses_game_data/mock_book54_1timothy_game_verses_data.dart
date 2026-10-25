import 'package:quiz_biblico_5/models/variables_game_model.dart';

class Timothy1VersesGameMock {
  List<VariablesGameModel> timothy1Verses = [
    // Perguntas de 1 Timóteo
    VariablesGameModel(
      id: '1',
      question: '1 - A quem foi dirigida a primeira carta de Paulo?',
      alternatives1: 'a) Tito',
      alternatives2: 'b) Timóteo',
      alternatives3: 'c) Filemom',
      response1: 'Você Perdeu 20 Pontos!',
      response2:
          'Resposta correta: b) Timóteo (1 Timóteo 1:2)\n\n Você Ganhou 10 Pontos!',
      response3: 'Você Perdeu 10 Pontos!',
      alternatives1Imagem: 'images/sad.png',
      alternatives2Imagem: 'images/balloons.png',
      alternatives3Imagem: 'images/sad.png',
      isSelectNamber: false,
    ),
  ];
}
