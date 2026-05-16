import 'package:flutter/material.dart';

import 'package:quiz_biblico_5/models/variables_game_model.dart';
import 'package:quiz_biblico_5/utils/app_routes.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ItemsNumberLevelEasy extends StatefulWidget {
  const ItemsNumberLevelEasy({super.key, this.easy});

  final VariablesGameModel? easy;

  @override
  State<ItemsNumberLevelEasy> createState() => _ItemsNumberLevelEasyState();
}

class _ItemsNumberLevelEasyState extends State<ItemsNumberLevelEasy> {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  Future<void> _initIsSelectIcon() async {
    final SharedPreferences prefs = await _prefs;
    bool? isSelectNamber = prefs.getBool(
      'isSelectNamberLevelEasy${widget.easy!.id}',
    );
    if (isSelectNamber != null) {
      setState(() {
        widget.easy!.isSelectNamber = isSelectNamber;
      });
    }
  }

  Future<void> _toggleIsSelectIcon() async {
    final SharedPreferences prefs = await _prefs;
    bool success = await prefs.setBool(
      'isSelectNamberLevelEasy${widget.easy!.id}',
      !widget.easy!.isSelectNamber,
    );
    if (success) {
      setState(() {
        widget.easy!.isSelectNamber = !widget.easy!.isSelectNamber;
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
          AppRoutes.questionsLevelEasy, //PERGUNTAS,
          arguments: widget.easy,
        ),
        _toggleIsSelectIcon(),
      },
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: widget.easy!.isSelectNamber
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
            widget.easy!.id!,
            style: TextStyle(
              fontSize: 26,
              color: widget.easy!.isSelectNamber ? Colors.white : Colors.black,
              fontFamily: 'Shrikhand',
            ),
          ),
        ),
      ),
    );
  }
}
