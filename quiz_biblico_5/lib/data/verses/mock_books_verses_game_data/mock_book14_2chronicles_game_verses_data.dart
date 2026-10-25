import 'package:quiz_biblico_5/models/variables_game_model.dart';

class Chronicles2VersesGameMock {
  List<VariablesGameModel> chronicles2Verses = [
    VariablesGameModel(
      id: '1',
      question:
          '1 - Quem ordenou a construção do templo do Senhor em Jerusalém?',
      alternatives1: 'a) Saul',
      alternatives2: 'b) Davi',
      alternatives3: 'c) Salomão',
      response1: 'Você Perdeu 15 Pontos!',
      response2: 'Você Perdeu 10 Pontos!',
      response3:
          'Resposta correta: c) Salomão (2 Crônicas 2:1)'
          ' \n\n Você Ganhou 10 Pontos!',
      alternatives1Imagem: 'images/sad.png',
      alternatives2Imagem: 'images/sad.png',
      alternatives3Imagem: 'images/balloons.png',
      isSelectNamber: false,
    ),
  ];
}
