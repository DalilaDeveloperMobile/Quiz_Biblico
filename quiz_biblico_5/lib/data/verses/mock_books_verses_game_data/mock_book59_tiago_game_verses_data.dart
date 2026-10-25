import 'package:quiz_biblico_5/models/variables_game_model.dart';

class TiagoVersesGameMock {
  List<VariablesGameModel> tiagoVerses = [
    VariablesGameModel(
      id: '1',
      question:
          '1 - O que Tiago recomenda fazer quando passamos por provações?',
      alternatives1: 'a) Contar como alegria',
      alternatives2: 'b) Reclamar e fugir',
      alternatives3: 'c) Ignorar a situação',
      response1:
          'Resposta correta: a) Contar como alegria (Tiago 1:2)\n\n Você Ganhou 10 Pontos!',
      response2: 'Você Perdeu 20 Pontos!',
      response3: 'Você Perdeu 10 Pontos!',
      alternatives1Imagem: 'images/balloons.png',
      alternatives2Imagem: 'images/sad.png',
      alternatives3Imagem: 'images/sad.png',
      isSelectNamber: false,
    ),
  ];
}
