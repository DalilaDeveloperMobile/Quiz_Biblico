import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:quiz_biblico_5/data/verses/mock_game_data.dart';
import 'package:quiz_biblico_5/screens/level_game/level_game.dart';

import 'package:quiz_biblico_5/screens/random_game/random_game.dart';
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

        body: TabBarView(
          children: [
            RandomGame(
              appBarText: 'pickAnumber'.tr(),
              random: mockGameData.random,
              numbersRandom: 'isSelectNamberRandom',
            ),
            LevelGame(
              appBarText: 'chooseALevel'.tr(),
              numbersEasy: 'isSelectNamberLevelEasy',
              numbersMedium: 'isSelectNamberLevelMedium',
              numbersDifficult: 'isSelectNamberLevelDifficult',
              easy: mockGameData.easy,
              medium: mockGameData.medium,
              difficult: mockGameData.difficult,
            ),
            BookGame(
              appBarText: 'chooseABook'.tr(),
              nameBook: mockGameData.nameBook,
              genesis: mockGameData.genesis,
              exodus: mockGameData.exodus,
              leviticus: mockGameData.leviticus,
              numbers: mockGameData.numbers,
              deuteronomy: mockGameData.deuteronomy,
              josue: mockGameData.josue,
              judges: mockGameData.judges,
              ruth: mockGameData.ruth,
              samuel1: mockGameData.samuel1,
              samuel2: mockGameData.samuel2,
              kings1: mockGameData.kings1,
              kings2: mockGameData.kings2,
              chronicles1: mockGameData.chronicles1,
              chronicles2: mockGameData.chronicles2,
              ezra: mockGameData.ezra,
              nehemiah: mockGameData.nehemiah,
              ester: mockGameData.ester,
              job: mockGameData.job,
              psalms: mockGameData.psalms,
              proverbs: mockGameData.proverbs,
              ecclesiastes: mockGameData.ecclesiastes,
              songs: mockGameData.songs,
              isaiah: mockGameData.isaiah,
              jeremiah: mockGameData.jeremiah,
              lamentations: mockGameData.lamentations,
              ezequiel: mockGameData.ezequiel, 
              daniel: mockGameData.daniel,
              hosea: mockGameData.hosea,
              joel: mockGameData.joel,
              amos: mockGameData.amos,
              obadiah: mockGameData.obadiah,
              jonah: mockGameData.jonah,
              micah: mockGameData.micah,
              no: mockGameData.no,
              habakkuk: mockGameData.habakkuk,
              zephanies: mockGameData.zephanies,
              haggai: mockGameData.haggai,
              zechariah: mockGameData.zechariah,
              malachi: mockGameData.malachi,
              mateus: mockGameData.mateus,
              frames: mockGameData.frames,
              lucas: mockGameData.lucas,
              john: mockGameData.john,
              acts: mockGameData.acts,
              romans: mockGameData.romans,
              corinthians1: mockGameData.corinthians1,
              corinthians2: mockGameData.corinthians2,
              galatians: mockGameData.galatians,
              ephesians: mockGameData.ephesians,
              philippians: mockGameData.philippians,
              colossians: mockGameData.colossians,
              thessalonians1: mockGameData.thessalonians1,
              thessalonians2: mockGameData.thessalonians2,
              timothy1: mockGameData.timothy1,
              timothy2: mockGameData.timothy2,
              tito: mockGameData.tito,
              philemon: mockGameData.philemon,
              hebrews: mockGameData.hebrews,
              tiago: mockGameData.tiago,
              peter1: mockGameData.peter1,
              peter2: mockGameData.peter2,
              john1: mockGameData.john1,
              john2: mockGameData.john2,
              john3: mockGameData.john3,
              judas: mockGameData.judas,
              apocalypse: mockGameData.apocalypse,
              nameBank: 'mockGameData',
            ),
          ],
        ),
      ),
    );
  }
}
