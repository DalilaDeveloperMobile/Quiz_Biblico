import 'package:quiz_biblico_5/models/variables_game_model.dart';

class PsalmsVersesGameMock {
  List<VariablesGameModel> psalmsVerses = [
    VariablesGameModel(
      id: '1',
      question: '1 - Quem escreveu a maioria dos Salmos?',
      alternatives1: 'a) Moisés',
      alternatives2: 'b) Davi',
      alternatives3: 'c) Salomão',
      response1:
          'Você Perdeu 20 Pontos!',
      response2: 'Resposta correta: b) Davi (Salmos 72:20)'
          ' \n\n Você Ganhou 10 Pontos!',
      response3: 'Você Perdeu 5 Pontos!',
      alternatives1Imagem: 'images/sad.png',
      alternatives2Imagem: 'images/balloons.png',
      alternatives3Imagem: 'images/sad.png',
      isSelectNamber: false,
    ),
  ];
}
