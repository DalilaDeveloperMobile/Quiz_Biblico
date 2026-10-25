import 'package:quiz_biblico_5/models/variables_game_model.dart';

class Kings1VersesGameMock {
  List<VariablesGameModel> kings1Verses = [
    VariablesGameModel(
      id: '1',
      question: '1 - Quem foi o sucessor de Davi como rei de Israel?',
      alternatives1: 'a) Absalão',
      alternatives2: 'b) Salomão',
      alternatives3: 'c) Adonias',
      response1: 'Você Perdeu 10 Pontos!',
      response2:
          'Resposta correta: b) Salomão (📖 1 Reis 1:30)'
          ' \n\n Você Ganhou 10 Pontos!',
      response3: 'Você Perdeu 15 Pontos!',
      alternatives1Imagem: 'images/sad.png',
      alternatives2Imagem: 'images/balloons.png',
      alternatives3Imagem: 'images/sad.png',
      isSelectNamber: false,
    ),
  ];
}
