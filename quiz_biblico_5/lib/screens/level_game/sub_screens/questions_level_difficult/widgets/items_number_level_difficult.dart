import 'package:flutter/material.dart';
import 'package:quiz_biblico_5/models/variables_game_model.dart';

import 'package:quiz_biblico_5/utils/app_routes.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ItemsNumberLevelDifficult extends StatefulWidget {
  const ItemsNumberLevelDifficult({
    super.key,
    this.difficult,
  });

  final VariablesGameModel? difficult;

  @override
  State<ItemsNumberLevelDifficult> createState() => _ItemsNumberLevelDifficultState();
}

class _ItemsNumberLevelDifficultState extends State<ItemsNumberLevelDifficult> {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  Future<void> _initIsSelectIcon() async {
    final SharedPreferences prefs = await _prefs;
    bool? isSelectNamber = prefs.getBool(
      'isSelectNamberLevelDifficult${widget.difficult!.id}',
    );
    if (isSelectNamber != null) {
      setState(() {
        widget.difficult!.isSelectNamber = isSelectNamber;
      });
    }
  }

  Future<void> _toggleIsSelectIcon() async {
    final SharedPreferences prefs = await _prefs;
    bool success = await prefs.setBool(
      'isSelectNamberLevelDifficult${widget.difficult!.id}',
      !widget.difficult!.isSelectNamber,
    );
    if (success) {
      setState(() {
        widget.difficult!.isSelectNamber = !widget.difficult!.isSelectNamber;
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
          AppRoutes.questionsLevelDifficult, //PERGUNTAS,
          arguments: widget.difficult,
        ),
        _toggleIsSelectIcon(),
      },
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: widget.difficult!.isSelectNamber
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
            widget.difficult!.id!,
            style: TextStyle(
              fontSize: 26,
              color: widget.difficult!.isSelectNamber ? Colors.white : Colors.black,
              fontFamily: 'Shrikhand',
            ),
          ),
        ),
      ),
    );
  }
}
