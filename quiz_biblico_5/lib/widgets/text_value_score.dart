import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class TextValueScore extends StatelessWidget {
  const TextValueScore({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 20,
        right: 20,
        bottom: 4,
      ),
      child: AutoSizeText(
        'worth10Points'.tr(),
        style: TextStyle(
          color: Colors.white,
          fontFamily: 'FredokaOne',
          fontSize: 25, //constraints!.maxHeight * 0.06,
          shadows: [
            Shadow(
              blurRadius: 7.0,
              color: Colors.black,
              offset: Offset(1.0, 1.0),
            ),
          ],
        ),
        maxLines: 1,
        textAlign: TextAlign.center,
      ),
    );
  }
}
