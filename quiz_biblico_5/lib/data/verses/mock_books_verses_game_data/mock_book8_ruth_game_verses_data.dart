import 'package:quiz_biblico_5/models/variables_game_model.dart';

class RuthVersesGameMock {
  List<VariablesGameModel> ruthVerses = [
    VariablesGameModel(
      id: '1',
      question: '1 - Qual era o nome do marido de Noemi?',
      alternatives1: 'a) Elimeleque',
      alternatives2: 'b) Boaz',
      alternatives3: 'c) Malom',
      response1: 'Resposta correta: a) Elimeleque (Rute 1:2)'
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
