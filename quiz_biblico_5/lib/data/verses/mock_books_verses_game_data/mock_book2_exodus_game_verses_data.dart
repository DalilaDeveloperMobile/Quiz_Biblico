import 'package:easy_localization/easy_localization.dart';
import 'package:quiz_biblico_5/models/variables_game_model.dart';

class ExodusVersesGameMock {
  List<VariablesGameModel> exodusVerses = [
    VariablesGameModel(
      id: '1',
      question: 'question1exodus'.tr(),
      alternatives1: 'alternatives1exodus_1'.tr(),
      alternatives2: 'alternatives1exodus_2'.tr(),
      alternatives3: 'alternatives1exodus_3'.tr(),
      response1: 'response1exodus_1'.tr(),
      response2: 'response1exodus_2'.tr(),
      response3: 'response1exodus_3'.tr(),
      alternatives1Imagem: 'images/balloons.png',
      alternatives2Imagem: 'images/sad.png',
      alternatives3Imagem: 'images/sad.png',
      isSelectNamber: false,
    ),
  ];
}
