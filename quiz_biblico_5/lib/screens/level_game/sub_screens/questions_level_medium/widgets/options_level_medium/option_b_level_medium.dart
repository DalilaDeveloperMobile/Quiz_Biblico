import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:quiz_biblico_5/models/variables_game_model.dart';
import 'package:quiz_biblico_5/provider/theme_changer.dart';

class OptionBLevelMedium extends StatelessWidget {
  final VariablesGameModel medium;
  final Function()? onTap;

  const OptionBLevelMedium({
    super.key,
    required this.medium,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      // () {
      //   Navigator.of(context).pushReplacementNamed(
      //     AppRoutes.alternative2LevelMedium, //ALTERNATIVA2,
      //     arguments: medium,
      //   );
      // },
      child: Padding(
        padding: const EdgeInsets.only(
          left: 10,
          right: 10,
        ),
        child: Container(
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Provider.of<ThemeChanger>(context).themeType ==
                    AppTheme.light
                ? Colors.brown.withValues(alpha: 0.5)
                : Colors.white24,
            border: const Border(
              top: BorderSide(
                //                    <--- top side
                color: Colors.white,
                width: 5.0,
              ),
              left: BorderSide(
                color: Colors.white,
                width: 5.0,
              ),
              bottom: BorderSide(
                //                    <--- bottom side
                color: Colors.white,
                width: 5.0,
              ),
              right: BorderSide(
                //                    <--- right side
                color: Colors.white,
                width: 5.0,
              ),
            ),
          ),
          child: AutoSizeText(
            medium.alternatives2!,
            style: const TextStyle(
              color: Colors.white,
              fontFamily: 'FredokaOne',
              fontSize: 22,
              // fontSize: isLandscape! ? constraints!.maxHeight * 0.05 : constraints!.maxHeight * 0.03,
              shadows: [
                Shadow(
                  blurRadius: 7.0,
                  color: Colors.black,
                  offset: Offset(1.0, 1.0),
                ),
              ],
            ),
            maxLines: 2,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
