import 'package:quiz_biblico_5/models/variables_game_model.dart';

class NumbersVersesGameMock {
  List<VariablesGameModel> numbersVerses = [
    VariablesGameModel(
      id: '1',
      question: '1 - O censo realizado no primeiro capítulo'
          ' de Números, contou todos os homens a partir de qual idade?',
      alternatives1: 'a) 20 anos',
      alternatives2: 'b) 30 anos',
      alternatives3: 'c) 40 anos',
      response1: 'Resposta: a) 20 anos (Números 1:3).'
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
