import 'package:quiz_biblico_5/models/variables_game_model.dart';

class Peter1VersesGameMock {
  List<VariablesGameModel> peter1Verses = [
    VariablesGameModel(
      id: '1',
      question: '1 - Segundo 1 Pedro, para que fomos chamados?',
      alternatives1: 'a) Para a escuridão',
      alternatives2: 'b) Para a sua maravilhosa luz',
      alternatives3: 'c) Para o deserto',
      response1: 'Você Perdeu 20 Pontos!',
      response2:
          'Resposta correta: b) Para a sua maravilhosa luz (1 Pedro 2:9)\n\n Você Ganhou 10 Pontos!',
      response3: 'Você Perdeu 10 Pontos!',
      alternatives1Imagem: 'images/sad.png',
      alternatives2Imagem: 'images/balloons.png',
      alternatives3Imagem: 'images/sad.png',
      isSelectNamber: false,
    ),
  ];
}
