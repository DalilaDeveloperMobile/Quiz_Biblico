import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:custom_timer/custom_timer.dart';

import 'package:quiz_biblico_5/models/variables_game_model.dart';
import 'package:quiz_biblico_5/screens/book_game/widgets/option_book/option_a_book.dart';
import 'package:quiz_biblico_5/screens/book_game/widgets/option_book/option_b_book.dart';
import 'package:quiz_biblico_5/screens/book_game/widgets/option_book/option_c_book.dart';
import 'package:quiz_biblico_5/shared/app_bar_default/app_bar_default.dart';
import 'package:quiz_biblico_5/widgets/text_question.dart';
import 'package:quiz_biblico_5/widgets/text_value_score.dart';

class QuestionsBooks extends StatefulWidget {
  const QuestionsBooks({super.key});

  @override
  State<QuestionsBooks> createState() => _QuestionsBooksState();
}

class _QuestionsBooksState extends State<QuestionsBooks>
    with SingleTickerProviderStateMixin {
  FlutterTts flutterTts = FlutterTts();

  late final CustomTimerController _controller;

  bool _isTimerVisible = false;

  bool _isTimerPauseOrPlay = false;

  @override
  void initState() {
    super.initState();

    _controller = CustomTimerController(
      vsync: this,
      begin: const Duration(seconds: 0),
      end: const Duration(seconds: 25),
      initialState: CustomTimerState.reset,
      interval: CustomTimerInterval.milliseconds,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    flutterTts.stop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    VariablesGameModel books = args['books'];
    String nameBook = args['nameBook'];

    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(55.0),
          child: AppBarDefault(
            text: '${'question'.tr()} ${books.id}',
            fontFamily: 'Times New Roman',
            actions: [
              IconButton(
                icon: Icon(
                  _isTimerPauseOrPlay ? Icons.pause : Icons.play_arrow,
                ),
                onPressed: () {
                  setState(() {
                    _isTimerPauseOrPlay = !_isTimerPauseOrPlay;
                    if (_isTimerPauseOrPlay) {
                      _controller.start();
                    } else {
                      _controller.pause();
                    }
                    _isTimerVisible = true;
                  });
                },
              ),
              IconButton(
                onPressed:
                    () async => await _speak(
                      "${books.question!.substring(3)}."
                      "${'alternativeA'.tr()} ${books.alternatives1!.substring(2)}."
                      "${'alternativeB'.tr()} ${books.alternatives2!.substring(2)}."
                      "${'alternativeC'.tr()} ${books.alternatives3!.substring(2)}.",
                      context,
                    ),
                icon: const Icon(Icons.volume_up),
              ),
            ],
          ),
        ),
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: viewportConstraints.maxHeight,
                  minWidth: viewportConstraints.maxWidth,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Theme.of(context).secondaryHeaderColor,
                        Theme.of(context).primaryColor,
                        Theme.of(context).secondaryHeaderColor,
                      ],
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      _isTimerVisible
                          ? InkWell(
                            onTap: () {
                              setState(() {
                                _isTimerVisible = !_isTimerVisible;
                              });
                            },
                            child: CustomTimer(
                              controller: _controller,
                              builder: (state, remaining) {
                                return Container(
                                  padding: const EdgeInsets.only(bottom: 2.0),
                                  alignment: Alignment.center,
                                  width: double.infinity,
                                  height: 30,
                                  color: Colors.red.shade300,
                                  child: Text(
                                    "${remaining.hours}:${remaining.minutes}:${remaining.seconds}.${remaining.milliseconds}",
                                    style: Theme.of(
                                      context,
                                    ).appBarTheme.titleTextStyle?.copyWith(
                                      fontSize: 20,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                );
                              },
                            ),
                          )
                          : InkWell(
                            onTap: () {
                              setState(() {
                                _isTimerVisible = !_isTimerVisible;
                                _controller.reset();
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.only(bottom: 2.0),
                              alignment: Alignment.center,
                              width: double.infinity,
                              height: 30,
                              color: Colors.red.shade300,
                              child: Text(
                                'stopwatch25Seconds'.tr(),
                                style: Theme.of(context)
                                    .appBarTheme
                                    .titleTextStyle
                                    ?.copyWith(fontSize: 20),
                              ),
                            ),
                          ),
                      TextQuestion(textQuestion: books.question!),
                      const SizedBox(height: 3.0),
                      OptionABook(nameBook: nameBook, book: books),
                      const SizedBox(height: 3.0),
                      OptionBBook(nameBook: nameBook, book: books),
                      const SizedBox(height: 3.0),
                      OptionCBook(nameBook: nameBook, book: books),
                      const SizedBox(height: 3.0),
                      const TextValueScore(),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Future<void> _speak(String text, BuildContext context) async {
    final countryCode =
        EasyLocalization.of(context)?.currentLocale?.countryCode;

    if (kDebugMode) {
      print(countryCode);
    }

    await flutterTts.setLanguage(countryCode == 'US' ? 'en-US' : 'pt-BR');

    await flutterTts.setVolume(1.0);

    await flutterTts.speak(text);
  }
}
