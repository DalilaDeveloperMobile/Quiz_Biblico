import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart' show DefaultCupertinoLocalizations;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:provider/provider.dart';
import 'package:quiz_biblico_5/provider/theme_changer.dart';
import 'package:quiz_biblico_5/screens/book_game/sub_screens/choose_number_books.dart';
import 'package:quiz_biblico_5/screens/level_game/sub_screens/questions_level_difficult/questions_level_difficult.dart';
import 'package:quiz_biblico_5/screens/level_game/sub_screens/questions_level_difficult/sub_screens/answer_a_level_difficult/answer_a_level_difficult.dart';
import 'package:quiz_biblico_5/screens/level_game/sub_screens/questions_level_difficult/sub_screens/answer_b_level_difficult/answer_b_level_difficult.dart';
import 'package:quiz_biblico_5/screens/level_game/sub_screens/questions_level_difficult/sub_screens/answer_c_level_difficult/answer_c_level_difficult.dart';
import 'package:quiz_biblico_5/screens/level_game/sub_screens/questions_level_difficult/sub_screens/choose_number_level_difficult.dart';

import 'package:quiz_biblico_5/screens/level_game/sub_screens/questions_level_easy/questions_level_easy.dart';
import 'package:quiz_biblico_5/screens/level_game/sub_screens/questions_level_easy/sub_screens/answer_b_level_easy/answer_b_level_easy.dart';
import 'package:quiz_biblico_5/screens/level_game/sub_screens/questions_level_easy/sub_screens/answer_a_level_easy/answer_a_level_easy.dart';
import 'package:quiz_biblico_5/screens/level_game/sub_screens/questions_level_easy/sub_screens/answer_c_level_easy/answer_c_level_easy.dart';
import 'package:quiz_biblico_5/screens/level_game/sub_screens/questions_level_easy/sub_screens/choose_number_level_easy.dart';
import 'package:quiz_biblico_5/screens/level_game/sub_screens/questions_level_medium/questions_level_medium.dart';
import 'package:quiz_biblico_5/screens/level_game/sub_screens/questions_level_medium/sub_screens/answer_a_level_medium/answer_a_level_medium.dart';
import 'package:quiz_biblico_5/screens/level_game/sub_screens/questions_level_medium/sub_screens/answer_b_level_medium/answer_b_level_medium.dart';
import 'package:quiz_biblico_5/screens/level_game/sub_screens/questions_level_medium/sub_screens/answer_c_level_medium/answer_c_level_medium.dart';
import 'package:quiz_biblico_5/screens/level_game/sub_screens/questions_level_medium/sub_screens/choose_number_level_medium.dart';

import 'package:quiz_biblico_5/screens/random_game/sub_screens/random_questions/random_questions.dart';
import 'package:quiz_biblico_5/screens/random_game/sub_screens/random_answer/random_answer_a/random_answer_a.dart';
import 'package:quiz_biblico_5/screens/random_game/sub_screens/random_answer/random_answer_b/random_answer_b.dart';
import 'package:quiz_biblico_5/screens/random_game/sub_screens/random_answer/random_answer_c/random_answer_c.dart';

import 'package:quiz_biblico_5/shared/navigation_bar_default/navigation_bar_default.dart';
import 'package:quiz_biblico_5/utils/preferences_manager.dart';

