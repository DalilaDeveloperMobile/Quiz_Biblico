import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:quiz_biblico_5/models/variables_game_model.dart';
import 'package:quiz_biblico_5/screens/book_game/widgets/items_number_books.dart';
import 'package:quiz_biblico_5/widgets/admob_ads_widget.dart';

class GridBooks extends StatefulWidget {
  const GridBooks({
    super.key,
    required this.nameBook,
    required this.genesis,
    required this.exodus,
    required this.leviticus,
    required this.nameBooks,
    required this.numbers,
    required this.deuteronomy,
    required this.josue,
    required this.judges,
    required this.ruth,
    required this.samuel1,
    required this.samuel2,
    required this.kings1,
    required this.kings2,
    required this.chronicles1,
    required this.chronicles2,
    required this.ezra,
    required this.nehemiah,
    required this.ester,
    required this.job,
    required this.psalms,
    required this.proverbs,
    required this.ecclesiastes,
    required this.songs,
    required this.isaiah,
    required this.jeremiah,
    required this.lamentations,
    required this.ezequiel,
    required this.daniel,
    required this.hosea,
    required this.joel,
    required this.amos,
    required this.obadiah,
    required this.jonah,
    required this.micah,
    required this.no,
    required this.habakkuk,
    required this.zephanies,
    required this.haggai,
    required this.zechariah,
    required this.malachi,
    required this.mateus,
    required this.frames,
    required this.lucas,
    required this.john,
    required this.acts,
    required this.romans,
    required this.corinthians1,
    required this.corinthians2,
    required this.galatians,
    required this.ephesians,
    required this.philippians,
    required this.colossians,
    required this.thessalonians1,
    required this.thessalonians2,
    required this.timothy1,
    required this.timothy2,
    required this.tito,
    required this.philemon,
    required this.hebrews,
    required this.tiago,
    required this.peter1,
    required this.peter2,
    required this.john1,
    required this.john2,
    required this.john3,
    required this.judas,
    required this.apocalypse,
    required this.nameBank,
  });

  final String nameBook;
  final Map<String, dynamic> nameBooks;
  final List<VariablesGameModel> genesis;
  final List<VariablesGameModel> exodus;
  final List<VariablesGameModel> leviticus;
  final List<VariablesGameModel> numbers;
  final List<VariablesGameModel> deuteronomy;
  final List<VariablesGameModel> josue;
  final List<VariablesGameModel> judges;
  final List<VariablesGameModel> ruth;
  final List<VariablesGameModel> samuel1;
  final List<VariablesGameModel> samuel2;
  final List<VariablesGameModel> kings1;
  final List<VariablesGameModel> kings2;
  final List<VariablesGameModel> chronicles1;
  final List<VariablesGameModel> chronicles2;
  final List<VariablesGameModel> ezra;
  final List<VariablesGameModel> nehemiah;
  final List<VariablesGameModel> ester;
  final List<VariablesGameModel> job;
  final List<VariablesGameModel> psalms;
  final List<VariablesGameModel> proverbs;
  final List<VariablesGameModel> ecclesiastes;
  final List<VariablesGameModel> songs;
  final List<VariablesGameModel> isaiah;
  final List<VariablesGameModel> jeremiah;
  final List<VariablesGameModel> lamentations;
  final List<VariablesGameModel> ezequiel;
  final List<VariablesGameModel> daniel;
  final List<VariablesGameModel> hosea;
  final List<VariablesGameModel> joel;
  final List<VariablesGameModel> amos;
  final List<VariablesGameModel> obadiah;
  final List<VariablesGameModel> jonah;
  final List<VariablesGameModel> micah;
  final List<VariablesGameModel> no;
  final List<VariablesGameModel> habakkuk;
  final List<VariablesGameModel> zephanies;
  final List<VariablesGameModel> haggai;
  final List<VariablesGameModel> zechariah;
  final List<VariablesGameModel> malachi;
  final List<VariablesGameModel> mateus;
  final List<VariablesGameModel> frames;
  final List<VariablesGameModel> lucas;
  final List<VariablesGameModel> john;
  final List<VariablesGameModel> acts;
  final List<VariablesGameModel> romans;
  final List<VariablesGameModel> corinthians1;
  final List<VariablesGameModel> corinthians2;
  final List<VariablesGameModel> galatians;
  final List<VariablesGameModel> ephesians;
  final List<VariablesGameModel> philippians;
  final List<VariablesGameModel> colossians;
  final List<VariablesGameModel> thessalonians1;
  final List<VariablesGameModel> thessalonians2;
  final List<VariablesGameModel> timothy1;
  final List<VariablesGameModel> timothy2;
  final List<VariablesGameModel> tito;
  final List<VariablesGameModel> philemon;
  final List<VariablesGameModel> hebrews;
  final List<VariablesGameModel> tiago;
  final List<VariablesGameModel> peter1;
  final List<VariablesGameModel> peter2;
  final List<VariablesGameModel> john1;
  final List<VariablesGameModel> john2;
  final List<VariablesGameModel> john3;
  final List<VariablesGameModel> judas;
  final List<VariablesGameModel> apocalypse;
  final String nameBank;

