import 'package:quiz_biblico_5/models/variables_game_model.dart';

class SongsVersesGameMock {
  List<VariablesGameModel> songsVerses = [
    VariablesGameModel(
      id: '1',
      question: '1 - Quem escreveu o Cântico dos Cânticos?',
      alternatives1: 'a) Moisés',
      alternatives2: 'b) Salomão',
      alternatives3: 'c) Davi',
      response1: 'Você Perdeu 20 Pontos!',
      response2:
          'Resposta correta: b) Salomão (Cânticos 1:1)'
          ' \n\n Você Ganhou 10 Pontos!',
      response3: 'Você Perdeu 10 Pontos!',
      alternatives1Imagem: 'images/sad.png',
      alternatives2Imagem: 'images/balloons.png',
      alternatives3Imagem: 'images/sad.png',
      isSelectNamber: false,
    ),
  ];
}
