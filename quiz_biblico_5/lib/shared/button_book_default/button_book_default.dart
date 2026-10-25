import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_biblico_5/models/variables_game_model.dart';
import 'package:quiz_biblico_5/provider/theme_changer.dart';

import 'package:quiz_biblico_5/utils/routes_books.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ButtonBookDefault extends StatefulWidget {
  final Function()? onTap;
  final String? text;
  final String? nameBook;
  final Map<String, dynamic>? nameBooks;
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

  const ButtonBookDefault({
    super.key,
    this.onTap,
    this.text,
    this.nameBooks,
    this.nameBook,
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

  @override
  State<ButtonBookDefault> createState() => _ButtonBookDefaultState();
}

class _ButtonBookDefaultState extends State<ButtonBookDefault> {
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

  Map<String, bool> booleanBooksMap = {
    'Gênesis': false,
    'Êxodo': false,
    'Levítico': false,
    'Números': false,
    'Deuteronômio': false,
    'Josué': false,
    'Juízes': false,
    'Rute': false,
    '1Samuel': false,
    '2Samuel': false,
    '1Reis': false,
    '2Reis': false,
    '1Crônicas': false,
    '2Crônicas': false,
    'Esdras': false,
    'Neemias': false,
    'Ester': false,
    'Jó': false,
    'Salmos': false,
    'Provérbios': false,
    'Eclesiastes': false,
    'Cântares': false,
    'Isaías': false,
    'Jeremias': false,
    'Lamentações': false,
    'Ezequiel': false,
    'Daniel': false,
    'Oséias': false,
    'Joel': false,
    'Amós': false,
    'Obadias': false,
    'Jonas': false,
    'Miquéias': false,
    'Naum': false,
    'Habacuque': false,
    'Sofonias': false,
    'Ageu': false,
    'Zacarias': false,
    'Malaquias': false,
    'Mateus': false,
    'Marcos': false,
    'Lucas': false,
    'Evangelho de João': false,
    'Atos': false,
    'Romanos': false,
    '1 Coríntios': false,
    '2 Coríntios': false,
    'Gálatas': false,
    'Efésios': false,
    'Filipenses': false,
    'Colossenses': false,
    '1Tessalonicenses': false,
    '2Tessalonicenses': false,
    '1 Timóteo': false,
    '2 Timóteo': false,
    'Tito': false,
    'Filemom': false,
    'Hebreus': false,
    'Tiago': false,
    '1 Pedro': false,
    '2 Pedro': false,
    '1 João': false,
    '2 João': false,
    '3 João': false,
    'Judas': false,
    'Apocalipse': false,
  };

  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  @override
  void initState() {
    super.initState();
    _initIsSelectIcon();
  }

  Future<void> _initIsSelectIcon() async {
    if (widget.nameBooks != null) {
      final SharedPreferences prefs = await _prefs;

      bool? isSelectButtonBook = prefs.getBool(
        'isSelectButtonBook${widget.nameBank}${widget.nameBook}-${widget.nameBooks!['number']}',
      );
      if (isSelectButtonBook != null) {
        setState(() {
          booleanBooksMap[widget.nameBooks!['nameBook']] = isSelectButtonBook;
        });
      }
    }
  }

  Future<void> _toggleIsSelectIcon() async {
    if (widget.nameBooks != null) {
      final SharedPreferences prefs = await _prefs;
      bool success = await prefs.setBool(
        'isSelectButtonBook${widget.nameBank}${widget.nameBook}-${widget.nameBooks!['number']}',
        !booleanBooksMap[widget.nameBooks!['nameBook']]!,
      );
      if (success) {
        setState(() {
          booleanBooksMap[widget.nameBooks!['nameBook']] =
              !booleanBooksMap[widget.nameBooks!['nameBook']]!;
        });
      }
    }
  }

  bool booleanBooks() {
    if (widget.nameBooks != null) {
      return booleanBooksMap[widget.nameBooks!['nameBook']] ?? false;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:
          booksGameModel(widget.nameBooks!['nameBook']).isEmpty ||
              EasyLocalization.of(context)?.currentLocale?.countryCode ==
                      'US' &&
                  widget.nameBooks!['nameBook'].toString() != 'Gênesis' &&
                  widget.nameBooks!['nameBook'].toString() != 'Êxodo' &&
                  widget.nameBooks!['nameBook'].toString() != 'Levítico'
          ? () {
              final snackBar = SnackBar(
                /// need to set following properties for best effect of awesome_snackbar_content
                elevation: 0,
                behavior: SnackBarBehavior.floating,
                duration: const Duration(seconds: 10),
                backgroundColor: Colors.transparent,
                width: MediaQuery.of(context).size.width * 2.5,
                content: AwesomeSnackbarContent(
                  color: Colors.orange[500],
                  title: 'Attention'.tr(),

                  message: 'message'.tr(),
                  // messageFontSize:
                  messageTextStyle: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.04,
                  ),

                  /// change contentType to ContentType.success, ContentType.warning or ContentType.help for variants
                  contentType: ContentType.warning,
                ),
              );

              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(snackBar);
            }
          : () {
              Navigator.of(context).pushNamed(
                RoutesBooks().routes[widget.nameBooks!['nameBook']]!,
                arguments: {
                  'nameBooks': widget.nameBooks,
                  'nameBook': widget.nameBook,
                  'nameBank': widget.nameBank,
                  'genesis': widget.genesis,
                  'exodus': widget.exodus,
                  'leviticus': widget.leviticus,
                  'deuteronomy': widget.deuteronomy,
                  'numbers': widget.numbers,
                  'josue': widget.josue,
                  'judges': widget.judges,
                  'ruth': widget.ruth,
                  'samuel1': widget.samuel1,
                  'samuel2': widget.samuel2,
                  'kings1': widget.kings1,
                  'kings2': widget.kings2,
                  'chronicles1': widget.chronicles1,
                  'chronicles2': widget.chronicles2,
                  'ezra': widget.ezra,
                  'nehemiah': widget.nehemiah,
                  'ester': widget.ester,
                  'job': widget.job,
                  'psalms': widget.psalms,
                  'proverbs': widget.proverbs,
                  'ecclesiastes': widget.ecclesiastes,
                  'songs': widget.songs,
                  'isaiah': widget.isaiah,
                  'jeremiah': widget.jeremiah,
                  'lamentations': widget.lamentations,
                  'ezequiel': widget.ezequiel,
                  'daniel': widget.daniel,
                  'hosea': widget.hosea,
                  'joel': widget.joel,
                  'amos': widget.amos,
                  'obadiah': widget.obadiah,
                  'jonah': widget.jonah,
                  'micah': widget.micah,
                  'no': widget.no,
                  'habakkuk': widget.habakkuk,
                  'zephanies': widget.zephanies,
                  'haggai': widget.haggai,
                  'zechariah': widget.zechariah,
                  'malachi': widget.malachi,
                  'mateus': widget.mateus,
                  'frames': widget.frames,
                  'lucas': widget.lucas,
                  'john': widget.john,
                  'acts': widget.acts,
                  'romans': widget.romans,
                  'corinthians1': widget.corinthians1,
                  'corinthians2': widget.corinthians2,
                  'galatians': widget.galatians,
                  'ephesians': widget.ephesians,
                  'philippians': widget.philippians,
                  'colossians': widget.colossians,
                  'thessalonians1': widget.thessalonians1,
                  'thessalonians2': widget.thessalonians2,
                  'timothy1': widget.timothy1,
                  'timothy2': widget.timothy2,
                  'tito': widget.tito,
                  'philemon': widget.philemon,
                  'hebrews': widget.hebrews,
                  'tiago': widget.tiago,
                  'peter1': widget.peter1,
                  'peter2': widget.peter2,
                  'john1': widget.john1,
                  'john2': widget.john2,
                  'john3': widget.john3,
                  'judas': widget.judas,
                  'apocalypse': widget.apocalypse,
                },
              );

              _toggleIsSelectIcon();
            },
      child: Container(
        padding: const EdgeInsets.all(6),
        decoration: booleanBooks()
            ? const BoxDecoration()
            : BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color:
                    booksGameModel(widget.nameBooks!['nameBook']).isEmpty ||
                        EasyLocalization.of(
                                  context,
                                )?.currentLocale?.countryCode ==
                                'US' &&
                            widget.nameBooks!['nameBook'].toString() !=
                                'Gênesis' &&
                            widget.nameBooks!['nameBook'].toString() !=
                                'Êxodo' &&
                            widget.nameBooks!['nameBook'].toString() !=
                                'Levítico'
                    ? Colors.grey.withValues(alpha: 0.5)
                    : Provider.of<ThemeChanger>(context).themeType ==
                          AppTheme.light
                    ? Colors.brown.withValues(alpha: 0.5)
                    : Colors.white24,
                border:
                    booksGameModel(widget.nameBooks!['nameBook']).isEmpty ||
                        EasyLocalization.of(
                                  context,
                                )?.currentLocale?.countryCode ==
                                'US' &&
                            widget.nameBooks!['nameBook'] != 'Gênesis' &&
                            widget.nameBooks!['nameBook'] != 'Êxodo' &&
                            widget.nameBooks!['nameBook'] != 'Levítico'
                    ? Border.all(
                        color: Colors.black.withValues(alpha: 0.5),
                        width: 1.0,
                      )
                    : const Border(
                        top: BorderSide(
                          //                    <--- top side
                          color: Colors.white,
                          width: 5.0,
                        ),
                        left: BorderSide(color: Colors.white, width: 5.0),
                        bottom: BorderSide(
                          //                    <--- bottom side
                          color: Colors.white,
                          width: 5.0,
                        ),
                        right: BorderSide(
                          //                    <--- right side
                          color: Colors.white,
                          width: 5.0,
                        ),
                      ),
              ),
        child: Text(
          widget.nameBooks!['nameBook'] == 'Gênesis'
              ? 'Genesis'.tr()
              : widget.nameBooks!['nameBook'] == 'Êxodo'
              ? 'Exodus'.tr()
              : widget.nameBooks!['nameBook'] == 'Levítico'
              ? 'Leviticus'.tr()
              : widget.text ?? widget.nameBooks!['nameBook'],
          style: const TextStyle(
            color: Colors.white,
            fontFamily: 'FredokaOne',
            fontSize: 25,
            shadows: [
              Shadow(
                blurRadius: 7.0,
                color: Colors.black,
                offset: Offset(1.0, 1.0),
              ),
            ],
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
