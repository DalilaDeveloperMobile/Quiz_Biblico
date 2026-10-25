import 'package:quiz_biblico_5/models/variables_game_model.dart';

class EsterVersesGameMock {
  List<VariablesGameModel> esterVerses = [
    VariablesGameModel(
      id: '1',
      question: '1 - Quem era a rainha antes de Ester?',
      alternatives1: 'a) Vasti',
      alternatives2: 'b) Débora',
      alternatives3: 'c) Atalia',
      response1:
          'Resposta correta: a) Vasti (Ester 1:9-12)'
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
