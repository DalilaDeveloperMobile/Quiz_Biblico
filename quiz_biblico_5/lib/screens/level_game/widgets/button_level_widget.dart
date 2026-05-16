import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_biblico_5/provider/theme_changer.dart';


class ButtonLevelWidget extends StatefulWidget {
  final Function()? onTap;
  final String? text;

  const ButtonLevelWidget({
    super.key,
    this.onTap,
    this.text,
  });

  @override
  State<ButtonLevelWidget> createState() => _ButtonLevelWidgetState();
}

class _ButtonLevelWidgetState extends State<ButtonLevelWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
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
        child: Text(
          widget.text!,
          style: const TextStyle(
            color: Colors.white,
            fontFamily: 'FredokaOne',
            fontSize: 25,
            shadows: [
              Shadow(
                blurRadius: 7.0,
                color: Colors.black,
                offset: Offset(1.0, 1.0),
              ),
            ],
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
