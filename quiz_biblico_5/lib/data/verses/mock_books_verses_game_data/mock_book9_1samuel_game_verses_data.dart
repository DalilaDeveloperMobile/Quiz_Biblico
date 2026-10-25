import 'package:quiz_biblico_5/models/variables_game_model.dart';

class Samuel1VersesGameMock {
  List<VariablesGameModel> samuel1Verses = [
    VariablesGameModel(
      id: '1',
      question: '1. Quem era o pai de Samuel?',
      alternatives1: 'a) Elcana',
      alternatives2: 'b) Efraim',
      alternatives3: 'c) Eli',
      response1:
          'Resposta: a) Elcana (1Samuel 1:1).'
          ' \n\n Você Ganhou 10 Pontos!',
      response2: 'Você Perdeu 10 Pontos!',
      response3: 'Você Perdeu 15 Pontos!',
      alternatives1Imagem: 'images/balloons.png',
      alternatives2Imagem: 'images/sad.png',
      alternatives3Imagem: 'images/sad.png',
      isSelectNamber: false,
    ),
  ];
}
