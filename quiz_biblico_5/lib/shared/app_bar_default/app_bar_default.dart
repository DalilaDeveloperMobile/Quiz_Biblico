import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class AppBarDefault extends StatefulWidget {
  final String text;
  final String fontFamily;
  final bool? changeColorsToTheme;
  final List<Widget>? actions;
  final Widget? leading;

  const AppBarDefault({
    super.key,
    required this.text,
    this.fontFamily = 'Trocchi',
    this.changeColorsToTheme,
    this.actions,
    this.leading,
  });

  @override
  State<AppBarDefault> createState() => _AppBarDefaultState();
}

class _AppBarDefaultState extends State<AppBarDefault> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: widget.leading,
      centerTitle: true,
      actions: widget.actions,
      iconTheme: IconThemeData(color: Theme.of(context).iconTheme.color),
      foregroundColor: Colors.black,
      backgroundColor: Theme.of(context).primaryColor,
      title: AutoSizeText(
        widget.text,
        style: Theme.of(
          context,
        ).appBarTheme.titleTextStyle?.copyWith(fontFamily: widget.fontFamily),
        maxLines: 1,
      ),
    );
  }
}
