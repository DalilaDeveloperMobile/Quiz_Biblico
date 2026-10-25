import 'package:flutter/material.dart';
import 'package:quiz_biblico_5/models/variables_game_model.dart';
import 'package:quiz_biblico_5/screens/level_game/sub_screens/questions_level_medium/widgets/items_number_level_medium.dart';
import 'package:quiz_biblico_5/widgets/admob_ads_widget.dart';

class GridLevelMedium extends StatelessWidget {
  final List<VariablesGameModel>? medium;
  final String numbersMedium;

  const GridLevelMedium({
    super.key,
    required this.medium,
    required this.numbersMedium,
  });

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
              children: medium!.map((medium) {
                return ItemsNumberLevelMedium(
                  medium: medium,
                  numbersMedium: numbersMedium,
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
