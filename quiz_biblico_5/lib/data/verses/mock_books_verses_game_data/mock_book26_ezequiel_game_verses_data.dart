import 'package:quiz_biblico_5/models/variables_game_model.dart';

class EzequielVersesGameMock {
  List<VariablesGameModel> ezequielVerses = [
    VariablesGameModel(
      id: '1',
      question: '1 - Quem foi Ezequiel?',
      alternatives1: 'a) Sacerdote e profeta',
      alternatives2: 'b) Rei de Judá',
      alternatives3: 'c) Príncipe de Israel',
      response1:
          'Resposta correta: a) Sacerdote e profeta (Ezequiel 1:3)'
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
