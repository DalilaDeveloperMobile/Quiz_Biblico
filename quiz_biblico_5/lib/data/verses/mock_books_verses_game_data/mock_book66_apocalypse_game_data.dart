import 'package:quiz_biblico_5/models/variables_game_model.dart';

class ApocalypseVersesGameMock {
  List<VariablesGameModel> apocalypseVerses = [
    VariablesGameModel(
      id: '1',
      question: '1 - Quem apareceu a João na ilha de Patmos?',
      alternatives1: 'a) Um anjo',
      alternatives2: 'b) Jesus Cristo',
      alternatives3: 'c) Moisés',
      response1: 'Você Perdeu 20 Pontos!',
      response2:
          'Resposta correta: b) Jesus Cristo (Apocalipse 1:1-2)\n\nVocê Ganhou 10 Pontos!',
      response3: 'Você Perdeu 10 Pontos!',
      alternatives1Imagem: 'images/sad.png',
      alternatives2Imagem: 'images/balloons.png',
      alternatives3Imagem: 'images/sad.png',
      isSelectNamber: false,
    ),
  ];
}
