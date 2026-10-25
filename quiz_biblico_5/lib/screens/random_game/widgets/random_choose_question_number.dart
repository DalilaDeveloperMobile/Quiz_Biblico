import 'package:flutter/material.dart';
import 'package:quiz_biblico_5/models/variables_game_model.dart';

import 'package:quiz_biblico_5/screens/random_game/widgets/random_item_number.dart';
import 'package:quiz_biblico_5/widgets/admob_ads_widget.dart';

class RandomChooseQuestionNumber extends StatefulWidget {
  const RandomChooseQuestionNumber({
    super.key,
    required this.random,
    required this.numbersRandom,
  });

  final List<VariablesGameModel> random;
  final String numbersRandom;

  @override
  State<RandomChooseQuestionNumber> createState() =>
      _RandomChooseQuestionNumberState();
}

class _RandomChooseQuestionNumberState
    extends State<RandomChooseQuestionNumber> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
          colors: [
            Theme.of(context).secondaryHeaderColor,
            Theme.of(context).primaryColor,
            Theme.of(context).secondaryHeaderColor,
          ],
        ),
      ),
      child: Column(
        children: [
          const AdmobAdsWidget(),
          Expanded(
            child: GridView(
              padding: const EdgeInsets.all(25),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 100,
                childAspectRatio: 8 / 7,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              children: widget.random.map((per) {
                return RandomItemNumber(
                  randomQuestionsModel: per,
                  numbersRandom: widget.numbersRandom,
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
