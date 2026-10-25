import 'package:quiz_biblico_5/models/variables_game_model.dart';

class HebrewsVersesGameMock {
  List<VariablesGameModel> hebrewsVerses = [
    VariablesGameModel(
      id: '1',
      question: '1 - Quem é superior aos anjos segundo Hebreus?',
      alternatives1: 'a) Cristo',
      alternatives2: 'b) Moisés',
      alternatives3: 'c) Abraão',
      response1:
          'Resposta correta: a) Cristo (Hebreus 1:4)\n\n Você Ganhou 10 Pontos!',
      response2: 'Você Perdeu 20 Pontos!',
      response3: 'Você Perdeu 10 Pontos!',
      alternatives1Imagem: 'images/balloons.png',
      alternatives2Imagem: 'images/sad.png',
      alternatives3Imagem: 'images/sad.png',
      isSelectNamber: false,
    ),
  ];
}
