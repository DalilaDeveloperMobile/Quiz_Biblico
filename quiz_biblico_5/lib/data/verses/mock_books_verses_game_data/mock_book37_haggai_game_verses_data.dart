import 'package:quiz_biblico_5/models/variables_game_model.dart';

class HaggaiVersesGameMock {
  List<VariablesGameModel> haggaiVerses = [
    VariablesGameModel(
      id: '1',
      question:
          '1 - Quem foi o profeta que incentivou o povo a reconstruir o templo?',
      alternatives1: 'a) Zacarias',
      alternatives2: 'b) Ageu',
      alternatives3: 'c) Esdras',
      response1: 'Você Perdeu 20 Pontos!',
      response2:
          'Resposta correta: b) Ageu (Ageu 1:1)\n\n Você Ganhou 10 Pontos!',
      response3: 'Você Perdeu 10 Pontos!',
      alternatives1Imagem: 'images/sad.png',
      alternatives2Imagem: 'images/balloons.png',
      alternatives3Imagem: 'images/sad.png',
      isSelectNamber: false,
    ),
  ];
}
