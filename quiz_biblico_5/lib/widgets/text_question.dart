import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class TextQuestion extends StatelessWidget {
  final String textQuestion;

  const TextQuestion({
    super.key,
    required this.textQuestion,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
      ),
      child: AutoSizeText(
        textQuestion,
        style: const TextStyle(
          color: Colors.white,
          fontFamily: 'FredokaOne',
          fontSize: 25, //constraints!.maxHeight * 0.04,
          shadows: [
            Shadow(
              blurRadius: 7.0,
              color: Colors.black,
              offset: Offset(1.0, 1.0),
            ),
          ],
        ),
        maxLines: 4,
        textAlign: TextAlign.center,
      ),
    );
  }
}
