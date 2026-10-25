import 'package:quiz_biblico_5/models/variables_game_model.dart';

class JohnVersesGameMock {
  List<VariablesGameModel> johnVerses = [
    VariablesGameModel(
      id: '1',
      question: '1 - Quem é descrito como o Verbo que se fez carne?',
      alternatives1: 'a) João Batista',
      alternatives2: 'b) Jesus Cristo',
      alternatives3: 'c) Pedro',
      response1: 'Você Perdeu 20 Pontos!',
      response2:
          'Resposta correta: b) Jesus Cristo (João 1:14)\n\n Você Ganhou 10 Pontos!',
      response3: 'Você Perdeu 10 Pontos!',
      alternatives1Imagem: 'images/sad.png',
      alternatives2Imagem: 'images/balloons.png',
      alternatives3Imagem: 'images/sad.png',
      isSelectNamber: false,
    ),
  ];
}
