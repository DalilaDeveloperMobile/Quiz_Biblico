import 'package:flutter/material.dart';

import 'package:quiz_biblico_5/screens/random_game/random_game.dart';
import 'package:quiz_biblico_5/screens/level_game/level_game.dart';
import 'package:quiz_biblico_5/screens/book_game/book_game.dart';

class Questions extends StatelessWidget {
  const Questions({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,

        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: SafeArea(
            child: TabBar(
              indicatorColor: Colors.red.shade300,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 5,
              labelColor: Colors.red.shade300,
              unselectedLabelColor: Theme.of(
                context,
              ).appBarTheme.titleTextStyle?.color,
              tabs: [
                Tab(text: 'Número'),
                Tab(text: 'Nível'),
                Tab(text: 'Livro'),
              ],
            ),
          ),
        ),

        body: const TabBarView(
          children: [RandomGame(), LevelGame(), BookGame()],
        ),
      ),
    );
  }
}
