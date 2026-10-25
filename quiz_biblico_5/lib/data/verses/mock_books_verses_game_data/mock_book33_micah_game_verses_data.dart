import 'package:quiz_biblico_5/models/variables_game_model.dart';

class MicahVersesGameMock {
  List<VariablesGameModel> micahVerses = [
    VariablesGameModel(
      id: '1',
      question: '1 - Quem é o autor do livro de Miquéias?',
      alternatives1: 'a) Isaías',
      alternatives2: 'b) Miquéias',
      alternatives3: 'c) Jeremias',
      response1: 'Você Perdeu 20 Pontos!',
      response2:
          'Resposta correta: b) Miquéias (Miquéias 1:1)\n\n Você Ganhou 10 Pontos!',
      response3: 'Você Perdeu 10 Pontos!',
      alternatives1Imagem: 'images/sad.png',
      alternatives2Imagem: 'images/balloons.png',
      alternatives3Imagem: 'images/sad.png',
      isSelectNamber: false,
    ),
  ];
}
