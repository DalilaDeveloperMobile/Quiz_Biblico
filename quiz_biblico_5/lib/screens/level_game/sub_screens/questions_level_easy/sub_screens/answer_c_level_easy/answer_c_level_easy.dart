import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_biblico_5/models/variables_game_model.dart';
import 'package:quiz_biblico_5/provider/theme_changer.dart';


import 'package:quiz_biblico_5/shared/app_bar_default/app_bar_default.dart';

import 'package:quiz_biblico_5/widgets/button_right_answer_widget.dart';

class AnswerCLevelEasy extends StatelessWidget {
  const AnswerCLevelEasy({super.key});

  @override
  Widget build(BuildContext context) {
    final easy = ModalRoute.of(context)!.settings.arguments as VariablesGameModel;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(55.0),
        child: AppBarDefault(
          text: '${'question'.tr()} ${easy.id}',
          fontFamily: 'Times New Roman',
        ),
      ),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (ctx, constraints) {
            return Container(
              width: constraints.maxWidth,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Theme.of(context).secondaryHeaderColor,
                    Theme.of(context).primaryColor,
                    Theme.of(context).secondaryHeaderColor,
                  ],
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        height: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              easy.alternatives3Imagem! ==
                                          'images/sad.png' &&
                                      Provider.of<ThemeChanger>(context).themeType ==
                                          AppTheme.dark
                                  ? 'images/sad2.png'
                                  : easy.alternatives3Imagem! ==
                                              'images/balloons.png' &&
                                          Provider.of<ThemeChanger>(context).themeType ==
                                              AppTheme.dark
                                      ? 'images/happy.png'
                                      : easy.alternatives3Imagem!,
                            ),
                          ),
                        ), //isLandscape ? constraints.maxHeight * 0.4 : constraints.maxHeight * 0.3,
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                          left: 10,
                          right: 10,
                        ),
                        child: Center(
                          child: AutoSizeText(
                            easy.response3!,
                            style: const TextStyle(
                              color: Colors.white,
                              fontFamily: 'FredokaOne',
                              fontSize: 25,
                              // fontSize: isLandscape
                              //     ? constraints.maxHeight * 0.06
                              //     : constraints.maxHeight *
                              //         0.04, //isLandscape ? 17 : 16,
                              shadows: [
                                Shadow(
                                  blurRadius: 7.0,
                                  color: Colors.black,
                                  offset: Offset(1.0, 1.0),
                                ),
                              ],
                            ),
                            maxLines: 7,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                   if (easy.alternatives3Imagem !=
                      'images/balloons.png') ...[
                    const SizedBox(
                      height: 10.0,
                    ),
                    ButtonRightAnswerWidget(
                      questionsModel: easy,
                    ),
                  ],
                  const SizedBox(
                    height: 10.0,
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
