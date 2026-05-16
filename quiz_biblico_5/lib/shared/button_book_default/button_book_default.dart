import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_biblico_5/data/mock_game_data.dart';
import 'package:quiz_biblico_5/models/variables_game_model.dart';
import 'package:quiz_biblico_5/provider/theme_changer.dart';

import 'package:quiz_biblico_5/utils/routes_books.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ButtonBookDefault extends StatefulWidget {
  final Function()? onTap;
  final String? text;
  final MapEntry<String, int>? nameBooks;

  const ButtonBookDefault({super.key, this.onTap, this.text, this.nameBooks});

  @override
  State<ButtonBookDefault> createState() => _ButtonBookDefaultState();
}

class _ButtonBookDefaultState extends State<ButtonBookDefault> {
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
        'isSelectButtonBook${widget.nameBooks!.value}',
      );
      if (isSelectButtonBook != null) {
        setState(() {
          booleanBooksMap[widget.nameBooks!.key] = isSelectButtonBook;
        });
      }
    }
  }

  Future<void> _toggleIsSelectIcon() async {
    if (widget.nameBooks != null) {
      final SharedPreferences prefs = await _prefs;
      bool success = await prefs.setBool(
        'isSelectButtonBook${widget.nameBooks!.value}',
        !booleanBooksMap[widget.nameBooks!.key]!,
      );
      if (success) {
        setState(() {
          booleanBooksMap[widget.nameBooks!.key] =
              !booleanBooksMap[widget.nameBooks!.key]!;
        });
      }
    }
  }

  bool booleanBooks() {
    if (widget.nameBooks != null) {
      return booleanBooksMap[widget.nameBooks!.key] ?? false;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:
          booksGameModel(widget.nameBooks!.key).isEmpty ||
                  EasyLocalization.of(context)?.currentLocale?.countryCode ==
                          'US' &&
                      widget.nameBooks!.key.toString() != 'Gênesis' &&
                      widget.nameBooks!.key.toString() != 'Êxodo' &&
                      widget.nameBooks!.key.toString() != 'Levítico'
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
                  RoutesBooks().routes[widget.nameBooks!.key]!,
                  arguments: widget.nameBooks,
                );

                _toggleIsSelectIcon();
              },
      child: Container(
        padding: const EdgeInsets.all(6),
        decoration:
            booleanBooks()
                ? const BoxDecoration()
                : BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color:
                      booksGameModel(widget.nameBooks!.key).isEmpty ||
                              EasyLocalization.of(
                                        context,
                                      )?.currentLocale?.countryCode ==
                                      'US' &&
                                  widget.nameBooks!.key.toString() !=
                                      'Gênesis' &&
                                  widget.nameBooks!.key.toString() != 'Êxodo' &&
                                  widget.nameBooks!.key.toString() != 'Levítico'
                          ? Colors.grey.withValues(alpha: 0.5)
                          : Provider.of<ThemeChanger>(context).themeType ==
                              AppTheme.light
                          ? Colors.brown.withValues(alpha: 0.5)
                          : Colors.white24,
                  border:
                      booksGameModel(widget.nameBooks!.key).isEmpty ||
                              EasyLocalization.of(
                                        context,
                                      )?.currentLocale?.countryCode ==
                                      'US' &&
                                  widget.nameBooks!.key.toString() !=
                                      'Gênesis' &&
                                  widget.nameBooks!.key.toString() != 'Êxodo' &&
                                  widget.nameBooks!.key.toString() != 'Levítico'
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
          widget.nameBooks!.key.toString() == 'Gênesis'
              ? 'Genesis'.tr()
              : widget.nameBooks!.key.toString() == 'Êxodo'
              ? 'Exodus'.tr()
              : widget.nameBooks!.key.toString() == 'Levítico'
              ? 'Leviticus'.tr()
              : widget.text ?? widget.nameBooks!.key,
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
