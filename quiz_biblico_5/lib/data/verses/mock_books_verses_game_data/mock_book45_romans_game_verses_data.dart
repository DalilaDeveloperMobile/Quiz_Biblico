import 'package:quiz_biblico_5/models/variables_game_model.dart';

class RomansVersesGameMock {
  List<VariablesGameModel> romansVerses = [
    VariablesGameModel(
      id: '1',
      question: '1 - Quem escreveu a carta aos Romanos?',
      alternatives1: 'a) Paulo',
      alternatives2: 'b) Pedro',
      alternatives3: 'c) João',
      response1:
          'Resposta correta: a) Paulo (Romanos 1:1)\n\n Você Ganhou 10 Pontos!',
      response2: 'Você Perdeu 20 Pontos!',
      response3: 'Você Perdeu 20 Pontos!',
      alternatives1Imagem: 'images/balloons.png',
      alternatives2Imagem: 'images/sad.png',
      alternatives3Imagem: 'images/sad.png',
      isSelectNamber: false,
    ),
  ];
}
