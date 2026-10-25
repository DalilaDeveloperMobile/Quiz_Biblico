import 'package:quiz_biblico_5/models/variables_game_model.dart';

class ActsVersesGameMock {
  List<VariablesGameModel> actsVerses = [
    VariablesGameModel(
      id: '1',
      question: '1 - Quem escreveu o livro de Atos dos Apóstolos?',
      alternatives1: 'a) Paulo',
      alternatives2: 'b) Lucas',
      alternatives3: 'c) Pedro',
      response1: 'Você Perdeu 20 Pontos!',
      response2:
          'Resposta correta: b) Lucas (Atos 1:1)\n\n Você Ganhou 10 Pontos!',
      response3: 'Você Perdeu 10 Pontos!',
      alternatives1Imagem: 'images/sad.png',
      alternatives2Imagem: 'images/balloons.png',
      alternatives3Imagem: 'images/sad.png',
      isSelectNamber: false,
    ),
  ];
}
