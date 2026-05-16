import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_biblico_5/models/variables_game_model.dart';
import 'package:quiz_biblico_5/provider/theme_changer.dart';

import 'package:quiz_biblico_5/widgets/right_answer_widget.dart';

class ButtonRightAnswerWidget extends StatelessWidget {
  const ButtonRightAnswerWidget({super.key, required this.questionsModel});

  final VariablesGameModel questionsModel;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(
          Provider.of<ThemeChanger>(context).themeType == AppTheme.light
              ? Colors.brown.withValues(alpha: 0.5)
              : Colors.white24,
        ),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder:
                (BuildContext context) =>
                    RightAnswerWidget(questionsModel: questionsModel),
          ),
        );
      },
      child: Text(
        'response'.tr(),
        style: TextStyle(fontFamily: 'Times New Roman', fontSize: 20),
      ),
    );
  }
}
