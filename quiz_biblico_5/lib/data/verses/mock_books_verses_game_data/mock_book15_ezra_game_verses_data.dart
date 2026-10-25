import 'package:quiz_biblico_5/models/variables_game_model.dart';

class EzraVersesGameMock {
  List<VariablesGameModel> ezraVerses = [
    VariablesGameModel(
      id: '1',
      question:
          '1 - Quem foi o rei da Pérsia que permitiu'
          ' o retorno dos judeus a Jerusalém?',
      alternatives1: 'a) Nabucodonosor',
      alternatives2: 'b) Ciro',
      alternatives3: 'c) Artaxerxes',
      response1: 'Você Perdeu 10 Pontos!',
      response2:
          'Resposta correta: b) Ciro (Esdras 1:1)'
          ' \n\n Você Ganhou 10 Pontos!',
      response3: 'Você Perdeu 15 Pontos!',
      alternatives1Imagem: 'images/sad.png',
      alternatives2Imagem: 'images/balloons.png',
      alternatives3Imagem: 'images/sad.png',
      isSelectNamber: false,
    ),
  ];
}