import 'screens/book_game/sub_screens/answer_a_book/answer_a_book.dart';
import 'screens/book_game/sub_screens/answer_b_book/answer_b_book.dart';
import 'screens/book_game/sub_screens/answer_c_book/answer_c_book.dart';
import 'screens/book_game/sub_screens/questions_books.dart';
import 'utils/app_routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await PreferencesManager.instance.loadPreferences();
  await EasyLocalization.ensureInitialized();
  MobileAds.instance.initialize();
  await Firebase.initializeApp();

  // 🔐 LOGIN ANÔNIMO (executa só se não tiver usuário)
  if (FirebaseAuth.instance.currentUser == null) {
    await FirebaseAuth.instance.signInAnonymously();
  }

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  final themeChanger = ThemeChanger(); // construtor já carrega o tema
  await themeChanger
      .loadThemeFromPrefs(); // opcional, pode ser movido pro construtor
  runApp(
    EasyLocalization(
      supportedLocales: [Locale('pt', 'BR'), Locale('en', 'US')],
      path:
          'assets/translations', // pasta onde estão seus arquivos .json ou .arb
      fallbackLocale: Locale('pt', 'BR'),
      child: ChangeNotifierProvider<ThemeChanger>.value(
        value: themeChanger,
        child: const MyApp(),
      ),
    ),
  );

  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.dark,
      statusBarColor: Colors.red.shade300, // Color(0xFFF8C78F),
      systemNavigationBarColor: Colors.red.shade300, //Color(0xFFF8C78F),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static FirebaseAnalytics analytics = FirebaseAnalytics.instance;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorObservers: [FirebaseAnalyticsObserver(analytics: analytics)],
      key: ValueKey(context.locale.toString()),
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        ...context.localizationDelegates,
        DefaultMaterialLocalizations.delegate,
        DefaultWidgetsLocalizations.delegate,
        DefaultCupertinoLocalizations.delegate,
      ],
      //localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'Quiz Bíblico',
      theme: Provider.of<ThemeChanger>(context).themeData,
      // theme: ThemeData(
      //   fontFamily: 'Quicksand',
      // ),
      routes: {
        AppRoutes.home: (ctx) => const NavigationBarDefault(),
        // Routes Random
        AppRoutes.questionsRandom: (ctx) => const RandomQuestions(),
        AppRoutes.alternative1Random: (ctx) => const RandomAnswerA(),
        AppRoutes.alternative2Random: (ctx) => const RandomAnswerB(),
        AppRoutes.alternative3Random: (ctx) => const RandomAnswerC(),
        // Routes Level Easy
        AppRoutes.levelEasy: (ctx) => const ChooseNumberLevelEasy(),
        AppRoutes.questionsLevelEasy: (ctx) => const QuestionsLevelEasy(),
        AppRoutes.alternative1LevelEasy: (ctx) => const AnswerALevelEasy(),
        AppRoutes.alternative2LevelEasy: (ctx) => const AnswerBLevelEasy(),
        AppRoutes.alternative3LevelEasy: (ctx) => const AnswerCLevelEasy(),
        // Routes Level Medium
        AppRoutes.levelMedium: (ctx) => const ChooseNumberLevelMedium(),
        AppRoutes.questionsLevelMedium: (ctx) => const QuestionsLevelMedium(),
        AppRoutes.alternative1LevelMedium: (ctx) => const AnswerALevelMedium(),
        AppRoutes.alternative2LevelMedium: (ctx) => const AnswerBLevelMedium(),
        AppRoutes.alternative3LevelMedium: (ctx) => const AnswerCLevelMedium(),
        // Routes Level Difficult
        AppRoutes.levelDifficult: (ctx) => const ChooseNumberLevelDifficult(),
        AppRoutes.questionsLevelDifficult:
            (ctx) => const QuestionsLevelDifficult(),
        AppRoutes.alternative1LevelDifficult:
            (ctx) => const AnswerALevelDifficult(),
        AppRoutes.alternative2LevelDifficult:
            (ctx) => const AnswerBLevelDifficult(),
        AppRoutes.alternative3LevelDifficult:
            (ctx) => const AnswerCLevelDifficult(),
        // Routes Books
        // Routes Book Genesis
        AppRoutes.bookGenesis: (ctx) => const ChooseNumberBooks(),
        AppRoutes.questionsBookGenesis: (ctx) => const QuestionsBooks(),
        AppRoutes.alternative1BookGenesis: (ctx) => const AnswerABook(),
        AppRoutes.alternative2BookGenesis: (ctx) => const AnswerBBook(),
        AppRoutes.alternative3BookGenesis: (ctx) => const AnswerCBook(),
        // Routes Book Exodus
        AppRoutes.bookExodus: (ctx) => const ChooseNumberBooks(),
        AppRoutes.questionsBookExodus: (ctx) => const QuestionsBooks(),
        AppRoutes.alternative1BookExodus: (ctx) => const AnswerABook(),
        AppRoutes.alternative2BookExodus: (ctx) => const AnswerBBook(),
        AppRoutes.alternative3BookExodus: (ctx) => const AnswerCBook(),
        // Routes Book Leviticus
        AppRoutes.bookLeviticus: (ctx) => const ChooseNumberBooks(),
        AppRoutes.questionsBookLeviticus: (ctx) => const QuestionsBooks(),
        AppRoutes.alternative1BookLeviticus: (ctx) => const AnswerABook(),
        AppRoutes.alternative2BookLeviticus: (ctx) => const AnswerBBook(),
        AppRoutes.alternative3BookLeviticus: (ctx) => const AnswerCBook(),
        // Routes Book Numbers
        AppRoutes.bookNumbers: (ctx) => const ChooseNumberBooks(),
        AppRoutes.questionsBookNumbers: (ctx) => const QuestionsBooks(),
        AppRoutes.alternative1BookNumbers: (ctx) => const AnswerABook(),
        AppRoutes.alternative2BookNumbers: (ctx) => const AnswerBBook(),
        AppRoutes.alternative3BookNumbers: (ctx) => const AnswerCBook(),
        // Routes Book Deuteronomy
        AppRoutes.bookDeuteronomy: (ctx) => const ChooseNumberBooks(),
        AppRoutes.questionsBookDeuteronomy: (ctx) => const QuestionsBooks(),
        AppRoutes.alternative1BookDeuteronomy: (ctx) => const AnswerABook(),
        AppRoutes.alternative2BookDeuteronomy: (ctx) => const AnswerBBook(),
        AppRoutes.alternative3BookDeuteronomy: (ctx) => const AnswerCBook(),
        // Routes Book Josue
        AppRoutes.bookJosue: (ctx) => const ChooseNumberBooks(),
        AppRoutes.questionsBookJosue: (ctx) => const QuestionsBooks(),
        AppRoutes.alternative1BookJosue: (ctx) => const AnswerABook(),
        AppRoutes.alternative2BookJosue: (ctx) => const AnswerBBook(),
        AppRoutes.alternative3BookJosue: (ctx) => const AnswerCBook(),
        // Routes Book Judges
        AppRoutes.bookJudges: (ctx) => const ChooseNumberBooks(),
        AppRoutes.questionsBookJudges: (ctx) => const QuestionsBooks(),
        AppRoutes.alternative1BookJudges: (ctx) => const AnswerABook(),
        AppRoutes.alternative2BookJudges: (ctx) => const AnswerBBook(),
        AppRoutes.alternative3BookJudges: (ctx) => const AnswerCBook(),
        // Routes Book Ruth
        AppRoutes.bookRuth: (ctx) => const ChooseNumberBooks(),
        AppRoutes.questionsBookRuth: (ctx) => const QuestionsBooks(),
        AppRoutes.alternative1BookRuth: (ctx) => const AnswerABook(),
        AppRoutes.alternative2BookRuth: (ctx) => const AnswerBBook(),
        AppRoutes.alternative3BookRuth: (ctx) => const AnswerCBook(),
        // Routes Book 1Samuel
        AppRoutes.book1Samuel: (ctx) => const ChooseNumberBooks(),
        AppRoutes.questionsBook1Samuel: (ctx) => const QuestionsBooks(),
        AppRoutes.alternative1Book1Samuel: (ctx) => const AnswerABook(),
        AppRoutes.alternative2Book1Samuel: (ctx) => const AnswerBBook(),
        AppRoutes.alternative3Book1Samuel: (ctx) => const AnswerCBook(),
        // Routes Book 2 Samuel
        AppRoutes.book2Samuel: (ctx) => const ChooseNumberBooks(),
        AppRoutes.questionsBook2Samuel: (ctx) => const QuestionsBooks(),
        AppRoutes.alternative1Book2Samuel: (ctx) => const AnswerABook(),
        AppRoutes.alternative2Book2Samuel: (ctx) => const AnswerBBook(),
        AppRoutes.alternative3Book2Samuel: (ctx) => const AnswerCBook(),
        // Routes Book 1 Kings
        AppRoutes.book1Kings: (ctx) => const ChooseNumberBooks(),
        AppRoutes.questionsBook1Kings: (ctx) => const QuestionsBooks(),
        AppRoutes.alternative1Book1Kings: (ctx) => const AnswerABook(),
        AppRoutes.alternative2Book1Kings: (ctx) => const AnswerBBook(),
        AppRoutes.alternative3Book1Kings: (ctx) => const AnswerCBook(),
        // Routes Book 2 Kings
        AppRoutes.book2Kings: (ctx) => const ChooseNumberBooks(),
        AppRoutes.questionsBook2Kings: (ctx) => const QuestionsBooks(),
        AppRoutes.alternative1Book2Kings: (ctx) => const AnswerABook(),
        AppRoutes.alternative2Book2Kings: (ctx) => const AnswerBBook(),
        AppRoutes.alternative3Book2Kings: (ctx) => const AnswerCBook(),
        // Routes Book 1 Chronicles
        AppRoutes.book1Chronicles: (ctx) => const ChooseNumberBooks(),
        AppRoutes.questionsBook1Chronicles: (ctx) => const QuestionsBooks(),
        AppRoutes.alternative1Book1Chronicles: (ctx) => const AnswerABook(),
        AppRoutes.alternative2Book1Chronicles: (ctx) => const AnswerBBook(),
        AppRoutes.alternative3Book1Chronicles: (ctx) => const AnswerCBook(),
        // Routes Book 2 Chronicles
        AppRoutes.book2Chronicles: (ctx) => const ChooseNumberBooks(),
        AppRoutes.questionsBook2Chronicles: (ctx) => const QuestionsBooks(),
        AppRoutes.alternative1Book2Chronicles: (ctx) => const AnswerABook(),
        AppRoutes.alternative2Book2Chronicles: (ctx) => const AnswerBBook(),
        AppRoutes.alternative3Book2Chronicles: (ctx) => const AnswerCBook(),
        // Routes Book Ezra
        AppRoutes.bookEzra: (ctx) => const ChooseNumberBooks(),
        AppRoutes.questionsBookEzra: (ctx) => const QuestionsBooks(),
        AppRoutes.alternative1BookEzra: (ctx) => const AnswerABook(),
        AppRoutes.alternative2BookEzra: (ctx) => const AnswerBBook(),
        AppRoutes.alternative3BookEzra: (ctx) => const AnswerCBook(),
        // Routes Book Nehemiah
        AppRoutes.bookNehemiah: (ctx) => const ChooseNumberBooks(),
        AppRoutes.questionsBookNehemiah: (ctx) => const QuestionsBooks(),
        AppRoutes.alternative1BookNehemiah: (ctx) => const AnswerABook(),
        AppRoutes.alternative2BookNehemiah: (ctx) => const AnswerBBook(),
        AppRoutes.alternative3BookNehemiah: (ctx) => const AnswerCBook(),
        // Routes Book Ester
        AppRoutes.bookEster: (ctx) => const ChooseNumberBooks(),
        AppRoutes.questionsBookEster: (ctx) => const QuestionsBooks(),
        AppRoutes.alternative1BookEster: (ctx) => const AnswerABook(),
        AppRoutes.alternative2BookEster: (ctx) => const AnswerBBook(),
        AppRoutes.alternative3BookEster: (ctx) => const AnswerCBook(),
        // Routes Book Job
        AppRoutes.bookJob: (ctx) => const ChooseNumberBooks(),
        AppRoutes.questionsBookJob: (ctx) => const QuestionsBooks(),
        AppRoutes.alternative1BookJob: (ctx) => const AnswerABook(),
        AppRoutes.alternative2BookJob: (ctx) => const AnswerBBook(),
        AppRoutes.alternative3BookJob: (ctx) => const AnswerCBook(),
        // Routes Book Psalms
        AppRoutes.bookPsalms: (ctx) => const ChooseNumberBooks(),
        AppRoutes.questionsBookPsalms: (ctx) => const QuestionsBooks(),
        AppRoutes.alternative1BookPsalms: (ctx) => const AnswerABook(),
        AppRoutes.alternative2BookPsalms: (ctx) => const AnswerBBook(),
        AppRoutes.alternative3BookPsalms: (ctx) => const AnswerCBook(),
        // Routes Book Proverbs
        AppRoutes.bookProverbs: (ctx) => const ChooseNumberBooks(),
        AppRoutes.questionsBookProverbs: (ctx) => const QuestionsBooks(),
        AppRoutes.alternative1BookProverbs: (ctx) => const AnswerABook(),
        AppRoutes.alternative2BookProverbs: (ctx) => const AnswerBBook(),
        AppRoutes.alternative3BookProverbs: (ctx) => const AnswerCBook(),
        // Routes Book Ecclesiastes
        AppRoutes.bookEcclesiastes: (ctx) => const ChooseNumberBooks(),
        AppRoutes.questionsBookEcclesiastes: (ctx) => const QuestionsBooks(),
        AppRoutes.alternative1BookEcclesiastes: (ctx) => const AnswerABook(),
        AppRoutes.alternative2BookEcclesiastes: (ctx) => const AnswerBBook(),
        AppRoutes.alternative3BookEcclesiastes: (ctx) => const AnswerCBook(),
        // Routes Book Songs
        AppRoutes.bookSongs: (ctx) => const ChooseNumberBooks(),
        AppRoutes.questionsBookSongs: (ctx) => const QuestionsBooks(),
        AppRoutes.alternative1BookSongs: (ctx) => const AnswerABook(),
        AppRoutes.alternative2BookSongs: (ctx) => const AnswerBBook(),
        AppRoutes.alternative3BookSongs: (ctx) => const AnswerCBook(),
        // Routes Book Isaiah
        AppRoutes.bookIsaiah: (ctx) => const ChooseNumberBooks(),
        AppRoutes.questionsBookIsaiah: (ctx) => const QuestionsBooks(),
        AppRoutes.alternative1BookIsaiah: (ctx) => const AnswerABook(),
        AppRoutes.alternative2BookIsaiah: (ctx) => const AnswerBBook(),
        AppRoutes.alternative3BookIsaiah: (ctx) => const AnswerCBook(),
        // Routes Book Jeremiah
        AppRoutes.bookJeremiah: (ctx) => const ChooseNumberBooks(),
        AppRoutes.questionsBookJeremiah: (ctx) => const QuestionsBooks(),
        AppRoutes.alternative1BookJeremiah: (ctx) => const AnswerABook(),
        AppRoutes.alternative2BookJeremiah: (ctx) => const AnswerBBook(),
        AppRoutes.alternative3BookJeremiah: (ctx) => const AnswerCBook(),
        // Routes Book Lamentations
        AppRoutes.bookLamentations: (ctx) => const ChooseNumberBooks(),
        AppRoutes.questionsBookLamentations: (ctx) => const QuestionsBooks(),
        AppRoutes.alternative1BookLamentations: (ctx) => const AnswerABook(),
        AppRoutes.alternative2BookLamentations: (ctx) => const AnswerBBook(),
        AppRoutes.alternative3BookLamentations: (ctx) => const AnswerCBook(),
        // Routes Book Ezequiel
        AppRoutes.bookEzequiel: (ctx) => const ChooseNumberBooks(),
        AppRoutes.questionsBookEzequiel: (ctx) => const QuestionsBooks(),
        AppRoutes.alternative1BookEzequiel: (ctx) => const AnswerABook(),
        AppRoutes.alternative2BookEzequiel: (ctx) => const AnswerBBook(),
        AppRoutes.alternative3BookEzequiel: (ctx) => const AnswerCBook(),
        // Routes Book Daniel
        AppRoutes.bookDaniel: (ctx) => const ChooseNumberBooks(),
        AppRoutes.questionsBookDaniel: (ctx) => const QuestionsBooks(),
        AppRoutes.alternative1BookDaniel: (ctx) => const AnswerABook(),
        AppRoutes.alternative2BookDaniel: (ctx) => const AnswerBBook(),
        AppRoutes.alternative3BookDaniel: (ctx) => const AnswerCBook(),
        // Routes Book Hosea
        AppRoutes.bookHosea: (ctx) => const ChooseNumberBooks(),
        AppRoutes.questionsBookHosea: (ctx) => const QuestionsBooks(),
        AppRoutes.alternative1BookHosea: (ctx) => const AnswerABook(),
        AppRoutes.alternative2BookHosea: (ctx) => const AnswerBBook(),
        AppRoutes.alternative3BookHosea: (ctx) => const AnswerCBook(),
        // Routes Book Joel
        AppRoutes.bookJoel: (ctx) => const ChooseNumberBooks(),
        AppRoutes.questionsBookJoel: (ctx) => const QuestionsBooks(),
        AppRoutes.alternative1BookJoel: (ctx) => const AnswerABook(),
        AppRoutes.alternative2BookJoel: (ctx) => const AnswerBBook(),
        AppRoutes.alternative3BookJoel: (ctx) => const AnswerCBook(),
        // Routes Book Amos
        AppRoutes.bookAmos: (ctx) => const ChooseNumberBooks(),
        AppRoutes.questionsBookAmos: (ctx) => const QuestionsBooks(),
        AppRoutes.alternative1BookAmos: (ctx) => const AnswerABook(),
        AppRoutes.alternative2BookAmos: (ctx) => const AnswerBBook(),
        AppRoutes.alternative3BookAmos: (ctx) => const AnswerCBook(),
        // Routes Book Obadiah
        AppRoutes.bookObadiah: (ctx) => const ChooseNumberBooks(),
        AppRoutes.questionsBookObadiah: (ctx) => const QuestionsBooks(),
        AppRoutes.alternative1BookObadiah: (ctx) => const AnswerABook(),
        AppRoutes.alternative2BookObadiah: (ctx) => const AnswerBBook(),
        AppRoutes.alternative3BookObadiah: (ctx) => const AnswerCBook(),
        // Routes Book Jonah
        AppRoutes.bookJonah: (ctx) => const ChooseNumberBooks(),
        AppRoutes.questionsBookJonah: (ctx) => const QuestionsBooks(),
        AppRoutes.alternative1BookJonah: (ctx) => const AnswerABook(),
        AppRoutes.alternative2BookJonah: (ctx) => const AnswerBBook(),
        AppRoutes.alternative3BookJonah: (ctx) => const AnswerCBook(),
        // Routes Book Micah
        AppRoutes.bookMicah: (ctx) => const ChooseNumberBooks(),
        AppRoutes.questionsBookMicah: (ctx) => const QuestionsBooks(),
        AppRoutes.alternative1BookMicah: (ctx) => const AnswerABook(),
        AppRoutes.alternative2BookMicah: (ctx) => const AnswerBBook(),
        AppRoutes.alternative3BookMicah: (ctx) => const AnswerCBook(),
        // Routes Book No
        AppRoutes.bookNo: (ctx) => const ChooseNumberBooks(),
        AppRoutes.questionsBookNo: (ctx) => const QuestionsBooks(),
        AppRoutes.alternative1BookNo: (ctx) => const AnswerABook(),
        AppRoutes.alternative2BookNo: (ctx) => const AnswerBBook(),
        AppRoutes.alternative3BookNo: (ctx) => const AnswerCBook(),
        // Routes Book Habakkuk
        AppRoutes.bookHabakkuk: (ctx) => const ChooseNumberBooks(),
        AppRoutes.questionsBookHabakkuk: (ctx) => const QuestionsBooks(),
        AppRoutes.alternative1BookHabakkuk: (ctx) => const AnswerABook(),
        AppRoutes.alternative2BookHabakkuk: (ctx) => const AnswerBBook(),
        AppRoutes.alternative3BookHabakkuk: (ctx) => const AnswerCBook(),
        // Routes Book Zephanies
        AppRoutes.bookZephanies: (ctx) => const ChooseNumberBooks(),
        AppRoutes.questionsBookZephanies: (ctx) => const QuestionsBooks(),
        AppRoutes.alternative1BookZephanies: (ctx) => const AnswerABook(),
        AppRoutes.alternative2BookZephanies: (ctx) => const AnswerBBook(),
        AppRoutes.alternative3BookZephanies: (ctx) => const AnswerCBook(),
        // Routes Book Haggai
        AppRoutes.bookHaggai: (ctx) => const ChooseNumberBooks(),
        AppRoutes.questionsBookHaggai: (ctx) => const QuestionsBooks(),
        AppRoutes.alternative1BookHaggai: (ctx) => const AnswerABook(),
        AppRoutes.alternative2BookHaggai: (ctx) => const AnswerBBook(),
        AppRoutes.alternative3BookHaggai: (ctx) => const AnswerCBook(),
        // Routes Book Zechariah
        AppRoutes.bookZechariah: (ctx) => const ChooseNumberBooks(),
        AppRoutes.questionsBookZechariah: (ctx) => const QuestionsBooks(),
        AppRoutes.alternative1BookZechariah: (ctx) => const AnswerABook(),
        AppRoutes.alternative2BookZechariah: (ctx) => const AnswerBBook(),
        AppRoutes.alternative3BookZechariah: (ctx) => const AnswerCBook(),
        // Routes Book Malachi
        AppRoutes.bookMalachi: (ctx) => const ChooseNumberBooks(),
        AppRoutes.questionsBookMalachi: (ctx) => const QuestionsBooks(),
        AppRoutes.alternative1BookMalachi: (ctx) => const AnswerABook(),
        AppRoutes.alternative2BookMalachi: (ctx) => const AnswerBBook(),
        AppRoutes.alternative3BookMalachi: (ctx) => const AnswerCBook(),
        // Routes Book Mateus
        AppRoutes.bookMateus: (ctx) => const ChooseNumberBooks(),
        AppRoutes.questionsBookMateus: (ctx) => const QuestionsBooks(),
        AppRoutes.alternative1BookMateus: (ctx) => const AnswerABook(),
        AppRoutes.alternative2BookMateus: (ctx) => const AnswerBBook(),
        AppRoutes.alternative3BookMateus: (ctx) => const AnswerCBook(),
        // Routes Book Frames
        AppRoutes.bookFrames: (ctx) => const ChooseNumberBooks(),
        AppRoutes.questionsBookFrames: (ctx) => const QuestionsBooks(),
        AppRoutes.alternative1BookFrames: (ctx) => const AnswerABook(),
        AppRoutes.alternative2BookFrames: (ctx) => const AnswerBBook(),
        AppRoutes.alternative3BookFrames: (ctx) => const AnswerCBook(),
        // Routes Book Lucas
        AppRoutes.bookLucas: (ctx) => const ChooseNumberBooks(),
        AppRoutes.questionsBookLucas: (ctx) => const QuestionsBooks(),
        AppRoutes.alternative1BookLucas: (ctx) => const AnswerABook(),
        AppRoutes.alternative2BookLucas: (ctx) => const AnswerBBook(),
        AppRoutes.alternative3BookLucas: (ctx) => const AnswerCBook(),
        // Routes Book John
        AppRoutes.bookJohn: (ctx) => const ChooseNumberBooks(),
        AppRoutes.questionsBookJohn: (ctx) => const QuestionsBooks(),
        AppRoutes.alternative1BookJohn: (ctx) => const AnswerABook(),
        AppRoutes.alternative2BookJohn: (ctx) => const AnswerBBook(),
        AppRoutes.alternative3BookJohn: (ctx) => const AnswerCBook(),
        // Routes Book Acts
        AppRoutes.bookActs: (ctx) => const ChooseNumberBooks(),
        AppRoutes.questionsBookActs: (ctx) => const QuestionsBooks(),
        AppRoutes.alternative1BookActs: (ctx) => const AnswerABook(),
        AppRoutes.alternative2BookActs: (ctx) => const AnswerBBook(),
        AppRoutes.alternative3BookActs: (ctx) => const AnswerCBook(),
        // Routes Book Romans
        AppRoutes.bookRomans: (ctx) => const ChooseNumberBooks(),
        AppRoutes.questionsBookRomans: (ctx) => const QuestionsBooks(),
        AppRoutes.alternative1BookRomans: (ctx) => const AnswerABook(),
        AppRoutes.alternative2BookRomans: (ctx) => const AnswerBBook(),
        AppRoutes.alternative3BookRomans: (ctx) => const AnswerCBook(),
        // Routes Book 1 Corinthians
        AppRoutes.book1Corinthians: (ctx) => const ChooseNumberBooks(),
        AppRoutes.questionsBook1Corinthians: (ctx) => const QuestionsBooks(),
        AppRoutes.alternative1Book1Corinthians: (ctx) => const AnswerABook(),
        AppRoutes.alternative2Book1Corinthians: (ctx) => const AnswerBBook(),
        AppRoutes.alternative3Book1Corinthians: (ctx) => const AnswerCBook(),
        // Routes Book 2 Corinthians
        AppRoutes.book2Corinthians: (ctx) => const ChooseNumberBooks(),
        AppRoutes.questionsBook2Corinthians: (ctx) => const QuestionsBooks(),
        AppRoutes.alternative1Book2Corinthians: (ctx) => const AnswerABook(),
        AppRoutes.alternative2Book2Corinthians: (ctx) => const AnswerBBook(),
        AppRoutes.alternative3Book2Corinthians: (ctx) => const AnswerCBook(),
        // Routes Book Galatians
        AppRoutes.bookGalatians: (ctx) => const ChooseNumberBooks(),
        AppRoutes.questionsBookGalatians: (ctx) => const QuestionsBooks(),
        AppRoutes.alternative1BookGalatians: (ctx) => const AnswerABook(),
        AppRoutes.alternative2BookGalatians: (ctx) => const AnswerBBook(),
        AppRoutes.alternative3BookGalatians: (ctx) => const AnswerCBook(),
        // Routes Book Ephesians
        AppRoutes.bookEphesians: (ctx) => const ChooseNumberBooks(),
        AppRoutes.questionsBookEphesians: (ctx) => const QuestionsBooks(),
        AppRoutes.alternative1BookEphesians: (ctx) => const AnswerABook(),
        AppRoutes.alternative2BookEphesians: (ctx) => const AnswerBBook(),
        AppRoutes.alternative3BookEphesians: (ctx) => const AnswerCBook(),
        // Routes Book Philippians
        AppRoutes.bookPhilippians: (ctx) => const ChooseNumberBooks(),
        AppRoutes.questionsBookPhilippians: (ctx) => const QuestionsBooks(),
        AppRoutes.alternative1BookPhilippians: (ctx) => const AnswerABook(),
        AppRoutes.alternative2BookPhilippians: (ctx) => const AnswerBBook(),
        AppRoutes.alternative3BookPhilippians: (ctx) => const AnswerCBook(),
        // Routes Book Colossians
        AppRoutes.bookColossians: (ctx) => const ChooseNumberBooks(),
        AppRoutes.questionsBookColossians: (ctx) => const QuestionsBooks(),
        AppRoutes.alternative1BookColossians: (ctx) => const AnswerABook(),
        AppRoutes.alternative2BookColossians: (ctx) => const AnswerBBook(),
        AppRoutes.alternative3BookColossians: (ctx) => const AnswerCBook(),
        // Routes Book 1 Thessalonians
        AppRoutes.book1Thessalonians: (ctx) => const ChooseNumberBooks(),
        AppRoutes.questionsBook1Thessalonians: (ctx) => const QuestionsBooks(),
        AppRoutes.alternative1Book1Thessalonians: (ctx) => const AnswerABook(),
        AppRoutes.alternative2Book1Thessalonians: (ctx) => const AnswerBBook(),
        AppRoutes.alternative3Book1Thessalonians: (ctx) => const AnswerCBook(),
        // Routes Book 2 Thessalonians
        AppRoutes.book2Thessalonians: (ctx) => const ChooseNumberBooks(),
        AppRoutes.questionsBook2Thessalonians: (ctx) => const QuestionsBooks(),
        AppRoutes.alternative1Book2Thessalonians: (ctx) => const AnswerABook(),
        AppRoutes.alternative2Book2Thessalonians: (ctx) => const AnswerBBook(),
        AppRoutes.alternative3Book2Thessalonians: (ctx) => const AnswerCBook(),
        // Routes Book 1 Timothy
        AppRoutes.book1Timothy: (ctx) => const ChooseNumberBooks(),
        AppRoutes.questionsBook1Timothy: (ctx) => const QuestionsBooks(),
        AppRoutes.alternative1Book1Timothy: (ctx) => const AnswerABook(),
        AppRoutes.alternative2Book1Timothy: (ctx) => const AnswerBBook(),
        AppRoutes.alternative3Book1Timothy: (ctx) => const AnswerCBook(),
        // Routes Book 2 Timothy
        AppRoutes.book2Timothy: (ctx) => const ChooseNumberBooks(),
        AppRoutes.questionsBook2Timothy: (ctx) => const QuestionsBooks(),
        AppRoutes.alternative1Book2Timothy: (ctx) => const AnswerABook(),
        AppRoutes.alternative2Book2Timothy: (ctx) => const AnswerBBook(),
        AppRoutes.alternative3Book2Timothy: (ctx) => const AnswerCBook(),
        // Routes Book Tito
        AppRoutes.bookTito: (ctx) => const ChooseNumberBooks(),
        AppRoutes.questionsBookTito: (ctx) => const QuestionsBooks(),
        AppRoutes.alternative1BookTito: (ctx) => const AnswerABook(),
        AppRoutes.alternative2BookTito: (ctx) => const AnswerBBook(),
        AppRoutes.alternative3BookTito: (ctx) => const AnswerCBook(),
        // Routes Book Philemon
        AppRoutes.bookPhilemon: (ctx) => const ChooseNumberBooks(),
        AppRoutes.questionsBookPhilemon: (ctx) => const QuestionsBooks(),
        AppRoutes.alternative1BookPhilemon: (ctx) => const AnswerABook(),
        AppRoutes.alternative2BookPhilemon: (ctx) => const AnswerBBook(),
        AppRoutes.alternative3BookPhilemon: (ctx) => const AnswerCBook(),
        // Routes Book Hebrews
        AppRoutes.bookHebrews: (ctx) => const ChooseNumberBooks(),
        AppRoutes.questionsBookHebrews: (ctx) => const QuestionsBooks(),
        AppRoutes.alternative1BookHebrews: (ctx) => const AnswerABook(),
        AppRoutes.alternative2BookHebrews: (ctx) => const AnswerBBook(),
        AppRoutes.alternative3BookHebrews: (ctx) => const AnswerCBook(),
        // Routes Book Tiago
        AppRoutes.bookTiago: (ctx) => const ChooseNumberBooks(),
        AppRoutes.questionsBookTiago: (ctx) => const QuestionsBooks(),
        AppRoutes.alternative1BookTiago: (ctx) => const AnswerABook(),
        AppRoutes.alternative2BookTiago: (ctx) => const AnswerBBook(),
        AppRoutes.alternative3BookTiago: (ctx) => const AnswerCBook(),
        // Routes Book 1 Peter
        AppRoutes.book1Peter: (ctx) => const ChooseNumberBooks(),
        AppRoutes.questionsBook1Peter: (ctx) => const QuestionsBooks(),
        AppRoutes.alternative1Book1Peter: (ctx) => const AnswerABook(),
        AppRoutes.alternative2Book1Peter: (ctx) => const AnswerBBook(),
        AppRoutes.alternative3Book1Peter: (ctx) => const AnswerCBook(),
        // Routes Book 2 Peter
        AppRoutes.book2Peter: (ctx) => const ChooseNumberBooks(),
        AppRoutes.questionsBook2Peter: (ctx) => const QuestionsBooks(),
        AppRoutes.alternative1Book2Peter: (ctx) => const AnswerABook(),
        AppRoutes.alternative2Book2Peter: (ctx) => const AnswerBBook(),
        AppRoutes.alternative3Book2Peter: (ctx) => const AnswerCBook(),
        // Routes Book 1 John
        AppRoutes.book1John: (ctx) => const ChooseNumberBooks(),
        AppRoutes.questionsBook1John: (ctx) => const QuestionsBooks(),
        AppRoutes.alternative1Book1John: (ctx) => const AnswerABook(),
        AppRoutes.alternative2Book1John: (ctx) => const AnswerBBook(),
        AppRoutes.alternative3Book1John: (ctx) => const AnswerCBook(),
        // Routes Book 2 John
        AppRoutes.book2John: (ctx) => const ChooseNumberBooks(),
        AppRoutes.questionsBook2John: (ctx) => const QuestionsBooks(),
        AppRoutes.alternative1Book2John: (ctx) => const AnswerABook(),
        AppRoutes.alternative2Book2John: (ctx) => const AnswerBBook(),
        AppRoutes.alternative3Book2John: (ctx) => const AnswerCBook(),
        // Routes Book 3 John
        AppRoutes.book3John: (ctx) => const ChooseNumberBooks(),
        AppRoutes.questionsBook3John: (ctx) => const QuestionsBooks(),
        AppRoutes.alternative1Book3John: (ctx) => const AnswerABook(),
        AppRoutes.alternative2Book3John: (ctx) => const AnswerBBook(),
        AppRoutes.alternative3Book3John: (ctx) => const AnswerCBook(),
        // Routes Book Judas
        AppRoutes.bookJudas: (ctx) => const ChooseNumberBooks(),
        AppRoutes.questionsBookJudas: (ctx) => const QuestionsBooks(),
        AppRoutes.alternative1BookJudas: (ctx) => const AnswerABook(),
        AppRoutes.alternative2BookJudas: (ctx) => const AnswerBBook(),
        AppRoutes.alternative3BookJudas: (ctx) => const AnswerCBook(),
        // Routes Book Apocalypse
        AppRoutes.bookApocalypse: (ctx) => const ChooseNumberBooks(),
        AppRoutes.questionsBookApocalypse: (ctx) => const QuestionsBooks(),
        AppRoutes.alternative1BookApocalypse: (ctx) => const AnswerABook(),
        AppRoutes.alternative2BookApocalypse: (ctx) => const AnswerBBook(),
        AppRoutes.alternative3BookApocalypse: (ctx) => const AnswerCBook(),
      },
    );
  }
}
