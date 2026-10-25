import 'package:quiz_biblico_5/models/variables_game_model.dart';

class JeremiahVersesGameMock {
  List<VariablesGameModel> jeremiahVerses = [
    VariablesGameModel(
      id: '1',
      question: '1 - Quem foi o pai do profeta Jeremias?',
      alternatives1: 'a) Hilquias',
      alternatives2: 'b) Baruque',
      alternatives3: 'c) Josias',
      response1:
          'Resposta: a) Hilquias Referência: Jeremias 1:1'
          ' \n\n Você Ganhou 10 Pontos!',
      response2: 'Você Perdeu 10 Pontos!',
      response3: 'Você Perdeu 20 Pontos!',
      alternatives1Imagem: 'images/balloons.png',
      alternatives2Imagem: 'images/sad.png',
      alternatives3Imagem: 'images/sad.png',
      isSelectNamber: false,
    ),
  ];
}
