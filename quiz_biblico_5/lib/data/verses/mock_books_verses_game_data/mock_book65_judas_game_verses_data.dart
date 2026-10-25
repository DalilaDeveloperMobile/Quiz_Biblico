import 'package:quiz_biblico_5/models/variables_game_model.dart';

class JudasVersesGameMock {
  List<VariablesGameModel> judasVerses = [
    VariablesGameModel(
      id: '1',
      question: '1 - Quem é o autor da carta de Judas?',
      alternatives1: 'a) Judas, irmão de Tiago',
      alternatives2: 'b) Judas Iscariotes',
      alternatives3: 'c) Judas Tadeu',
      response1:
          'Resposta correta: a) Judas, irmão de Tiago (Judas 1:1)\n\nVocê Ganhou 10 Pontos!',
      response2: 'Você Perdeu 20 Pontos!',
      response3: 'Você Perdeu 10 Pontos!',
      alternatives1Imagem: 'images/balloons.png',
      alternatives2Imagem: 'images/sad.png',
      alternatives3Imagem: 'images/sad.png',
      isSelectNamber: false,
    ),
  ];
}
