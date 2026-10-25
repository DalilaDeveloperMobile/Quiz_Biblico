import 'package:quiz_biblico_5/models/variables_game_model.dart';

class ZechariahVersesGameMock {
  List<VariablesGameModel> zechariahVerses = [
    VariablesGameModel(
      id: '1',
      question:
          '1 - Quem foi o profeta contemporâneo de Zacarias que também animava o povo a reconstruir o templo?',
      alternatives1: 'a) Ageu',
      alternatives2: 'b) Jeremias',
      alternatives3: 'c) Isaías',
      response1:
          'Resposta correta: a) Ageu (Zacarias 1:1)\n\n Você Ganhou 10 Pontos!',
      response2: 'Você Perdeu 20 Pontos!',
      response3: 'Você Perdeu 10 Pontos!',
      alternatives1Imagem: 'images/balloons.png',
      alternatives2Imagem: 'images/sad.png',
      alternatives3Imagem: 'images/sad.png',
      isSelectNamber: false,
    ),
  ];
}
