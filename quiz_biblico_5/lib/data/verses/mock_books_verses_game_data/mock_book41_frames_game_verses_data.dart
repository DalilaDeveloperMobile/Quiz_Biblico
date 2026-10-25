import 'package:quiz_biblico_5/models/variables_game_model.dart';

class FramesVersesGameMock {
  List<VariablesGameModel> framesVerses = [
    VariablesGameModel(
      id: '1',
      question: '1 - Quem batizou Jesus segundo Marcos?',
      alternatives1: 'a) Pedro',
      alternatives2: 'b) João Batista',
      alternatives3: 'c) Tiago',
      response1: 'Você Perdeu 20 Pontos!',
      response2:
          'Resposta correta: b) João Batista (Marcos 1:9-11)\n\n Você Ganhou 10 Pontos!',
      response3: 'Você Perdeu 20 Pontos!',
      alternatives1Imagem: 'images/sad.png',
      alternatives2Imagem: 'images/balloons.png',
      alternatives3Imagem: 'images/sad.png',
      isSelectNamber: false,
    ),
  ];
}
