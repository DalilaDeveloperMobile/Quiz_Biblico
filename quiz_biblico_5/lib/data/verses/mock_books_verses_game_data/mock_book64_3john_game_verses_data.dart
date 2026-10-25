import 'package:quiz_biblico_5/models/variables_game_model.dart';

class John3VersesGameMock {
  List<VariablesGameModel> john3Verses = [
    VariablesGameModel(
      id: '1',
      question: '1 - A quem João está escrevendo nesta carta?',
      alternatives1: 'a) Gaio',
      alternatives2: 'b) Diótrefes',
      alternatives3: 'c) Demétrio',
      response1:
          'Resposta correta: a) Gaio (3 João 1:1)\n\nVocê Ganhou 10 Pontos!',
      response2: 'Você Perdeu 20 Pontos!',
      response3: 'Você Perdeu 10 Pontos!',
      alternatives1Imagem: 'images/balloons.png',
      alternatives2Imagem: 'images/sad.png',
      alternatives3Imagem: 'images/sad.png',
      isSelectNamber: false,
    ),
  ];
}
