import 'package:flutter/material.dart';
import 'package:quiz_biblico_5/data/verses/mock_game_data.dart';
import 'package:quiz_biblico_5/data/verses/mock_game_verses_data.dart';
import 'package:quiz_biblico_5/screens/book_game/book_game.dart';
import 'package:quiz_biblico_5/screens/level_game/level_game.dart';
import 'package:quiz_biblico_5/screens/random_game/random_game.dart';

class VersesPage extends StatelessWidget {
  const VersesPage({super.key});

  @override
  Widget build(BuildContext context) {
    var mockGameData2 = mockGameData;
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
              appBarText: 'Complete o Versículo',
              random: mockGameData2.randomVerses,
              numbersRandom: 'isSelectVersesRandom',
            ),
            LevelGame(
              appBarText: 'Complete o Versículo',
              numbersEasy: 'isSelectVersesLevelEasy',
              numbersMedium: 'isSelectVersesLevelMedium',
              numbersDifficult: 'isSelectVersesLevelDifficult',
              easy: mockGameData2.easyVerses,
              medium: mockGameData2.mediumVerses,
              difficult: mockGameData2.difficultVerses,
            ),
            BookGame(
              appBarText: 'Complete o Versículo',
              nameBook: mockGameVersesData.nameVersesBook,
              genesis: mockGameVersesData.genesisVerses,
              exodus: mockGameVersesData.exodusVerses,
              leviticus: mockGameVersesData.leviticusVerses,
              numbers: mockGameVersesData.numbersVerses,
              deuteronomy: mockGameVersesData.deuteronomyVerses,
              josue: mockGameVersesData.josueVerses,
              judges: mockGameVersesData.judgesVerses,
              ruth: mockGameVersesData.ruthVerses,
              samuel1: mockGameVersesData.samuel1Verses,
              samuel2: mockGameVersesData.samuel2Verses,
              kings1: mockGameVersesData.kings1Verses,
              kings2: mockGameVersesData.kings2Verses,
              chronicles1: mockGameVersesData.chronicles1Verses,
              chronicles2: mockGameVersesData.chronicles2Verses,
              ezra: mockGameVersesData.ezraVerses,
              nehemiah: mockGameVersesData.nehemiahVerses,
              ester: mockGameVersesData.esterVerses,
              job: mockGameVersesData.jobVerses,
              psalms: mockGameVersesData.psalmsVerses,
              proverbs: mockGameVersesData.proverbsVerses,
              ecclesiastes: mockGameVersesData.ecclesiastesVerses,
              songs: mockGameVersesData.songsVerses,
              isaiah: mockGameVersesData.isaiahVerses,
              jeremiah: mockGameVersesData.jeremiahVerses,
              lamentations: mockGameVersesData.lamentationsVerses,
              ezequiel: mockGameVersesData.ezequielVerses,
              daniel: mockGameVersesData.danielVerses,
              hosea: mockGameVersesData.hoseaVerses,
              joel: mockGameVersesData.joelVerses,
              amos: mockGameVersesData.amosVerses,
              obadiah: mockGameVersesData.obadiahVerses,
              jonah: mockGameVersesData.jonahVerses,
              micah: mockGameVersesData.micahVerses,
              no: mockGameVersesData.noVerses,
              habakkuk: mockGameVersesData.habakkukVerses,
              zephanies: mockGameVersesData.zephaniesVerses,
              haggai: mockGameVersesData.haggaiVerses,
              zechariah: mockGameVersesData.zechariahVerses,
              malachi: mockGameVersesData.malachiVerses,
              mateus: mockGameVersesData.mateusVerses,
              frames: mockGameVersesData.framesVerses,
              lucas: mockGameVersesData.lucasVerses,
              john: mockGameVersesData.johnVerses,
              acts: mockGameVersesData.actsVerses,
              romans: mockGameVersesData.romansVerses,
              corinthians1: mockGameVersesData.corinthians1Verses,
              corinthians2: mockGameVersesData.corinthians2Verses,
              galatians: mockGameVersesData.galatiansVerses,
              ephesians: mockGameVersesData.ephesiansVerses,
              philippians: mockGameVersesData.philippiansVerses,
              colossians: mockGameVersesData.colossiansVerses, 
              thessalonians1: mockGameVersesData.thessalonians1Verses,
              thessalonians2: mockGameVersesData.thessalonians2Verses,
              timothy1: mockGameVersesData.timothy1Verses,
              timothy2: mockGameVersesData.timothy2Verses,
              tito: mockGameVersesData.titoVerses,
              philemon: mockGameVersesData.philemonVerses,
              hebrews: mockGameVersesData.hebrewsVerses,
              tiago: mockGameVersesData.tiagoVerses,
              peter1: mockGameVersesData.peter1Verses,
              peter2: mockGameVersesData.peter2Verses,
              john1: mockGameVersesData.john1Verses,
              john2: mockGameVersesData.john2Verses,
              john3: mockGameVersesData.john3Verses,
              judas: mockGameVersesData.judasVerses,
              apocalypse: mockGameVersesData.apocalypseVerses,
              nameBank: 'mockGameVersesData',
            ),
          ],
        ),
      ),
    );
  }
}
