import 'package:quiz_biblico_5/models/variables_game_model.dart';

class NehemiahVersesGameMock {
  List<VariablesGameModel> nehemiahVerses = [
    VariablesGameModel(
      id: '1',
      question: '1 - Quem era Neemias antes de retornar a Jerusalém?',
      alternatives1: 'a) Sacerdote',
      alternatives2: 'b) Copeiro do rei',
      alternatives3: 'c) Escriba',
      response1: 'Você Perdeu 10 Pontos!',
      response2:
          'Resposta correta: b) Copeiro do rei (Neemias 1:11).'
          ' \n\n Você Ganhou 10 Pontos!',
      response3: 'Você Perdeu 15 Pontos!',
      alternatives1Imagem: 'images/sad.png',
      alternatives2Imagem: 'images/balloons.png',
      alternatives3Imagem: 'images/sad.png',
      isSelectNamber: false,
    ),
  ];
}
