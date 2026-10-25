import 'package:quiz_biblico_5/models/variables_game_model.dart';

class DanielVersesGameMock {
  List<VariablesGameModel> danielVerses = [
    VariablesGameModel(
      id: '1',
      question: '1 - Quem levou Daniel e seus amigos cativos para a Babilônia?',
      alternatives1: 'a) Nabucodonosor',
      alternatives2: 'b) Dario',
      alternatives3: 'c) Ciro',
      response1:
          'Resposta correta: a) Nabucodonosor (Daniel 1:1-2)'
          '\n\nVocê Ganhou 10 Pontos!',
      response2: 'Você Perdeu 10 Pontos!',
      response3: 'Você Perdeu 20 Pontos!',
      alternatives1Imagem: 'images/balloons.png',
      alternatives2Imagem: 'images/sad.png',
      alternatives3Imagem: 'images/sad.png',
      isSelectNamber: false,
    ),
  ];
}
