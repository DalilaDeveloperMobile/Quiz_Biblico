import 'package:quiz_biblico_5/models/variables_game_model.dart';

class ObadiahVersesGameMock {
  List<VariablesGameModel> obadiahVerses = [
    VariablesGameModel(
      id: '1',
      question: '1 - Qual é o principal alvo da profecia de Obadias?',
      alternatives1: 'a) Judá',
      alternatives2: 'b) Edom',
      alternatives3: 'c) Israel',
      response1: 'Você Perdeu 20 Pontos!',
      response2:
          'Resposta correta: b) Edom (Obadias 1:1)\n\n Você Ganhou 10 Pontos!',
      response3: 'Você Perdeu 10 Pontos!',
      alternatives1Imagem: 'images/sad.png',
      alternatives2Imagem: 'images/balloons.png',
      alternatives3Imagem: 'images/sad.png',
      isSelectNamber: false,
    ),
  ];
}