  @override
  State<GridBooks> createState() => _GridBooksState();
}

class _GridBooksState extends State<GridBooks> {
  List<VariablesGameModel> booksGameModel(String nameBook) {
    if (nameBook.contains('Gênesis')) {
      return widget.genesis;
    } else if (nameBook.contains('Êxodo')) {
      return widget.exodus;
    } else if (nameBook.contains('Levítico')) {
      return widget.leviticus;
    } else if (nameBook.contains('Números')) {
      return widget.numbers;
    } else if (nameBook.contains('Deuteronômio')) {
      return widget.deuteronomy;
    } else if (nameBook.contains('Josué')) {
      return widget.josue;
    } else if (nameBook.contains('Juízes')) {
      return widget.judges;
    } else if (nameBook.contains('Rute')) {
      return widget.ruth;
    } else if (nameBook.contains('1Samuel')) {
      return widget.samuel1;
    } else if (nameBook.contains('2Samuel')) {
      return widget.samuel2;
    } else if (nameBook.contains('1Reis')) {
      return widget.kings1;
    } else if (nameBook.contains('2Reis')) {
      return widget.kings2;
    } else if (nameBook.contains('1Crônicas')) {
      return widget.chronicles1;
    } else if (nameBook.contains('2Crônicas')) {
      return widget.chronicles2;
    } else if (nameBook.contains('Esdras')) {
      return widget.ezra;
    } else if (nameBook.contains('Neemias')) {
      return widget.nehemiah;
    } else if (nameBook.contains('Ester')) {
      return widget.ester;
    } else if (nameBook.contains('Jó')) {
      return widget.job;
    } else if (nameBook.contains('Salmos')) {
      return widget.psalms;
    } else if (nameBook.contains('Provérbios')) {
      return widget.proverbs;
    } else if (nameBook.contains('Eclesiastes')) {
      return widget.ecclesiastes;
    } else if (nameBook.contains('Cântares')) {
      return widget.songs;
    } else if (nameBook.contains('Isaías')) {
      return widget.isaiah;
    } else if (nameBook.contains('Jeremias')) {
      return widget.jeremiah;
    } else if (nameBook.contains('Lamentações')) {
      return widget.lamentations;
    } else if (nameBook.contains('Ezequiel')) {
      return widget.ezequiel;
    } else if (nameBook.contains('Daniel')) {
      return widget.daniel;
    } else if (nameBook.contains('Oséias')) {
      return widget.hosea;
    } else if (nameBook.contains('Joel')) {
      return widget.joel;
    } else if (nameBook.contains('Amós')) {
      return widget.amos;
    } else if (nameBook.contains('Obadias')) {
      return widget.obadiah;
    } else if (nameBook.contains('Jonas')) {
      return widget.jonah;
    } else if (nameBook.contains('Miquéias')) {
      return widget.micah;
    } else if (nameBook.contains('Naum')) {
      return widget.no;
    } else if (nameBook.contains('Habacuque')) {
      return widget.habakkuk;
    } else if (nameBook.contains('Sofonias')) {
      return widget.zephanies;
    } else if (nameBook.contains('Ageu')) {
      return widget.haggai;
    } else if (nameBook.contains('Zacarias')) {
      return widget.zechariah;
    } else if (nameBook.contains('Malaquias')) {
      return widget.malachi;
    } else if (nameBook.contains('Mateus')) {
      return widget.mateus;
    } else if (nameBook.contains('Marcos')) {
      return widget.frames;
    } else if (nameBook.contains('Lucas')) {
      return widget.lucas;
    } else if (nameBook.contains('Evangelho de João')) {
      return widget.john;
    } else if (nameBook.contains('Atos')) {
      return widget.acts;
    } else if (nameBook.contains('Romanos')) {
      return widget.romans;
    } else if (nameBook.contains('1 Coríntios')) {
      return widget.corinthians1;
    } else if (nameBook.contains('2 Coríntios')) {
      return widget.corinthians2;
    } else if (nameBook.contains('Gálatas')) {
      return widget.galatians;
    } else if (nameBook.contains('Efésios')) {
      return widget.ephesians;
    } else if (nameBook.contains('Filipenses')) {
      return widget.philippians;
    } else if (nameBook.contains('Colossenses')) {
      return widget.colossians;
    } else if (nameBook.contains('1Tessalonicenses')) {
      return widget.thessalonians1;
    } else if (nameBook.contains('2Tessalonicenses')) {
      return widget.thessalonians2;
    } else if (nameBook.contains('1 Timóteo')) {
      return widget.timothy1;
    } else if (nameBook.contains('2 Timóteo')) {
      return widget.timothy2;
    } else if (nameBook.contains('Tito')) {
      return widget.tito;
    } else if (nameBook.contains('Filemom')) {
      return widget.philemon;
    } else if (nameBook.contains('Hebreus')) {
      return widget.hebrews;
    } else if (nameBook.contains('Tiago')) {
      return widget.tiago;
    } else if (nameBook.contains('1 Pedro')) {
      return widget.peter1;
    } else if (nameBook.contains('2 Pedro')) {
      return widget.peter2;
    } else if (nameBook.contains('1 João')) {
      return widget.john1;
    } else if (nameBook.contains('2 João')) {
      return widget.john2;
    } else if (nameBook.contains('3 João')) {
      return widget.john3;
    } else if (nameBook.contains('Judas')) {
      return widget.judas;
    } else if (nameBook.contains('Apocalipse')) {
      return widget.apocalypse;
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
                colors: [Colors.white.withValues(alpha: 0.5), Colors.white],
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
                  nameBooks: widget.nameBooks,
                  nameBank: widget.nameBank,
                  apocalypse: widget.apocalypse,
                  judas: widget.judas,
                  john3: widget.john3,
                  john2: widget.john2,
                  john1: widget.john1,
                  peter2: widget.peter2,
                  peter1: widget.peter1,
                  tiago: widget.tiago,
                  hebrews: widget.hebrews,
                  philemon: widget.philemon,
                  tito: widget.tito,
                  timothy2: widget.timothy2,
                  timothy1: widget.timothy1,
                  thessalonians2: widget.thessalonians2,
                  thessalonians1: widget.thessalonians1,
                  colossians: widget.colossians,
                  philippians: widget.philippians,
                  ephesians: widget.ephesians,
                  galatians: widget.galatians,
                  corinthians2: widget.corinthians2,
                  corinthians1: widget.corinthians1,
                  romans: widget.romans,
                  acts: widget.acts,
                  john: widget.john,
                  lucas: widget.lucas,
                  frames: widget.frames,
                  mateus: widget.mateus,
                  malachi: widget.malachi,
                  zechariah: widget.zechariah,
                  haggai: widget.haggai,
                  zephanies: widget.zephanies,
                  habakkuk: widget.habakkuk,
                  no: widget.no,
                  micah: widget.micah,
                  jonah: widget.jonah,
                  obadiah: widget.obadiah,
                  amos: widget.amos,
                  joel: widget.joel,
                  hosea: widget.hosea,
                  daniel: widget.daniel,
                  ezequiel: widget.ezequiel,
                  lamentations: widget.lamentations,
                  jeremiah: widget.jeremiah,
                  isaiah: widget.isaiah,
                  songs: widget.songs,
                  ecclesiastes: widget.ecclesiastes,
                  proverbs: widget.proverbs,
                  psalms: widget.psalms,
                  job: widget.job,
                  ester: widget.ester,
                  nehemiah: widget.nehemiah,
                  ezra: widget.ezra,
                  chronicles2: widget.chronicles2,
                  chronicles1: widget.chronicles1,
                  kings2: widget.kings2,
                  kings1: widget.kings1,
                  samuel2: widget.samuel2,
                  samuel1: widget.samuel1,
                  ruth: widget.ruth,
                  judges: widget.judges,
                  josue: widget.josue,
                  deuteronomy: widget.deuteronomy,
                  numbers: widget.numbers,
                  leviticus: widget.leviticus,
                  exodus: widget.exodus,
                  genesis: widget.genesis,
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
