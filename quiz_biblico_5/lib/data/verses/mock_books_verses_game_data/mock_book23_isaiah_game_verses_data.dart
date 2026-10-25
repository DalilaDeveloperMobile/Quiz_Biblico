import 'package:quiz_biblico_5/models/variables_game_model.dart';

class IsaiahVersesGameMock {
  List<VariablesGameModel> isaiahVerses = [
    VariablesGameModel(
      id: '1',
      question:
          '1 - Quem teve a visão do Senhor assentado'
          ' sobre um alto e sublime trono?',
      alternatives1: 'a) Jeremias',
      alternatives2: 'b) Isaías',
      alternatives3: 'c) Ezequiel',
      response1: 'Você Perdeu 10 Pontos!',
      response2:
          'Resposta correta: b) Isaías (Isaías 6:1)'
          ' \n\n Você Ganhou 10 Pontos!',
      response3: 'Você Perdeu 20 Pontos!',
      alternatives1Imagem: 'images/sad.png',
      alternatives2Imagem: 'images/balloons.png',
      alternatives3Imagem: 'images/sad.png',
      isSelectNamber: false,
    ),
  ];
}
