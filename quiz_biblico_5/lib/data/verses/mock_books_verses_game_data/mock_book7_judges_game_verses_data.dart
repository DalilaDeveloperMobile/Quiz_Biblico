import 'package:quiz_biblico_5/models/variables_game_model.dart';

class JudgesVersesGameMock {
  List<VariablesGameModel> judgesVerses = [
    VariablesGameModel(
      id: '1',
      question: '1 - Quem foi o primeiro líder mencionado no livro de Juízes?',
      alternatives1: 'a) Josué',
      alternatives2: 'b) Calebe',
      alternatives3: 'c) Otniel',
      response1: 'Você Perdeu 15 Pontos!',
      response2: 'Você Perdeu 10 Pontos!',
      response3: 'Resposta correta: c) Otniel (Juízes 3:9).'
          ' \n\n Você Ganhou 10 Pontos!',
      alternatives1Imagem: 'images/sad.png',
      alternatives2Imagem: 'images/sad.png',
      alternatives3Imagem: 'images/balloons.png',
      isSelectNamber: false,
    ),
  ];
}
