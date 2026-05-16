import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:custom_timer/custom_timer.dart';

import 'package:quiz_biblico_5/models/variables_game_model.dart';
import 'package:quiz_biblico_5/screens/level_game/sub_screens/questions_level_medium/widgets/options_level_medium/option_a_level_medium.dart';
import 'package:quiz_biblico_5/screens/level_game/sub_screens/questions_level_medium/widgets/options_level_medium/option_b_level_medium.dart';
import 'package:quiz_biblico_5/screens/level_game/sub_screens/questions_level_medium/widgets/options_level_medium/option_c_level_medium.dart';
import 'package:quiz_biblico_5/shared/app_bar_default/app_bar_default.dart';
import 'package:quiz_biblico_5/utils/app_routes.dart';
import 'package:quiz_biblico_5/widgets/text_question.dart';
import 'package:quiz_biblico_5/widgets/text_value_score.dart';

class QuestionsLevelMedium extends StatefulWidget {
  const QuestionsLevelMedium({super.key});

  @override
  State<QuestionsLevelMedium> createState() => _QuestionsLevelMediumState();
}

class _QuestionsLevelMediumState extends State<QuestionsLevelMedium>
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
    final medium =
        ModalRoute.of(context)!.settings.arguments as VariablesGameModel;

    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(55.0),
          child: AppBarDefault(
            text: '${'question'.tr()} ${medium.id}',
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
                onPressed: () async => await _speak(
                  "${medium.question!.substring(3)}."
                  "${'alternativeA'.tr()} ${medium.alternatives1!.substring(2)}."
                  "${'alternativeB'.tr()} ${medium.alternatives2!.substring(2)}."
                  "${'alternativeC'.tr()} ${medium.alternatives3!.substring(2)}.",
                  context,
                ),
                icon: const Icon(Icons.volume_up),
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
                child: Column(
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
                                  padding: const EdgeInsets.only(bottom: 2.0),
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
                    TextQuestion(textQuestion: medium.question!),
                    const SizedBox(height: 5.0),
                    OptionALevelMedium(
                      onTap: () {
                        if (medium.alternatives1Imagem! ==
                            'images/balloons.png') {
                          enviarRanking(10);
                        } else if (medium.response1 ==
                            'Você Perdeu 2 Pontos!') {
                          enviarRanking(-2);
                        } else if (medium.response1 ==
                            'Você Perdeu 5 Pontos!') {
                          enviarRanking(-5);
                        }
                        Navigator.of(context).pushReplacementNamed(
                          AppRoutes.alternative1LevelMedium, //ALTERNATIVA1,
                          arguments: medium,
                        );
                      },
                      medium: medium,
                    ),
                    const SizedBox(height: 5.0),
                    OptionBLevelMedium(
                      onTap: () {
                        if (medium.alternatives2Imagem! ==
                            'images/balloons.png') {
                          enviarRanking(10);
                        } else if (medium.response2 ==
                            'Você Perdeu 2 Pontos!') {
                          enviarRanking(-2);
                        } else if (medium.response2 ==
                            'Você Perdeu 5 Pontos!') {
                          enviarRanking(-5);
                        }
                        Navigator.of(context).pushReplacementNamed(
                          AppRoutes.alternative2LevelMedium, //ALTERNATIVA2,
                          arguments: medium,
                        );
                      },
                      medium: medium,
                    ),
                    const SizedBox(height: 5.0),
                    OptionCLevelMedium(
                      onTap: () {
                        if (medium.alternatives3Imagem! ==
                            'images/balloons.png') {
                          enviarRanking(10);
                        } else if (medium.response3 ==
                            'Você Perdeu 2 Pontos!') {
                          enviarRanking(-2);
                        } else if (medium.response3 ==
                            'Você Perdeu 5 Pontos!') {
                          enviarRanking(-5);
                        }
                        Navigator.of(context).pushReplacementNamed(
                          AppRoutes.alternative3LevelMedium, //ALTERNATIVA3,
                          arguments: medium,
                        );
                      },
                      medium: medium,
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
    );
  }

  Future<void> _speak(String text, BuildContext context) async {
    final countryCode = EasyLocalization.of(
      context,
    )?.currentLocale?.countryCode;

    if (kDebugMode) {
      print(countryCode);
    }

    await flutterTts.setLanguage(countryCode == 'US' ? 'en-US' : 'pt-BR');

    await flutterTts.setVolume(1.0);

    await flutterTts.speak(text);
  }

  Future<void> enviarRanking(int pontosGanhos) async {
    final user = FirebaseAuth.instance.currentUser;
    if (user == null) return;

    try {
      final userDoc = await FirebaseFirestore.instance
          .collection('users')
          .doc(user.uid)
          .get();

      if (!userDoc.exists) return;

      final userData = userDoc.data();

      // /// 🔥 1️⃣ envia mensagem no chat de ranking
      // await FirebaseFirestore.instance.collection('ranking_messages').add({
      //   'text': '🏆 ganhou $pontosGanhos pontos no ranking!',
      //   'uid': user.uid,
      //   'name': userData?['name'],
      //   'photoUrl': userData?['photoUrl'],
      //   'createdAt': FieldValue.serverTimestamp(),
      //   'points': pontosGanhos,
      //   'type': 'ranking',
      // });

      /// 🔥 2️⃣ soma pontos no ranking real
      final rankingRef = FirebaseFirestore.instance
          .collection('ranking')
          .doc(user.uid);

      await FirebaseFirestore.instance.runTransaction((transaction) async {
        final snapshot = await transaction.get(rankingRef);

        int pontosAtuais = 0;
        if (snapshot.exists) {
          pontosAtuais = snapshot.data()?['points'] ?? 0;
        }

        transaction.set(rankingRef, {
          'uid': user.uid,
          'name': userData?['name'],
          'photoUrl': userData?['photoUrl'],
          'points': pontosAtuais + pontosGanhos,
          'updatedAt': FieldValue.serverTimestamp(),
        }, SetOptions(merge: true));
      });
    } catch (e) {
      debugPrint("Erro ao enviar ranking: $e");
    }
  }
}
