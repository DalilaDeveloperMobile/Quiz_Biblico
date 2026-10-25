import 'package:quiz_biblico_5/models/variables_game_model.dart';

class Kings2VersesGameMock {
  List<VariablesGameModel> kings2Verses = [
    VariablesGameModel(
      id: '1',
      question: '1 - Quem sucedeu Acazias como rei de Israel?',
      alternatives1: 'a) Jorão',
      alternatives2: 'b) Jeú',
      alternatives3: 'c) Ezequias',
      response1:
          'Resposta correta: a) Jorão (2 Reis 1:17)'
          ' \n\n Você Ganhou 10 Pontos!',
      response2: 'Você Perdeu 10 Pontos!',
      response3: 'Você Perdeu 15 Pontos!',
      alternatives1Imagem: 'images/balloons.png',
      alternatives2Imagem: 'images/sad.png',
      alternatives3Imagem: 'images/sad.png',
      isSelectNamber: false,
    ),
  ];
}
