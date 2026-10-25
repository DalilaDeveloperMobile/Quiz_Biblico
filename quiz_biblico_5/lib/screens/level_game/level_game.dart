import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:quiz_biblico_5/models/variables_game_model.dart';
import 'package:quiz_biblico_5/screens/level_game/sub_screens/questions_level_difficult/sub_screens/choose_number_level_difficult.dart';
import 'package:quiz_biblico_5/screens/level_game/sub_screens/questions_level_easy/sub_screens/choose_number_level_easy.dart';
import 'package:quiz_biblico_5/screens/level_game/sub_screens/questions_level_medium/sub_screens/choose_number_level_medium.dart';
import 'package:quiz_biblico_5/shared/app_bar_default/app_bar_default.dart';

import 'widgets/button_level_widget.dart';

class LevelGame extends StatelessWidget {
  final List<VariablesGameModel>? easy;
  final List<VariablesGameModel>? medium;
  final List<VariablesGameModel>? difficult;
  final String appBarText;
  final String numbersEasy;
  final String numbersMedium;
  final String numbersDifficult;

  const LevelGame({
    super.key,
    required this.easy,
    this.medium,
    this.difficult,
    required this.appBarText,
    required this.numbersEasy,
    required this.numbersMedium,
    required this.numbersDifficult,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(55.0),
          child: AppBarDefault(text: appBarText),
        ),
        body: LayoutBuilder(
          builder: (ctx, constraints) {
            return Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                  colors: [
                    Theme.of(context).secondaryHeaderColor,
                    Theme.of(context).primaryColor,
                    Theme.of(context).secondaryHeaderColor,
                  ],
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ButtonLevelWidget(
                    text: 'easyLevel'.tr(),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => ChooseNumberLevelEasy(
                            easy: easy!,
                            numbers: numbersEasy,
                          ),
                        ),
                      );
                    },
                  ),
                  ButtonLevelWidget(
                    text: 'intermediateLevel'.tr(),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => ChooseNumberLevelMedium(
                            medium: medium,
                            numbersMedium: numbersMedium,
                          ),
                        ),
                      );
                    },
                  ),
                  ButtonLevelWidget(
                    text: 'hardLevel'.tr(),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => ChooseNumberLevelDifficult(
                            difficult: difficult!,
                            numbersDifficult: numbersDifficult,
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
