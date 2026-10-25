import 'package:quiz_biblico_5/models/variables_game_model.dart';

class LamentationsVersesGameMock {
  List<VariablesGameModel> lamentationsVerses = [
    VariablesGameModel(
      id: '1',
      question:
          '1 - Quem é tradicionalmente considerado o autor de Lamentações?',
      alternatives1: 'a) Jeremias',
      alternatives2: 'b) Isaías',
      alternatives3: 'c) Ezequiel',
      response1:
          'Resposta correta: a) Jeremias (2 Crônicas 35:25)'
          ' \n\n Você Ganhou 10 Pontos!',
      response2: 'Você Perdeu 20 Pontos!',
      response3: 'Você Perdeu 10 Pontos!',
      alternatives1Imagem: 'images/balloons.png',
      alternatives2Imagem: 'images/sad.png',
      alternatives3Imagem: 'images/sad.png',
      isSelectNamber: false,
    ),
  ];
}
