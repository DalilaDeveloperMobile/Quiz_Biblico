import 'package:quiz_biblico_5/models/variables_game_model.dart';

class NoVersesGameMock {
  List<VariablesGameModel> noVerses = [
    VariablesGameModel(
      id: '1',
      question: '1 - Quem é descrito como Deus zeloso e vingador?',
      alternatives1: 'a) Baal',
      alternatives2: 'b) O Senhor',
      alternatives3: 'c) Nabucodonosor',
      response1: 'Você Perdeu 20 Pontos!',
      response2:
          'Resposta correta: b) O Senhor (Naum 1:2)\n\n Você Ganhou 10 Pontos!',
      response3: 'Você Perdeu 10 Pontos!',
      alternatives1Imagem: 'images/sad.png',
      alternatives2Imagem: 'images/balloons.png',
      alternatives3Imagem: 'images/sad.png',
      isSelectNamber: false,
    ),
  ];
}
