import 'package:quiz_biblico_5/models/variables_game_model.dart';

class MateusVersesGameMock {
  List<VariablesGameModel> mateusVerses = [
    VariablesGameModel(
      id: '1',
      question: '1 - Quem foi o pai de Jesus, segundo o evangelho de Mateus?',
      alternatives1: 'a) José',
      alternatives2: 'b) Davi',
      alternatives3: 'c) Zacarias',
      response1:
          'Resposta correta: a) José (Mateus 1:16)\n\n Você Ganhou 10 Pontos!',
      response2: 'Você Perdeu 20 Pontos!',
      response3: 'Você Perdeu 20 Pontos!',
      alternatives1Imagem: 'images/balloons.png',
      alternatives2Imagem: 'images/sad.png',
      alternatives3Imagem: 'images/sad.png',
      isSelectNamber: false,
    ),
  ];
}
