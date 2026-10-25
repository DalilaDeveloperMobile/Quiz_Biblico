import 'package:quiz_biblico_5/models/variables_game_model.dart';

class DeuteronomyVersesGameMock {
  List<VariablesGameModel> deuteronomyVerses = [
    VariablesGameModel(
      id: '1',
      question: '1 - A que inseto, é comparado os amorreus'
          ' ao sairem eles em perseguição aos judeus?',
      alternatives1: 'a) Leões.',
      alternatives2: 'b) Abelhas.',
      alternatives3: 'c) Serpentes.',
      response1: 'Você Perdeu 10 Pontos!',
      response2: 'Resposta b) Abelhas. (Deuteronômio 1:44).'
          ' \n\n Você Ganhou 10 Pontos!',
      response3: 'Você Perdeu 15 Pontos!',
      alternatives1Imagem: 'images/sad.png',
      alternatives2Imagem: 'images/balloons.png',
      alternatives3Imagem: 'images/sad.png',
      isSelectNamber: false,
    ),
  ];
}
