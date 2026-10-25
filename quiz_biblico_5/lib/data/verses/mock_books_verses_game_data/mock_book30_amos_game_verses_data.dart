import 'package:quiz_biblico_5/models/variables_game_model.dart';

class AmosVersesGameMock {
  List<VariablesGameModel> amosVerses = [
    VariablesGameModel(
      id: '1',
      question: '1 - Amós era originalmente de qual cidade?',
      alternatives1: 'a) Betel',
      alternatives2: 'b) Tecoa',
      alternatives3: 'c) Jerusalém',
      response1: 'Você Perdeu 20 Pontos!',
      response2:
          'Resposta correta: b) Tecoa (Amós 1:1)\n\n Você Ganhou 10 Pontos!',
      response3: 'Você Perdeu 10 Pontos!',
      alternatives1Imagem: 'images/sad.png',
      alternatives2Imagem: 'images/balloons.png',
      alternatives3Imagem: 'images/sad.png',
      isSelectNamber: false,
    ),
  ];
}
