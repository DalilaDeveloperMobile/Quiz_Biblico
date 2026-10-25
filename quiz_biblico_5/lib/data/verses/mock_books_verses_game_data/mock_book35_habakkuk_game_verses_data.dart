import 'package:quiz_biblico_5/models/variables_game_model.dart';

class HabakkukVersesGameMock {
  List<VariablesGameModel> habakkukVerses = [
    VariablesGameModel(
      id: '1',
      question: '1 - Quem recebeu a visão de Habacuque?',
      alternatives1: 'a) Jeremias',
      alternatives2: 'b) Habacuque',
      alternatives3: 'c) Isaías',
      response1: 'Você Perdeu 20 Pontos!',
      response2:
          'Resposta correta: b) Habacuque (Habacuque 1:1)\n\n Você Ganhou 10 Pontos!',
      response3: 'Você Perdeu 10 Pontos!',
      alternatives1Imagem: 'images/sad.png',
      alternatives2Imagem: 'images/balloons.png',
      alternatives3Imagem: 'images/sad.png',
      isSelectNamber: false,
    ),
  ];
}
