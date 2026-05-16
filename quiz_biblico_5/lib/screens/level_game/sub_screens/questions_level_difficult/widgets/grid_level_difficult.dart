import 'package:flutter/material.dart';
import 'package:quiz_biblico_5/data/mock_game_data.dart';

import 'package:quiz_biblico_5/screens/level_game/sub_screens/questions_level_difficult/widgets/items_number_level_difficult.dart';
import 'package:quiz_biblico_5/widgets/admob_ads_widget.dart';

class GridLevelDifficult extends StatelessWidget {
  const GridLevelDifficult({super.key});

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
              children: mockGameData.difficult.map((difficult) {
                return ItemsNumberLevelDifficult(difficult: difficult);
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
