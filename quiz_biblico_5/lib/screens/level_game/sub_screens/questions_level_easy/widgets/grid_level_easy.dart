import 'package:flutter/material.dart';
import 'package:quiz_biblico_5/models/variables_game_model.dart';
import 'package:quiz_biblico_5/screens/level_game/sub_screens/questions_level_easy/widgets/items_number_level_easy.dart';
import 'package:quiz_biblico_5/widgets/admob_ads_widget.dart';

class GridLevelEasy extends StatelessWidget {
  const GridLevelEasy({super.key, required this.easy, required this.numbers});

  final List<VariablesGameModel> easy;
  final String numbers;

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
              children: easy.map((easy) {
                return ItemsNumberLevelEasy(easy: easy, numbers: numbers);
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
