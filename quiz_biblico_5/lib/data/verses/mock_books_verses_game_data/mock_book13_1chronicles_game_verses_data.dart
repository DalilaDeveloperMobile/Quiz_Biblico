import 'package:quiz_biblico_5/models/variables_game_model.dart';

class Chronicles1VersesGameMock {
  List<VariablesGameModel> chronicles1Verses = [
    VariablesGameModel(
      id: '1',
      question: '1 - Quem foi o pai de Adão?',
      alternatives1: 'a) Nenhum',
      alternatives2: 'b) Noé',
      alternatives3: 'c) Abraão',
      response1:
          'Resposta correta: a) Nenhum (1 Crônicas 1:1)'
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
