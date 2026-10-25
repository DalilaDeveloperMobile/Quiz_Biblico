import 'package:quiz_biblico_5/models/variables_game_model.dart';
import 'package:easy_localization/easy_localization.dart';

class LeviticusVersesGameMock {
  List<VariablesGameModel> leviticusVerses = [
    VariablesGameModel(
      id: '1',
      question: 'question1leviticus'.tr(),
      alternatives1: 'alternatives1leviticus_1'.tr(),
      alternatives2: 'alternatives1leviticus_2'.tr(),
      alternatives3: 'alternatives1leviticus_3'.tr(),
      response1: 'response1leviticus_1'.tr(),
      response2: 'response1leviticus_2'.tr(),
      response3: 'response1leviticus_3'.tr(),
      alternatives1Imagem: 'images/sad.png',
      alternatives2Imagem: 'images/balloons.png',
      alternatives3Imagem: 'images/sad.png',
      isSelectNamber: false,
    ),
  ];
}
