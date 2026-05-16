import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:quiz_biblico_5/models/variables_game_model.dart';
import 'package:quiz_biblico_5/shared/app_bar_default/app_bar_default.dart';
import 'package:quiz_biblico_5/utils/app_routes.dart';

import 'widgets/button_level_widget.dart';

class LevelGame extends StatelessWidget {
  final VariablesGameModel? easy;
  final VariablesGameModel? medium;
  final VariablesGameModel? difficult;

  const LevelGame({super.key, this.easy, this.medium, this.difficult});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(55.0),
              child: AppBarDefault(text: 'chooseALevel'.tr()),
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
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      ButtonLevelWidget(
                        text: 'easyLevel'.tr(),
                        onTap: () {
                          Navigator.of(
                            context,
                          ).pushNamed(AppRoutes.levelEasy, arguments: easy);
                        },
                      ),
                      ButtonLevelWidget(
                        text: 'intermediateLevel'.tr(),
                        onTap: () {
                          Navigator.of(
                            context,
                          ).pushNamed(AppRoutes.levelMedium, arguments: medium);
                        },
                      ),
                      ButtonLevelWidget(
                        text: 'hardLevel'.tr(),
                        onTap: () {
                          Navigator.of(context).pushNamed(
                            AppRoutes.levelDifficult,
                            arguments: difficult,
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
