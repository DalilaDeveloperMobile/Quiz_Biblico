import 'package:easy_localization/easy_localization.dart';
import 'package:quiz_biblico_5/models/variables_game_model.dart';

class GenesisVersesGameMock {
  List<VariablesGameModel> genesisVerses = [
     VariablesGameModel(
      id: '1',
      question: 'question1'.tr(),
      alternatives1: 'alternatives1_1'.tr(),
      alternatives2: 'alternatives1_2'.tr(),
      alternatives3: 'alternatives1_3'.tr(),
      response1: 'response1_1'.tr(),
      response2: 'response1_2'.tr(),
      response3: 'response1_3'.tr(),
      alternatives1Imagem: 'images/sad.png',
      alternatives2Imagem: 'images/balloons.png',
      alternatives3Imagem: 'images/sad.png',
      isSelectNamber: false,
    )
  ];
}
