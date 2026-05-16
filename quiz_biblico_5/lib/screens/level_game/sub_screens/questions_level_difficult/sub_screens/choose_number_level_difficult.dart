import 'package:custom_timer/custom_timer.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
// import 'package:lottie/lottie.dart';
import 'package:quiz_biblico_5/data/mock_levels_game_data/mock_level_difficult_game_data.dart';
import 'package:quiz_biblico_5/models/variables_game_model.dart';
import 'package:quiz_biblico_5/screens/level_game/sub_screens/questions_level_difficult/widgets/grid_level_difficult.dart';
import 'package:quiz_biblico_5/shared/app_bar_default/app_bar_default.dart';
import 'package:quiz_biblico_5/utils/app_routes.dart';
import 'package:quiz_biblico_5/utils/preferences_manager.dart';
import 'package:quiz_biblico_5/widgets/text_question.dart';
import 'package:quiz_biblico_5/widgets/text_value_score.dart';

import '../widgets/options_level_difficult/option_a_level_difficult.dart';
import '../widgets/options_level_difficult/option_b_level_difficult.dart';
import '../widgets/options_level_difficult/option_c_level_difficult.dart';

class ChooseNumberLevelDifficult extends StatefulWidget {
  const ChooseNumberLevelDifficult({super.key});

  @override
  State<ChooseNumberLevelDifficult> createState() =>
      _ChooseNumberLevelDifficultState();
}

