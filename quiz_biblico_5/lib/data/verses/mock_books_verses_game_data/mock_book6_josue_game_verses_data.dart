import 'package:quiz_biblico_5/models/variables_game_model.dart';

class JosueVersesGameMock {
  List<VariablesGameModel> josueVerses = [
    VariablesGameModel(
      id: '1',
      question: '1 - A quem Deus falou após a morte de Moisés?',
      alternatives1: 'a) Elias',
      alternatives2: 'b) Josué',
      alternatives3: 'c) Samuel',
      response1: 'Você Perdeu 15 Pontos!',
      response2: 'Resposta correta: b) Josué (Josué 1:1).'
          ' \n\n Você Ganhou 10 Pontos!',
      response3: 'Você Perdeu 10 Pontos!',
      alternatives1Imagem: 'images/sad.png',
      alternatives2Imagem: 'images/balloons.png',
      alternatives3Imagem: 'images/sad.png',
      isSelectNamber: false,
    ),
  ];
}
