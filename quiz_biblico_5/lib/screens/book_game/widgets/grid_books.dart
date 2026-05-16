import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:quiz_biblico_5/data/mock_game_data.dart';
import 'package:quiz_biblico_5/models/variables_game_model.dart';
import 'package:quiz_biblico_5/screens/book_game/widgets/items_number_books.dart';
import 'package:quiz_biblico_5/widgets/admob_ads_widget.dart';

class GridBooks extends StatefulWidget {
  const GridBooks({
    super.key,
    required this.nameBook,
  });

  final String nameBook;

  @override
  State<GridBooks> createState() => _GridBooksState();
}

class _GridBooksState extends State<GridBooks> {
  List<VariablesGameModel> booksGameModel(String nameBook) {
    if (nameBook.contains('Gênesis')) {
      return mockGameData.genesis;
    } else if (nameBook.contains('Êxodo')) {
      return mockGameData.exodus;
    } else if (nameBook.contains('Levítico')) {
      return mockGameData.leviticus;
    } else if (nameBook.contains('Números')) {
      return mockGameData.numbers;
    } else if (nameBook.contains('Deuteronômio')) {
      return mockGameData.deuteronomy;
    } else if (nameBook.contains('Josué')) {
      return mockGameData.josue;
    } else if (nameBook.contains('Juízes')) {
      return mockGameData.judges;
    } else if (nameBook.contains('Rute')) {
      return mockGameData.ruth;
    } else if (nameBook.contains('1Samuel')) {
      return mockGameData.samuel1;
    } else if (nameBook.contains('2Samuel')) {
      return mockGameData.samuel2;
    } else if (nameBook.contains('1Reis')) {
      return mockGameData.kings1;
    } else if (nameBook.contains('2Reis')) {
      return mockGameData.kings2;
    } else if (nameBook.contains('1Crônicas')) {
      return mockGameData.chronicles1;
    } else if (nameBook.contains('2Crônicas')) {
      return mockGameData.chronicles2;
    } else if (nameBook.contains('Esdras')) {
      return mockGameData.ezra;
    } else if (nameBook.contains('Neemias')) {
      return mockGameData.nehemiah;
    } else if (nameBook.contains('Ester')) {
      return mockGameData.ester;
    } else if (nameBook.contains('Jó')) {
      return mockGameData.job;
    } else if (nameBook.contains('Salmos')) {
      return mockGameData.psalms;
    } else if (nameBook.contains('Provérbios')) {
      return mockGameData.proverbs;
    } else if (nameBook.contains('Eclesiastes')) {
      return mockGameData.ecclesiastes;
    } else if (nameBook.contains('Cântares')) {
      return mockGameData.songs;
    } else if (nameBook.contains('Isaías')) {
      return mockGameData.isaiah;
    } else if (nameBook.contains('Jeremias')) {
      return mockGameData.jeremiah;
    } else if (nameBook.contains('Lamentações')) {
      return mockGameData.lamentations;
    } else if (nameBook.contains('Ezequiel')) {
      return mockGameData.ezequiel;
    } else if (nameBook.contains('Daniel')) {
      return mockGameData.daniel;
    } else if (nameBook.contains('Oséias')) {
      return mockGameData.hosea;
    } else if (nameBook.contains('Joel')) {
      return mockGameData.joel;
    } else if (nameBook.contains('Amós')) {
      return mockGameData.amos;
    } else if (nameBook.contains('Obadias')) {
      return mockGameData.obadiah;
    } else if (nameBook.contains('Jonas')) {
      return mockGameData.jonah;
    } else if (nameBook.contains('Miquéias')) {
      return mockGameData.micah;
    } else if (nameBook.contains('Naum')) {
      return mockGameData.no;
    } else if (nameBook.contains('Habacuque')) {
      return mockGameData.habakkuk;
    } else if (nameBook.contains('Sofonias')) {
      return mockGameData.zephanies;
    } else if (nameBook.contains('Ageu')) {
      return mockGameData.haggai;
    } else if (nameBook.contains('Zacarias')) {
      return mockGameData.zechariah;
    } else if (nameBook.contains('Malaquias')) {
      return mockGameData.malachi;
    } else if (nameBook.contains('Mateus')) {
      return mockGameData.mateus;
    } else if (nameBook.contains('Marcos')) {
      return mockGameData.frames;
    } else if (nameBook.contains('Lucas')) {
      return mockGameData.lucas;
    } else if (nameBook.contains('Evangelho de João')) {
      return mockGameData.john;
    } else if (nameBook.contains('Atos')) {
      return mockGameData.acts;
    } else if (nameBook.contains('Romanos')) {
      return mockGameData.romans;
    } else if (nameBook.contains('1 Coríntios')) {
      return mockGameData.corinthians1;
    } else if (nameBook.contains('2 Coríntios')) {
      return mockGameData.corinthians2;
    } else if (nameBook.contains('Gálatas')) {
      return mockGameData.galatians;
    } else if (nameBook.contains('Efésios')) {
      return mockGameData.ephesians;
    } else if (nameBook.contains('Filipenses')) {
      return mockGameData.philippians;
    } else if (nameBook.contains('Colossenses')) {
      return mockGameData.colossians;
    } else if (nameBook.contains('1Tessalonicenses')) {
      return mockGameData.thessalonians1;
    } else if (nameBook.contains('2Tessalonicenses')) {
      return mockGameData.thessalonians2;
    } else if (nameBook.contains('1 Timóteo')) {
      return mockGameData.timothy1;
    } else if (nameBook.contains('2 Timóteo')) {
      return mockGameData.timothy2;
    } else if (nameBook.contains('Tito')) {
      return mockGameData.tito;
    } else if (nameBook.contains('Filemom')) {
      return mockGameData.philemon;
    } else if (nameBook.contains('Hebreus')) {
      return mockGameData.hebrews;
    } else if (nameBook.contains('Tiago')) {
      return mockGameData.tiago;
    } else if (nameBook.contains('1 Pedro')) {
      return mockGameData.peter1;
    } else if (nameBook.contains('2 Pedro')) {
      return mockGameData.peter2;
    } else if (nameBook.contains('1 João')) {
      return mockGameData.john1;
    } else if (nameBook.contains('2 João')) {
      return mockGameData.john2;
    } else if (nameBook.contains('3 João')) {
      return mockGameData.john3;
    } else if (nameBook.contains('Judas')) {
      return mockGameData.judas;
    } else if (nameBook.contains('Apocalipse')) {
      return mockGameData.apocalypse;
    } else {
      return [];
    }
  }

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
          Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
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
              child: AutoSizeText(
                'pickAnumber'.tr(),
                style: TextStyle(
                  fontSize: 26,
                  color: Colors.black,
                  fontFamily: 'Shrikhand',
                ),
              ),
            ),
          ),
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
              children: booksGameModel(widget.nameBook).map((books) {
                return ItemsNumberBooks(
                  books: books,
                  nameBook: widget.nameBook,
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
