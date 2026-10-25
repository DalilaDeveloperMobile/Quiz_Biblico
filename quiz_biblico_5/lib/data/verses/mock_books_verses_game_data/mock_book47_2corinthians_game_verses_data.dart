import 'package:quiz_biblico_5/models/variables_game_model.dart';

class Corinthians2VersesGameMock {
  List<VariablesGameModel> corinthians2Verses = [
    VariablesGameModel(
      id: '1',
      question: '1 - Quem escreveu a carta aos Coríntios?',
      alternatives1: 'a) Pedro',
      alternatives2: 'b) Paulo',
      alternatives3: 'c) João',
      response1: 'Você Perdeu 20 Pontos!',
      response2:
          'Resposta correta: b) Paulo (2 Coríntios 1:1)\n\n Você Ganhou 10 Pontos!',
      response3: 'Você Perdeu 20 Pontos!',
      alternatives1Imagem: 'images/sad.png',
      alternatives2Imagem: 'images/balloons.png',
      alternatives3Imagem: 'images/sad.png',
      isSelectNamber: false,
    ),
  ];
}
