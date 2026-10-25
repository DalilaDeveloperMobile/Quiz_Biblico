import 'package:quiz_biblico_5/models/variables_game_model.dart';

class LucasVersesGameMock {
  List<VariablesGameModel> lucasVerses = [
    VariablesGameModel(
      id: '1',
      question:
          '1 - Quem recebeu a visita do anjo Gabriel anunciando o nascimento de João Batista?',
      alternatives1: 'a) Isabel',
      alternatives2: 'b) Maria',
      alternatives3: 'c) Ana',
      response1:
          'Resposta correta: a) Isabel (Lucas 1:13-17)\n\n Você Ganhou 10 Pontos!',
      response2: 'Você Perdeu 20 Pontos!',
      response3: 'Você Perdeu 20 Pontos!',
      alternatives1Imagem: 'images/balloons.png',
      alternatives2Imagem: 'images/sad.png',
      alternatives3Imagem: 'images/sad.png',
      isSelectNamber: false,
    ),
  ];
}
