import 'package:quiz_biblico_5/models/variables_game_model.dart';

class John2VersesGameMock {
  List<VariablesGameModel> john2Verses = [
    VariablesGameModel(
      id: '1',
      question: '1 - A quem João está escrevendo nesta carta?',
      alternatives1: 'a) À igreja eleita',
      alternatives2: 'b) Às irmãs e irmãos queridos',
      alternatives3: 'c) Aos gentios',
      response1: 'Você Perdeu 20 Pontos!',
      response2:
          'Resposta correta: b) Às irmãs e irmãos queridos (2 João 1:1)\n\nVocê Ganhou 10 Pontos!',
      response3: 'Você Perdeu 10 Pontos!',
      alternatives1Imagem: 'images/sad.png',
      alternatives2Imagem: 'images/balloons.png',
      alternatives3Imagem: 'images/sad.png',
      isSelectNamber: false,
    ),
  ];
}
