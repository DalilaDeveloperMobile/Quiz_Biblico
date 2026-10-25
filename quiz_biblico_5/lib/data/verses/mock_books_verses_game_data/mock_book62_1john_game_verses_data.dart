import 'package:quiz_biblico_5/models/variables_game_model.dart';

class John1VersesGameMock {
  List<VariablesGameModel> john1Verses = [
    VariablesGameModel(
      id: '1',
      question: '1 - Quem é chamado de a Palavra da vida no início da carta?',
      alternatives1: 'a) João Batista',
      alternatives2: 'b) Jesus Cristo',
      alternatives3: 'c) O Espírito Santo',
      response1: 'Você Perdeu 20 Pontos!',
      response2:
          'Resposta correta: b) Jesus Cristo (1 João 1:1)\n\n Você Ganhou 10 Pontos!',
      response3: 'Você Perdeu 10 Pontos!',
      alternatives1Imagem: 'images/sad.png',
      alternatives2Imagem: 'images/balloons.png',
      alternatives3Imagem: 'images/sad.png',
      isSelectNamber: false,
    ),
  ];
}