class _ChooseNumberLevelDifficultState
    extends State<ChooseNumberLevelDifficult> {
  int currentQuestionIndexDifficult = 0;
  bool isFinishedDifficult = false;

  @override
  void initState() {
    super.initState();
    _loadCurrentQuestionDifficult();
  }

  Future<void> _loadCurrentQuestionDifficult() async {
    await PreferencesManager.instance.loadPreferences();
    setState(() {
      currentQuestionIndexDifficult =
          PreferencesManager.instance.currentQuestionIndexDifficult;
      isFinishedDifficult = PreferencesManager.instance.isFinishedDifficult;
    });
  }

  void nextQuestion() {
    setState(() {
      if (currentQuestionIndexDifficult <
          DifficultGameMock().difficult.length - 1) {
        currentQuestionIndexDifficult++;
        PreferencesManager.instance.currentQuestionIndexDifficult =
            currentQuestionIndexDifficult; // Salvar o índice
      } else {
        isFinishedDifficult = true;
        PreferencesManager.instance.isFinishedDifficult =
            true; // Salvar que terminou
      }
    });
  }

  Future<void> resetProgressDifficult() async {
    await PreferencesManager.instance.resetProgressDifficult();
    setState(() {
      currentQuestionIndexDifficult = 0;
      isFinishedDifficult = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return PreferencesManager.instance.isDirectQuestionMode
        ? SafeArea(
          child: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(55.0),
              child: AppBarDefault(text: 'pickAnumber'.tr()),
            ),
            body: GridLevelDifficult(),
          ),
        )
        : isFinishedDifficult
        ? SafeArea(
          child: Scaffold(
            body: LayoutBuilder(
              builder: (ctx, constraints) {
                return Container(
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
                  child: Center(
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        // Lottie.asset(
                        //   'assets/congrats_animation.json', // Adicione uma animação JSON
                        //   width: 700,
                        //   height: 700,
                        //   fit: BoxFit.contain,
                        // ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: const EdgeInsets.all(8.0),
                              padding: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                color: Colors.brown.withValues(alpha: 0.5),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Text(
                                'congratulationsHard'.tr(),
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'FredokaOne',
                                  fontSize: 25, //constraints!.maxHeight * 0.06,
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
                            ListTile(
                              title: Container(
                                decoration: BoxDecoration(
                                  color: Colors.red.withValues(alpha: 0.5),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: Text(
                                  'resetIssues'.tr(),
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'FredokaOne',
                                    fontSize:
                                        25, //constraints!.maxHeight * 0.06,
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
                              onTap: () async {
                                await resetProgressDifficult();
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        )
        : DifficultQuestions(
          nextQuestion: nextQuestion,
          difficultQuestionsModel:
              DifficultGameMock().difficult[currentQuestionIndexDifficult],
        );
  }
}

class DifficultQuestions extends StatefulWidget {
  final VariablesGameModel? difficultQuestionsModel;
  final Function()? nextQuestion;

  const DifficultQuestions({
    super.key,
    this.difficultQuestionsModel,
    this.nextQuestion,
  });

  @override
  State<DifficultQuestions> createState() => _DifficultQuestionsState();
}

class _DifficultQuestionsState extends State<DifficultQuestions>
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
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(55.0),
          child: AppBarDefault(
            text: '${'question'.tr()} ${widget.difficultQuestionsModel?.id}',
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
                      "${widget.difficultQuestionsModel?.question!.substring(3)}."
                      "${'alternativeA'.tr()} ${widget.difficultQuestionsModel?.alternatives1!.substring(2)}."
                      "${'alternativeB'.tr()} ${widget.difficultQuestionsModel?.alternatives2!.substring(2)}."
                      "${'alternativeC'.tr()} ${widget.difficultQuestionsModel?.alternatives3!.substring(2)}.",
                      context,
                    ),
                icon: const Icon(Icons.volume_up),
              ),
              IconButton(
                onPressed: widget.nextQuestion,
                icon: const Icon(Icons.arrow_forward),
              ),
            ],
          ),
        ),
        body: LayoutBuilder(
          builder: (ctx, constraints) {
            return Container(
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
              child: Center(
                child: DefaultTextStyle(
                  style: Theme.of(context).textTheme.bodyMedium!,
                  child: LayoutBuilder(
                    builder: (
                      BuildContext context,
                      BoxConstraints viewportConstraints,
                    ) {
                      return SingleChildScrollView(
                        child: ConstrainedBox(
                          constraints: BoxConstraints(
                            minHeight: viewportConstraints.maxHeight,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
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
                                          padding: const EdgeInsets.only(
                                            bottom: 2.0,
                                          ),
                                          alignment: Alignment.center,
                                          width: double.infinity,
                                          height: 30,
                                          color: Colors.red.shade300,
                                          child: Text(
                                            "${remaining.hours}:${remaining.minutes}:${remaining.seconds}.${remaining.milliseconds}",
                                            style: Theme.of(context)
                                                .appBarTheme
                                                .titleTextStyle
                                                ?.copyWith(
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
                                      padding: const EdgeInsets.only(
                                        bottom: 2.0,
                                      ),
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
                              TextQuestion(
                                textQuestion:
                                    widget.difficultQuestionsModel!.question!,
                              ),
                              const SizedBox(height: 5.0),
                              OptionALevelDifficult(
                                onTap: () {
                                  Navigator.of(context).pushNamed(
                                    AppRoutes.alternative1LevelDifficult,
                                    arguments: widget.difficultQuestionsModel!,
                                  );
                                },
                                difficult: widget.difficultQuestionsModel!,
                              ),
                              const SizedBox(height: 5.0),
                              OptionBLevelDifficult(
                                onTap: () {
                                  Navigator.of(context).pushNamed(
                                    AppRoutes.alternative2LevelDifficult,
                                    arguments: widget.difficultQuestionsModel!,
                                  );
                                },
                                difficult: widget.difficultQuestionsModel!,
                              ),
                              const SizedBox(height: 5.0),
                              OptionCLevelDifficult(
                                onTap: () {
                                  Navigator.of(context).pushNamed(
                                    AppRoutes
                                        .alternative3LevelDifficult, //ALTERNATIVA3,
                                    arguments: widget.difficultQuestionsModel!,
                                  );
                                },
                                difficult: widget.difficultQuestionsModel!,
                              ),
                              const SizedBox(height: 8.0),
                              const TextValueScore(),
                            ],
                          ),
                        ),
                      );
                    },
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
