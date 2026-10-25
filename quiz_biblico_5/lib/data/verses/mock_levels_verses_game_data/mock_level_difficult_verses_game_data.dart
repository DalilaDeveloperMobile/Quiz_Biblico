import 'package:easy_localization/easy_localization.dart';
import 'package:quiz_biblico_5/models/variables_game_model.dart';

class DifficultVersesGameMock {
  List<VariablesGameModel> difficultVerses = [
    VariablesGameModel(
      id: '1',
      question: 'question1difficult'.tr(),
      alternatives1: 'alternatives1difficult_1'.tr(),
      alternatives2: 'alternatives1difficult_2'.tr(),
      alternatives3: 'alternatives1difficult_3'.tr(),
      response1: 'response1difficult_1'.tr(),
      response2: 'response1difficult_2'.tr(),
      response3: 'response1difficult_3'.tr(),
      alternatives1Imagem: 'images/sad.png',
      alternatives2Imagem: 'images/balloons.png',
      alternatives3Imagem: 'images/sad.png',
      isSelectNamber: false,
    ),
  ];
}