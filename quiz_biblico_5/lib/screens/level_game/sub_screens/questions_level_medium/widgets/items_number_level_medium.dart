import 'package:flutter/material.dart';

import 'package:quiz_biblico_5/models/variables_game_model.dart';
import 'package:quiz_biblico_5/utils/app_routes.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ItemsNumberLevelMedium extends StatefulWidget {
  const ItemsNumberLevelMedium({
    super.key,
    required this.medium,
  });

  final VariablesGameModel medium;

  @override
  State<ItemsNumberLevelMedium> createState() => _ItemsNumberLevelMediumState();
}

class _ItemsNumberLevelMediumState extends State<ItemsNumberLevelMedium> {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  Future<void> _initIsSelectIcon() async {
    final SharedPreferences prefs = await _prefs;
    bool? isSelectNamber = prefs.getBool(
      'isSelectNamberLevelMedium${widget.medium.id}',
    );
    if (isSelectNamber != null) {
      setState(() {
        widget.medium.isSelectNamber = isSelectNamber;
      });
    }
  }

  Future<void> _toggleIsSelectIcon() async {
    final SharedPreferences prefs = await _prefs;
    bool success = await prefs.setBool(
      'isSelectNamberLevelMedium${widget.medium.id}',
      !widget.medium.isSelectNamber,
    );
    if (success) {
      setState(() {
        widget.medium.isSelectNamber = !widget.medium.isSelectNamber;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _initIsSelectIcon();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {
        Navigator.of(context).pushNamed(
          AppRoutes.questionsLevelMedium, //PERGUNTAS,
          arguments: widget.medium,
        ),
        _toggleIsSelectIcon(),
      },
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: widget.medium.isSelectNamber
            ? const BoxDecoration()
            : BoxDecoration(
                borderRadius: BorderRadius.circular(80),
                gradient: LinearGradient(
                  colors: [
                    Colors.white.withValues(alpha: 0.5),
                    Colors.white,
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
        child: Center(
          child: Text(
            widget.medium.id!,
            style: TextStyle(
              fontSize: 26,
              color: widget.medium.isSelectNamber ? Colors.white : Colors.black,
              fontFamily: 'Shrikhand',
            ),
          ),
        ),
      ),
    );
  }
}
