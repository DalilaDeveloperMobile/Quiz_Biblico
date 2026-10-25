import 'package:quiz_biblico_5/models/variables_game_model.dart';

class ZephaniesVersesGameMock {
  List<VariablesGameModel> zephaniesVerses = [
    VariablesGameModel(
      id: '1',
      question: '1 - Qual é o tema central do livro de Sofonias?',
      alternatives1: 'a) Julgamento e restauração de Judá',
      alternatives2: 'b) Conquista de territórios',
      alternatives3: 'c) Prosperidade econômica',
      response1:
          'Resposta correta: a) Julgamento e restauração de Judá (Sofonias 1:14-15)\n\n Você Ganhou 10 Pontos!',
      response2: 'Você Perdeu 20 Pontos!',
      response3: 'Você Perdeu 10 Pontos!',
      alternatives1Imagem: 'images/balloons.png',
      alternatives2Imagem: 'images/sad.png',
      alternatives3Imagem: 'images/sad.png',
      isSelectNamber: false,
    ),
  ];
}
