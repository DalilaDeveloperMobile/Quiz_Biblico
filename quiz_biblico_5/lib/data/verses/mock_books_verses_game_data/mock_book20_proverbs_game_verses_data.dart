import 'package:quiz_biblico_5/models/variables_game_model.dart';

class ProverbsVersesGameMock {
  List<VariablesGameModel> proverbsVerses = [
    VariablesGameModel(
      id: '1',
      question: '1 - Segundo Provérbios, o temor do Senhor é o quê?',
      alternatives1: 'a) O caminho da justiça',
      alternatives2: 'b) O princípio da sabedoria',
      alternatives3: 'c) A coroa da vida',
      response1: 'Você Perdeu 20 Pontos!',
      response2:
          'Resposta correta: b) O princípio da sabedoria (Provérbios 1:7)'
          ' \n\n Você Ganhou 10 Pontos!',
      response3: 'Você Perdeu 10 Pontos!',
      alternatives1Imagem: 'images/sad.png',
      alternatives2Imagem: 'images/balloons.png',
      alternatives3Imagem: 'images/sad.png',
      isSelectNamber: false,
    ),
  ];
}
