import 'package:flutter/material.dart';
import 'package:quiz_biblico_5/models/variables_game_model.dart';
import 'package:quiz_biblico_5/shared/app_bar_default/app_bar_default.dart';
import 'package:quiz_biblico_5/shared/button_book_default/button_book_default.dart';

class BookGame extends StatefulWidget {
  const BookGame({
    super.key,
    required this.appBarText,
    required this.nameBook,
    required this.genesis,
    required this.exodus,
    required this.leviticus,
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

  final String appBarText;

  final Map<String, dynamic> nameBook;
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
  State<BookGame> createState() => _BookGameState();
}

class _BookGameState extends State<BookGame> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(55.0),
          child: AppBarDefault(text: widget.appBarText),
        ),
        body: LayoutBuilder(
          builder: (ctx, constraints) {
            return Container(
              width: MediaQuery.of(context).size.width,
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
              child: ListView(
                padding: const EdgeInsets.all(20),
                children: widget.nameBook.entries.map((entry) {
                  final Map<String, dynamic> nameBooks = {
                    'nameBook': entry.key,
                    'number': entry.value,
                  };
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: ButtonBookDefault(
                      nameBook: entry.key,
                      nameBooks: nameBooks,
                      nameBank: widget.nameBank,
                      genesis: widget.genesis,
                      exodus: widget.exodus,
                      leviticus: widget.leviticus,
                      numbers: widget.numbers,
                      deuteronomy: widget.deuteronomy,
                      josue: widget.josue,
                      judges: widget.judges,
                      ruth: widget.ruth,
                      samuel1: widget.samuel1,
                      samuel2: widget.samuel2,
                      kings1: widget.kings1,
                      kings2: widget.kings2,
                      chronicles1: widget.chronicles1,
                      chronicles2: widget.chronicles2,
                      ezra: widget.ezra,
                      nehemiah: widget.nehemiah,
                      ester: widget.ester,
                      job: widget.job,
                      psalms: widget.psalms,
                      proverbs: widget.proverbs,
                      ecclesiastes: widget.ecclesiastes,
                      songs: widget.songs,
                      isaiah: widget.isaiah,
                      jeremiah: widget.jeremiah,
                      lamentations: widget.lamentations,
                      ezequiel: widget.ezequiel,
                      daniel: widget.daniel,
                      hosea: widget.hosea,
                      joel: widget.joel,
                      amos: widget.amos,
                      obadiah: widget.obadiah,
                      jonah: widget.jonah,
                      micah: widget.micah,
                      no: widget.no,
                      habakkuk: widget.habakkuk,
                      zephanies: widget.zephanies,
                      haggai: widget.haggai,
                      zechariah: widget.zechariah,
                      malachi: widget.malachi,
                      mateus: widget.mateus,
                      frames: widget.frames,
                      lucas: widget.lucas,
                      john: widget.john,
                      acts: widget.acts,
                      romans: widget.romans,
                      corinthians1: widget.corinthians1,
                      corinthians2: widget.corinthians2,
                      galatians: widget.galatians,
                      ephesians: widget.ephesians,
                      philippians: widget.philippians,
                      colossians: widget.colossians,
                      thessalonians1: widget.thessalonians1,
                      thessalonians2: widget.thessalonians2,
                      timothy1: widget.timothy1,
                      timothy2: widget.timothy2,
                      tito: widget.tito,
                      philemon: widget.philemon,
                      hebrews: widget.hebrews,
                      tiago: widget.tiago,
                      peter1: widget.peter1,
                      peter2: widget.peter2,
                      john1: widget.john1,
                      john2: widget.john2,
                      john3: widget.john3,
                      judas: widget.judas,
                      apocalypse: widget.apocalypse,
                    ),
                  );
                }).toList(),
              ),
            );
          },
        ),
      ),
    );
  }
}
