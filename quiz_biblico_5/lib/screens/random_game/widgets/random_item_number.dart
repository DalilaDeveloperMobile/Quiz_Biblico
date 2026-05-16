import 'package:flutter/material.dart';
import 'package:quiz_biblico_5/models/variables_game_model.dart';
import 'package:quiz_biblico_5/utils/app_routes.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RandomItemNumber extends StatefulWidget {
  final VariablesGameModel? randomQuestionsModel;

  const RandomItemNumber({
    super.key,
    this.randomQuestionsModel,
  });

  @override
  State<RandomItemNumber> createState() => _RandomItemNumberState();
}

class _RandomItemNumberState extends State<RandomItemNumber> {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  Future<void> _initIsSelectIcon() async {
    final SharedPreferences prefs = await _prefs;
    bool? isSelectNamber = prefs.getBool(
      'isSelectNamberRandom${widget.randomQuestionsModel!.id}',
    );
    if (isSelectNamber != null) {
      setState(() {
        widget.randomQuestionsModel!.isSelectNamber = isSelectNamber;
      });
    }
  }

  Future<void> _toggleIsSelectIcon() async {
    final SharedPreferences prefs = await _prefs;
    bool success = await prefs.setBool(
      'isSelectNamberRandom${widget.randomQuestionsModel!.id}',
      !widget.randomQuestionsModel!.isSelectNamber,
    );
    if (success) {
      setState(() {
        widget.randomQuestionsModel!.isSelectNamber = !widget.randomQuestionsModel!.isSelectNamber;
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
      onTap: () {
        Navigator.of(context).pushNamed(
          AppRoutes.questionsRandom, //PERGUNTAS,
          arguments: widget.randomQuestionsModel,
        );
        _toggleIsSelectIcon();
      },
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: widget.randomQuestionsModel!.isSelectNamber
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
            widget.randomQuestionsModel!.id!,
            style: TextStyle(
              fontSize: 26,
              color: widget.randomQuestionsModel!.isSelectNamber ? Colors.white : Colors.black,
              fontFamily: 'Shrikhand',
            ),
          ),
        ),
      ),
    );
  }
}
