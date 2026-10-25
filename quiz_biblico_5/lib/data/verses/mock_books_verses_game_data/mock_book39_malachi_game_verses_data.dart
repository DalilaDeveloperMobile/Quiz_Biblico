import 'package:quiz_biblico_5/models/variables_game_model.dart';

class MalachiVersesGameMock {
  List<VariablesGameModel> malachiVerses = [
    VariablesGameModel(
      id: '1',
      question: '1 - Qual é o último livro do Antigo Testamento?',
      alternatives1: 'a) Ageu',
      alternatives2: 'b) Malaquias',
      alternatives3: 'c) Zacarias',
      response1: 'Você Perdeu 20 Pontos!',
      response2:
          'Resposta correta: b) Malaquias (Malaquias 1:1)\n\n Você Ganhou 10 Pontos!',
      response3: 'Você Perdeu 10 Pontos!',
      alternatives1Imagem: 'images/sad.png',
      alternatives2Imagem: 'images/balloons.png',
      alternatives3Imagem: 'images/sad.png',
      isSelectNamber: false,
    ),
  ];
}
