import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_biblico_5/models/variables_game_model.dart';

import 'package:quiz_biblico_5/provider/theme_changer.dart';
import 'package:quiz_biblico_5/shared/app_bar_default/app_bar_default.dart';


class RightAnswerWidget extends StatefulWidget {
  final VariablesGameModel questionsModel;

  const RightAnswerWidget({
    super.key,
    required this.questionsModel,
  });

  @override
  State<RightAnswerWidget> createState() => _RightAnswerWidgetState();
}

class _RightAnswerWidgetState extends State<RightAnswerWidget> {
  String hasImageRight() {
    final alternatives1Imagem = widget.questionsModel.alternatives1Imagem;
    final alternatives2Imagem = widget.questionsModel.alternatives2Imagem;
    final alternatives3Imagem = widget.questionsModel.alternatives3Imagem;

    if (alternatives1Imagem == 'images/balloons.png') {
      return alternatives1Imagem!;
    } else if (alternatives2Imagem == 'images/balloons.png') {
      return alternatives2Imagem!;
    } else if (alternatives3Imagem == 'images/balloons.png') {
      return alternatives3Imagem!;
    } else {
      return '';
    }
  }

  String hasTextRight() {
    final alternatives1Imagem = widget.questionsModel.alternatives1Imagem;
    final alternatives2Imagem = widget.questionsModel.alternatives2Imagem;
    final alternatives3Imagem = widget.questionsModel.alternatives3Imagem;

    final response1 = widget.questionsModel.response1;
    final response2 = widget.questionsModel.response2;
    final response3 = widget.questionsModel.response3;

    substringResponseLast(String? response) {
      return response!.length - 22;
    }

    if (alternatives1Imagem == 'images/balloons.png') {
      return widget.questionsModel.response1!
          .substring(0, substringResponseLast(response1));
    } else if (alternatives2Imagem == 'images/balloons.png') {
      return widget.questionsModel.response2!
          .substring(0, substringResponseLast(response2));
    } else if (alternatives3Imagem == 'images/balloons.png') {
      return widget.questionsModel.response3!
          .substring(0, substringResponseLast(response3));
    } else {
      return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55.0),
        child: AppBarDefault(
          text: 'correctAnswer'.tr(),
          fontFamily: 'Times New Roman',
        ),
      ),
      body: SafeArea(
        child: LayoutBuilder(builder: (ctx, constraints) {
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
                  Container(
                      height: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(Provider.of<ThemeChanger>(context).themeType ==
                                  AppTheme.dark
                              ? 'images/happy.png'
                              : hasImageRight()),
                        ), //isLandscape ? constraints.maxHeight * 0.4 : constraints.maxHeight * 0.3,
                      )),
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
                        hasTextRight(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontFamily: 'FredokaOne',
                          fontSize: 25,
                          //  isLandscape
                          //     ? constraints.maxHeight * 0.06
                          //     : constraints.maxHeight * 0.04, //isLandscape ? 17 : 16,
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
                ]),
          );
        }),
      ),
    );
  }
}
