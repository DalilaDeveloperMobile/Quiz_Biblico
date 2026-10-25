import 'package:quiz_biblico_5/models/variables_game_model.dart';

class EcclesiastesVersesGameMock {
  List<VariablesGameModel> ecclesiastesVerses = [
    VariablesGameModel(
      id: '1',
      question: '1 - Segundo Eclesiastes, tudo é o quê?',
      alternatives1: 'a) Alegria',
      alternatives2: 'b) Vaidade',
      alternatives3: 'c) Esperança',
      response1: 'Você Perdeu 20 Pontos!',
      response2:
          'Resposta correta: b) Vaidade (Eclesiastes 1:2)'
          ' \n\n Você Ganhou 10 Pontos!',
      response3: 'Você Perdeu 10 Pontos!',
      alternatives1Imagem: 'images/sad.png',
      alternatives2Imagem: 'images/balloons.png',
      alternatives3Imagem: 'images/sad.png',
      isSelectNamber: false,
    ),
  ];
}
