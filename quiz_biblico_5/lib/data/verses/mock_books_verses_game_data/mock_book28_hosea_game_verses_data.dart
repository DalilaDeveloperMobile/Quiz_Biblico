import 'package:quiz_biblico_5/models/variables_game_model.dart';

class HoseaVersesGameMock {
  List<VariablesGameModel> hoseaVerses = [
    VariablesGameModel(
      id: '1',
      question: '1 - Quem foi o profeta que Deus enviou para Israel?',
      alternatives1: 'a) Jeremias',
      alternatives2: 'b) Oséias',
      alternatives3: 'c) Isaías',
      response1: 'Você Perdeu 20 Pontos!',
      response2:
          'Resposta correta: b) Oséias (Oséias 1:1)\n\n Você Ganhou 10 Pontos!',
      response3: 'Você Perdeu 10 Pontos!',
      alternatives1Imagem: 'images/sad.png',
      alternatives2Imagem: 'images/balloons.png',
      alternatives3Imagem: 'images/sad.png',
      isSelectNamber: false,
    ),
  ];
}
