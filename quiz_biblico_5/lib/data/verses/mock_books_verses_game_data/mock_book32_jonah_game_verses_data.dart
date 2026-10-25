import 'package:quiz_biblico_5/models/variables_game_model.dart';

class JonahVersesGameMock {
  List<VariablesGameModel> jonahVerses = [
    VariablesGameModel(
      id: '1',
      question: '1 - Para onde Deus mandou Jonas ir pregar?',
      alternatives1: 'a) Jerusalém',
      alternatives2: 'b) Nínive',
      alternatives3: 'c) Babilônia',
      response1: 'Você Perdeu 20 Pontos!',
      response2:
          'Resposta correta: b) Nínive (Jonas 1:2)\n\n Você Ganhou 10 Pontos!',
      response3: 'Você Perdeu 10 Pontos!',
      alternatives1Imagem: 'images/sad.png',
      alternatives2Imagem: 'images/balloons.png',
      alternatives3Imagem: 'images/sad.png',
      isSelectNamber: false,
    ),
  ];
}
