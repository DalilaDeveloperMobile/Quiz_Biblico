import 'package:auto_size_text/auto_size_text.dart';
import 'package:custom_timer/custom_timer.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
// import 'package:lottie/lottie.dart';
import 'package:quiz_biblico_5/data/verses/mock_game_data.dart';
import 'package:quiz_biblico_5/models/variables_game_model.dart';
import 'package:quiz_biblico_5/screens/book_game/widgets/grid_books.dart';
import 'package:quiz_biblico_5/shared/app_bar_default/app_bar_default.dart';
import 'package:quiz_biblico_5/utils/preferences_manager.dart';
import 'package:quiz_biblico_5/utils/preferences_manager_book.dart';
import 'package:quiz_biblico_5/widgets/text_question.dart';
import 'package:quiz_biblico_5/widgets/text_value_score.dart';

import '../widgets/option_book/option_a_book.dart';
import '../widgets/option_book/option_b_book.dart';
import '../widgets/option_book/option_c_book.dart';

class ChooseNumberBooks extends StatefulWidget {
  const ChooseNumberBooks({super.key});

  @override
  State<ChooseNumberBooks> createState() => _ChooseNumberBooksState();
}

class _ChooseNumberBooksState extends State<ChooseNumberBooks> {
  int currentQuestionIndexGenesis = 0;
  bool isFinishedGenesis = false;

  int currentQuestionIndexExodus = 0;
  bool isFinishedExodus = false;

  int currentQuestionIndexLeviticus = 0;
  bool isFinishedLeviticus = false;

  int currentQuestionIndexNumbers = 0;
  bool isFinishedNumbers = false;

  int currentQuestionIndexDeuteronomy = 0;
  bool isFinishedDeuteronomy = false;

  int currentQuestionIndexJosue = 0;
  bool isFinishedJosue = false;

  int currentQuestionIndexJudges = 0;
  bool isFinishedJudges = false;

  int currentQuestionIndexRuth = 0;
  bool isFinishedRuth = false;

  int currentQuestionIndex1Samuel = 0;
  bool isFinished1Samuel = false;

  int currentQuestionIndex2Samuel = 0;
  bool isFinished2Samuel = false;

  int currentQuestionIndex1Reis = 0;
  bool isFinished1Reis = false;

  int currentQuestionIndex2Reis = 0;
  bool isFinished2Reis = false;

  int currentQuestionIndex1Cronicas = 0;
  bool isFinished1Cronicas = false;

  int currentQuestionIndex2Cronicas = 0;
  bool isFinished2Cronicas = false;

  int currentQuestionIndexEsdras = 0;
  bool isFinishedEsdras = false;

  int currentQuestionIndexNeemias = 0;
  bool isFinishedNeemias = false;

  int currentQuestionIndexEster = 0;
  bool isFinishedEster = false;

  int currentQuestionIndexJo = 0;
  bool isFinishedJo = false;

  int currentQuestionIndexSalmos = 0;
  bool isFinishedSalmos = false;

  int currentQuestionIndexProverbios = 0;
  bool isFinishedProverbios = false;

  int currentQuestionIndexEclesiastes = 0;
  bool isFinishedEclesiastes = false;

  int currentQuestionIndexCantares = 0;
  bool isFinishedCantares = false;

  int currentQuestionIndexIsaias = 0;
  bool isFinishedIsaias = false;

  int currentQuestionIndexJeremias = 0;
  bool isFinishedJeremias = false;

  int currentQuestionIndexLamentacoes = 0;
  bool isFinishedLamentacoes = false;

  int currentQuestionIndexEzequiel = 0;
  bool isFinishedEzequiel = false;

  int currentQuestionIndexDaniel = 0;
  bool isFinishedDaniel = false;

  int currentQuestionIndexOseias = 0;
  bool isFinishedOseias = false;

  int currentQuestionIndexJoel = 0;
  bool isFinishedJoel = false;

  int currentQuestionIndexAmos = 0;
  bool isFinishedAmos = false;

  int currentQuestionIndexObadias = 0;
  bool isFinishedObadias = false;

  int currentQuestionIndexJonas = 0;
  bool isFinishedJonas = false;

  int currentQuestionIndexMiqueias = 0;
  bool isFinishedMiqueias = false;

  int currentQuestionIndexNaum = 0;
  bool isFinishedNaum = false;

  int currentQuestionIndexHabacuque = 0;
  bool isFinishedHabacuque = false;

  int currentQuestionIndexSofonias = 0;
  bool isFinishedSofonias = false;

  int currentQuestionIndexAgeu = 0;
  bool isFinishedAgeu = false;

  int currentQuestionIndexZacarias = 0;
  bool isFinishedZacarias = false;

  int currentQuestionIndexMalaquias = 0;
  bool isFinishedMalaquias = false;

  int currentQuestionIndexMateus = 0;
  bool isFinishedMateus = false;

  int currentQuestionIndexMarcos = 0;
  bool isFinishedMarcos = false;

  int currentQuestionIndexLucas = 0;
  bool isFinishedLucas = false;

  int currentQuestionIndexJoao = 0;
  bool isFinishedJoao = false;

  int currentQuestionIndexAtos = 0;
  bool isFinishedAtos = false;

  int currentQuestionIndexRomanos = 0;
  bool isFinishedRomanos = false;

  int currentQuestionIndex1Corintios = 0;
  bool isFinished1Corintios = false;

  int currentQuestionIndex2Corintios = 0;
  bool isFinished2Corintios = false;

  int currentQuestionIndexGalatas = 0;
  bool isFinishedGalatas = false;

  int currentQuestionIndexEfesios = 0;
  bool isFinishedEfesios = false;

  int currentQuestionIndexFilipenses = 0;
  bool isFinishedFilipenses = false;

  int currentQuestionIndexColossenses = 0;
  bool isFinishedColossenses = false;

  int currentQuestionIndex1Tessalonenses = 0;
  bool isFinished1Tessalonenses = false;

  int currentQuestionIndex2Tessalonenses = 0;
  bool isFinished2Tessalonenses = false;

  int currentQuestionIndex1Timoteo = 0;
  bool isFinished1Timoteo = false;

  int currentQuestionIndex2Timoteo = 0;
  bool isFinished2Timoteo = false;

  int currentQuestionIndexTito = 0;
  bool isFinishedTito = false;

  int currentQuestionIndexFilemom = 0;
  bool isFinishedFilemom = false;

  int currentQuestionIndexHebreus = 0;
  bool isFinishedHebreus = false;

  int currentQuestionIndexTiago = 0;
  bool isFinishedTiago = false;

  int currentQuestionIndex1Pedro = 0;
  bool isFinished1Pedro = false;

  int currentQuestionIndex2Pedro = 0;
  bool isFinished2Pedro = false;

  int currentQuestionIndex1Joao = 0;
  bool isFinished1Joao = false;

  int currentQuestionIndex2Joao = 0;
  bool isFinished2Joao = false;

  int currentQuestionIndex3Joao = 0;
  bool isFinished3Joao = false;

  int currentQuestionIndexJudas = 0;
  bool isFinishedJudas = false;

  int currentQuestionIndexApocalipse = 0;
  bool isFinishedApocalipse = false;

  @override
  void initState() {
    super.initState();
    _loadCurrentQuestionGenesis();
    _loadCurrentQuestionExodus();
    _loadCurrentQuestionLeviticus();
    _loadCurrentQuestionNumbers();
    _loadCurrentQuestionDeuteronomy();
    _loadCurrentQuestionJosue();
    _loadCurrentQuestionJudges();
    _loadCurrentQuestionRuth();
    _loadCurrentQuestion1Samuel();
    _loadCurrentQuestion2Samuel();
    _loadCurrentQuestion1Reis();
    _loadCurrentQuestion2Reis();
    _loadCurrentQuestion1Cronicas();
    _loadCurrentQuestion2Cronicas();
    _loadCurrentQuestionEsdras();
    _loadCurrentQuestionNeemias();
    _loadCurrentQuestionEster();
    _loadCurrentQuestionJo();
    _loadCurrentQuestionSalmos();
    _loadCurrentQuestionProverbios();
    _loadCurrentQuestionEclesiastes();
    _loadCurrentQuestionCantares();
    _loadCurrentQuestionIsaias();
    _loadCurrentQuestionJeremias();
    _loadCurrentQuestionLamentacoes();
    _loadCurrentQuestionEzequiel();
    _loadCurrentQuestionDaniel();
    _loadCurrentQuestionOseias();
    _loadCurrentQuestionJoel();
    _loadCurrentQuestionAmos();
    _loadCurrentQuestionObadias();
    _loadCurrentQuestionJonas();
    _loadCurrentQuestionMiqueias();
    _loadCurrentQuestionNaum();
    _loadCurrentQuestionHabacuque();
    _loadCurrentQuestionSofonias();
    _loadCurrentQuestionAgeu();
    _loadCurrentQuestionZacarias();
    _loadCurrentQuestionMalaquias();
    _loadCurrentQuestionMateus();
    _loadCurrentQuestionMarcos();
    _loadCurrentQuestionLucas();
    _loadCurrentQuestionJoao();
    _loadCurrentQuestionAtos();
    _loadCurrentQuestionRomanos();
    _loadCurrentQuestion1Corintios();
    _loadCurrentQuestion2Corintios();
    _loadCurrentQuestionGalatas();
    _loadCurrentQuestionEfesios();
    _loadCurrentQuestionFilipenses();
    _loadCurrentQuestionColossenses();
    _loadCurrentQuestion1Tessalonenses();
    _loadCurrentQuestion2Tessalonenses();
    _loadCurrentQuestion1Timoteo();
    _loadCurrentQuestion2Timoteo();
    _loadCurrentQuestionTito();
    _loadCurrentQuestionFilemom();
    _loadCurrentQuestionHebreus();
    _loadCurrentQuestionTiago();
    _loadCurrentQuestion1Pedro();
    _loadCurrentQuestion2Pedro();
    _loadCurrentQuestion1Joao();
    _loadCurrentQuestion2Joao();
    _loadCurrentQuestion3Joao();
    _loadCurrentQuestionJudas();
    _loadCurrentQuestionApocalipse();
  }

  Future<void> _loadCurrentQuestionGenesis() async {
    await PreferencesManagerBook.instance.loadPreferences();
    setState(() {
      currentQuestionIndexGenesis =
          PreferencesManagerBook.instance.currentQuestionIndexGenesis;
      isFinishedGenesis = PreferencesManagerBook.instance.isFinishedGenesis;
    });
  }

  Future<void> _loadCurrentQuestionExodus() async {
    await PreferencesManagerBook.instance.loadPreferences();
    setState(() {
      currentQuestionIndexExodus =
          PreferencesManagerBook.instance.currentQuestionIndexExodus;
      isFinishedExodus = PreferencesManagerBook.instance.isFinishedExodus;
    });
  }

  Future<void> _loadCurrentQuestionLeviticus() async {
    await PreferencesManagerBook.instance.loadPreferences();
    setState(() {
      currentQuestionIndexLeviticus =
          PreferencesManagerBook.instance.currentQuestionIndexLeviticus;
      isFinishedLeviticus = PreferencesManagerBook.instance.isFinishedLeviticus;
    });
  }

  Future<void> _loadCurrentQuestionNumbers() async {
    await PreferencesManagerBook.instance.loadPreferences();
    setState(() {
      currentQuestionIndexNumbers =
          PreferencesManagerBook.instance.currentQuestionIndexNumbers;
      isFinishedNumbers = PreferencesManagerBook.instance.isFinishedNumbers;
    });
  }

  Future<void> _loadCurrentQuestionDeuteronomy() async {
    await PreferencesManagerBook.instance.loadPreferences();
    setState(() {
      currentQuestionIndexDeuteronomy =
          PreferencesManagerBook.instance.currentQuestionIndexDeuteronomy;
      isFinishedDeuteronomy =
          PreferencesManagerBook.instance.isFinishedDeuteronomy;
    });
  }

  Future<void> _loadCurrentQuestionJosue() async {
    await PreferencesManagerBook.instance.loadPreferences();
    setState(() {
      currentQuestionIndexJosue =
          PreferencesManagerBook.instance.currentQuestionIndexJosue;
      isFinishedJosue = PreferencesManagerBook.instance.isFinishedJosue;
    });
  }

  Future<void> _loadCurrentQuestionJudges() async {
    await PreferencesManagerBook.instance.loadPreferences();
    setState(() {
      currentQuestionIndexJudges =
          PreferencesManagerBook.instance.currentQuestionIndexJudges;
      isFinishedJudges = PreferencesManagerBook.instance.isFinishedJudges;
    });
  }

  Future<void> _loadCurrentQuestionRuth() async {
    await PreferencesManagerBook.instance.loadPreferences();
    setState(() {
      currentQuestionIndexRuth =
          PreferencesManagerBook.instance.currentQuestionIndexRuth;
      isFinishedRuth = PreferencesManagerBook.instance.isFinishedRuth;
    });
  }

  Future<void> _loadCurrentQuestion1Samuel() async {
    await PreferencesManagerBook.instance.loadPreferences();
    setState(() {
      currentQuestionIndex1Samuel =
          PreferencesManagerBook.instance.currentQuestionIndex1Samuel;
      isFinished1Samuel = PreferencesManagerBook.instance.isFinished1Samuel;
    });
  }

  Future<void> _loadCurrentQuestion2Samuel() async {
    await PreferencesManagerBook.instance.loadPreferences();
    setState(() {
      currentQuestionIndex2Samuel =
          PreferencesManagerBook.instance.currentQuestionIndex2Samuel;
      isFinished2Samuel = PreferencesManagerBook.instance.isFinished2Samuel;
    });
  }

  Future<void> _loadCurrentQuestion1Reis() async {
    await PreferencesManagerBook.instance.loadPreferences();
    setState(() {
      currentQuestionIndex1Reis =
          PreferencesManagerBook.instance.currentQuestionIndex1Reis;
      isFinished1Reis = PreferencesManagerBook.instance.isFinished1Reis;
    });
  }

  Future<void> _loadCurrentQuestion2Reis() async {
    await PreferencesManagerBook.instance.loadPreferences();
    setState(() {
      currentQuestionIndex2Reis =
          PreferencesManagerBook.instance.currentQuestionIndex2Reis;
      isFinished2Reis = PreferencesManagerBook.instance.isFinished2Reis;
    });
  }

  Future<void> _loadCurrentQuestion1Cronicas() async {
    await PreferencesManagerBook.instance.loadPreferences();
    setState(() {
      currentQuestionIndex1Cronicas =
          PreferencesManagerBook.instance.currentQuestionIndex1Cronicas;
      isFinished1Cronicas = PreferencesManagerBook.instance.isFinished1Cronicas;
    });
  }

  Future<void> _loadCurrentQuestion2Cronicas() async {
    await PreferencesManagerBook.instance.loadPreferences();
    setState(() {
      currentQuestionIndex2Cronicas =
          PreferencesManagerBook.instance.currentQuestionIndex2Cronicas;
      isFinished2Cronicas = PreferencesManagerBook.instance.isFinished2Cronicas;
    });
  }

  Future<void> _loadCurrentQuestionEsdras() async {
    await PreferencesManagerBook.instance.loadPreferences();
    setState(() {
      currentQuestionIndexEsdras =
          PreferencesManagerBook.instance.currentQuestionIndexEsdras;
      isFinishedEsdras = PreferencesManagerBook.instance.isFinishedEsdras;
    });
  }

  Future<void> _loadCurrentQuestionNeemias() async {
    await PreferencesManagerBook.instance.loadPreferences();
    setState(() {
      currentQuestionIndexNeemias =
          PreferencesManagerBook.instance.currentQuestionIndexNeemias;
      isFinishedNeemias = PreferencesManagerBook.instance.isFinishedNeemias;
    });
  }

  Future<void> _loadCurrentQuestionEster() async {
    await PreferencesManagerBook.instance.loadPreferences();
    setState(() {
      currentQuestionIndexEster =
          PreferencesManagerBook.instance.currentQuestionIndexEster;
      isFinishedEster = PreferencesManagerBook.instance.isFinishedEster;
    });
  }

  Future<void> _loadCurrentQuestionJo() async {
    await PreferencesManagerBook.instance.loadPreferences();
    setState(() {
      currentQuestionIndexJo =
          PreferencesManagerBook.instance.currentQuestionIndexJo;
      isFinishedJo = PreferencesManagerBook.instance.isFinishedJo;
    });
  }

  Future<void> _loadCurrentQuestionSalmos() async {
    await PreferencesManagerBook.instance.loadPreferences();
    setState(() {
      currentQuestionIndexSalmos =
          PreferencesManagerBook.instance.currentQuestionIndexSalmos;
      isFinishedSalmos = PreferencesManagerBook.instance.isFinishedSalmos;
    });
  }

  Future<void> _loadCurrentQuestionProverbios() async {
    await PreferencesManagerBook.instance.loadPreferences();
    setState(() {
      currentQuestionIndexProverbios =
          PreferencesManagerBook.instance.currentQuestionIndexProverbios;
      isFinishedProverbios =
          PreferencesManagerBook.instance.isFinishedProverbios;
    });
  }

  Future<void> _loadCurrentQuestionEclesiastes() async {
    await PreferencesManagerBook.instance.loadPreferences();
    setState(() {
      currentQuestionIndexEclesiastes =
          PreferencesManagerBook.instance.currentQuestionIndexEclesiastes;
      isFinishedEclesiastes =
          PreferencesManagerBook.instance.isFinishedEclesiastes;
    });
  }

  Future<void> _loadCurrentQuestionCantares() async {
    await PreferencesManagerBook.instance.loadPreferences();
    setState(() {
      currentQuestionIndexCantares =
          PreferencesManagerBook.instance.currentQuestionIndexCantares;
      isFinishedCantares = PreferencesManagerBook.instance.isFinishedCantares;
    });
  }

  Future<void> _loadCurrentQuestionIsaias() async {
    await PreferencesManagerBook.instance.loadPreferences();
    setState(() {
      currentQuestionIndexIsaias =
          PreferencesManagerBook.instance.currentQuestionIndexIsaias;
      isFinishedIsaias = PreferencesManagerBook.instance.isFinishedIsaias;
    });
  }

  Future<void> _loadCurrentQuestionJeremias() async {
    await PreferencesManagerBook.instance.loadPreferences();
    setState(() {
      currentQuestionIndexJeremias =
          PreferencesManagerBook.instance.currentQuestionIndexJeremias;
      isFinishedJeremias = PreferencesManagerBook.instance.isFinishedJeremias;
    });
  }

  Future<void> _loadCurrentQuestionLamentacoes() async {
    await PreferencesManagerBook.instance.loadPreferences();
    setState(() {
      currentQuestionIndexLamentacoes =
          PreferencesManagerBook.instance.currentQuestionIndexLamentacoes;
      isFinishedLamentacoes =
          PreferencesManagerBook.instance.isFinishedLamentacoes;
    });
  }

  Future<void> _loadCurrentQuestionEzequiel() async {
    await PreferencesManagerBook.instance.loadPreferences();
    setState(() {
      currentQuestionIndexEzequiel =
          PreferencesManagerBook.instance.currentQuestionIndexEzequiel;
      isFinishedEzequiel = PreferencesManagerBook.instance.isFinishedEzequiel;
    });
  }

  Future<void> _loadCurrentQuestionDaniel() async {
    await PreferencesManagerBook.instance.loadPreferences();
    setState(() {
      currentQuestionIndexDaniel =
          PreferencesManagerBook.instance.currentQuestionIndexDaniel;
      isFinishedDaniel = PreferencesManagerBook.instance.isFinishedDaniel;
    });
  }

  Future<void> _loadCurrentQuestionOseias() async {
    await PreferencesManagerBook.instance.loadPreferences();
    setState(() {
      currentQuestionIndexOseias =
          PreferencesManagerBook.instance.currentQuestionIndexOseias;
      isFinishedOseias = PreferencesManagerBook.instance.isFinishedOseias;
    });
  }

  Future<void> _loadCurrentQuestionJoel() async {
    await PreferencesManagerBook.instance.loadPreferences();
    setState(() {
      currentQuestionIndexJoel =
          PreferencesManagerBook.instance.currentQuestionIndexJoel;
      isFinishedJoel = PreferencesManagerBook.instance.isFinishedJoel;
    });
  }

  Future<void> _loadCurrentQuestionAmos() async {
    await PreferencesManagerBook.instance.loadPreferences();
    setState(() {
      currentQuestionIndexAmos =
          PreferencesManagerBook.instance.currentQuestionIndexAmos;
      isFinishedAmos = PreferencesManagerBook.instance.isFinishedAmos;
    });
  }

  Future<void> _loadCurrentQuestionObadias() async {
    await PreferencesManagerBook.instance.loadPreferences();
    setState(() {
      currentQuestionIndexObadias =
          PreferencesManagerBook.instance.currentQuestionIndexObadias;
      isFinishedObadias = PreferencesManagerBook.instance.isFinishedObadias;
    });
  }

  Future<void> _loadCurrentQuestionJonas() async {
    await PreferencesManagerBook.instance.loadPreferences();
    setState(() {
      currentQuestionIndexJonas =
          PreferencesManagerBook.instance.currentQuestionIndexJonas;
      isFinishedJonas = PreferencesManagerBook.instance.isFinishedJonas;
    });
  }

  Future<void> _loadCurrentQuestionMiqueias() async {
    await PreferencesManagerBook.instance.loadPreferences();
    setState(() {
      currentQuestionIndexMiqueias =
          PreferencesManagerBook.instance.currentQuestionIndexMiqueias;
      isFinishedMiqueias = PreferencesManagerBook.instance.isFinishedMiqueias;
    });
  }

  Future<void> _loadCurrentQuestionNaum() async {
    await PreferencesManagerBook.instance.loadPreferences();
    setState(() {
      currentQuestionIndexNaum =
          PreferencesManagerBook.instance.currentQuestionIndexNaum;
      isFinishedNaum = PreferencesManagerBook.instance.isFinishedNaum;
    });
  }

  Future<void> _loadCurrentQuestionHabacuque() async {
    await PreferencesManagerBook.instance.loadPreferences();
    setState(() {
      currentQuestionIndexHabacuque =
          PreferencesManagerBook.instance.currentQuestionIndexHabacuque;
      isFinishedHabacuque = PreferencesManagerBook.instance.isFinishedHabacuque;
    });
  }

  Future<void> _loadCurrentQuestionSofonias() async {
    await PreferencesManagerBook.instance.loadPreferences();
    setState(() {
      currentQuestionIndexSofonias =
          PreferencesManagerBook.instance.currentQuestionIndexSofonias;
      isFinishedSofonias = PreferencesManagerBook.instance.isFinishedSofonias;
    });
  }

  Future<void> _loadCurrentQuestionAgeu() async {
    await PreferencesManagerBook.instance.loadPreferences();
    setState(() {
      currentQuestionIndexAgeu =
          PreferencesManagerBook.instance.currentQuestionIndexAgeu;
      isFinishedAgeu = PreferencesManagerBook.instance.isFinishedAgeu;
    });
  }

  Future<void> _loadCurrentQuestionZacarias() async {
    await PreferencesManagerBook.instance.loadPreferences();
    setState(() {
      currentQuestionIndexZacarias =
          PreferencesManagerBook.instance.currentQuestionIndexZacarias;
      isFinishedZacarias = PreferencesManagerBook.instance.isFinishedZacarias;
    });
  }

  Future<void> _loadCurrentQuestionMalaquias() async {
    await PreferencesManagerBook.instance.loadPreferences();
    setState(() {
      currentQuestionIndexMalaquias =
          PreferencesManagerBook.instance.currentQuestionIndexMalaquias;
      isFinishedMalaquias = PreferencesManagerBook.instance.isFinishedMalaquias;
    });
  }

  Future<void> _loadCurrentQuestionMateus() async {
    await PreferencesManagerBook.instance.loadPreferences();
    setState(() {
      currentQuestionIndexMateus =
          PreferencesManagerBook.instance.currentQuestionIndexMateus;
      isFinishedMateus = PreferencesManagerBook.instance.isFinishedMateus;
    });
  }

  Future<void> _loadCurrentQuestionMarcos() async {
    await PreferencesManagerBook.instance.loadPreferences();
    setState(() {
      currentQuestionIndexMarcos =
          PreferencesManagerBook.instance.currentQuestionIndexMarcos;
      isFinishedMarcos = PreferencesManagerBook.instance.isFinishedMarcos;
    });
  }

  Future<void> _loadCurrentQuestionLucas() async {
    await PreferencesManagerBook.instance.loadPreferences();
    setState(() {
      currentQuestionIndexLucas =
          PreferencesManagerBook.instance.currentQuestionIndexLucas;
      isFinishedLucas = PreferencesManagerBook.instance.isFinishedLucas;
    });
  }

  Future<void> _loadCurrentQuestionJoao() async {
    await PreferencesManagerBook.instance.loadPreferences();
    setState(() {
      currentQuestionIndexJoao =
          PreferencesManagerBook.instance.currentQuestionIndexJoao;
      isFinishedJoao = PreferencesManagerBook.instance.isFinishedJoao;
    });
  }

  Future<void> _loadCurrentQuestionAtos() async {
    await PreferencesManagerBook.instance.loadPreferences();
    setState(() {
      currentQuestionIndexAtos =
          PreferencesManagerBook.instance.currentQuestionIndexAtos;
      isFinishedAtos = PreferencesManagerBook.instance.isFinishedAtos;
    });
  }

  Future<void> _loadCurrentQuestionRomanos() async {
    await PreferencesManagerBook.instance.loadPreferences();
    setState(() {
      currentQuestionIndexRomanos =
          PreferencesManagerBook.instance.currentQuestionIndexRomanos;
      isFinishedRomanos = PreferencesManagerBook.instance.isFinishedRomanos;
    });
  }

  Future<void> _loadCurrentQuestion1Corintios() async {
    await PreferencesManagerBook.instance.loadPreferences();
    setState(() {
      currentQuestionIndex1Corintios =
          PreferencesManagerBook.instance.currentQuestionIndex1Corintios;
      isFinished1Corintios =
          PreferencesManagerBook.instance.isFinished1Corintios;
    });
  }

  Future<void> _loadCurrentQuestion2Corintios() async {
    await PreferencesManagerBook.instance.loadPreferences();
    setState(() {
      currentQuestionIndex2Corintios =
          PreferencesManagerBook.instance.currentQuestionIndex2Corintios;
      isFinished2Corintios =
          PreferencesManagerBook.instance.isFinished2Corintios;
    });
  }

  Future<void> _loadCurrentQuestionGalatas() async {
    await PreferencesManagerBook.instance.loadPreferences();
    setState(() {
      currentQuestionIndexGalatas =
          PreferencesManagerBook.instance.currentQuestionIndexGalatas;
      isFinishedGalatas = PreferencesManagerBook.instance.isFinishedGalatas;
    });
  }

  Future<void> _loadCurrentQuestionEfesios() async {
    await PreferencesManagerBook.instance.loadPreferences();
    setState(() {
      currentQuestionIndexEfesios =
          PreferencesManagerBook.instance.currentQuestionIndexEfesios;
      isFinishedEfesios = PreferencesManagerBook.instance.isFinishedEfesios;
    });
  }

  Future<void> _loadCurrentQuestionFilipenses() async {
    await PreferencesManagerBook.instance.loadPreferences();
    setState(() {
      currentQuestionIndexFilipenses =
          PreferencesManagerBook.instance.currentQuestionIndexFilipenses;
      isFinishedFilipenses =
          PreferencesManagerBook.instance.isFinishedFilipenses;
    });
  }

  Future<void> _loadCurrentQuestionColossenses() async {
    await PreferencesManagerBook.instance.loadPreferences();
    setState(() {
      currentQuestionIndexColossenses =
          PreferencesManagerBook.instance.currentQuestionIndexColossenses;
      isFinishedColossenses =
          PreferencesManagerBook.instance.isFinishedColossenses;
    });
  }

  Future<void> _loadCurrentQuestion1Tessalonenses() async {
    await PreferencesManagerBook.instance.loadPreferences();
    setState(() {
      currentQuestionIndex1Tessalonenses =
          PreferencesManagerBook.instance.currentQuestionIndex1Tessalonenses;
      isFinished1Tessalonenses =
          PreferencesManagerBook.instance.isFinished1Tessalonenses;
    });
  }

  Future<void> _loadCurrentQuestion2Tessalonenses() async {
    await PreferencesManagerBook.instance.loadPreferences();
    setState(() {
      currentQuestionIndex2Tessalonenses =
          PreferencesManagerBook.instance.currentQuestionIndex2Tessalonenses;
      isFinished2Tessalonenses =
          PreferencesManagerBook.instance.isFinished2Tessalonenses;
    });
  }

  Future<void> _loadCurrentQuestion1Timoteo() async {
    await PreferencesManagerBook.instance.loadPreferences();
    setState(() {
      currentQuestionIndex1Timoteo =
          PreferencesManagerBook.instance.currentQuestionIndex1Timoteo;
      isFinished1Timoteo = PreferencesManagerBook.instance.isFinished1Timoteo;
    });
  }

  Future<void> _loadCurrentQuestion2Timoteo() async {
    await PreferencesManagerBook.instance.loadPreferences();
    setState(() {
      currentQuestionIndex2Timoteo =
          PreferencesManagerBook.instance.currentQuestionIndex2Timoteo;
      isFinished2Timoteo = PreferencesManagerBook.instance.isFinished2Timoteo;
    });
  }

  Future<void> _loadCurrentQuestionTito() async {
    await PreferencesManagerBook.instance.loadPreferences();
    setState(() {
      currentQuestionIndexTito =
          PreferencesManagerBook.instance.currentQuestionIndexTito;
      isFinishedTito = PreferencesManagerBook.instance.isFinishedTito;
    });
  }

  Future<void> _loadCurrentQuestionFilemom() async {
    await PreferencesManagerBook.instance.loadPreferences();
    setState(() {
      currentQuestionIndexFilemom =
          PreferencesManagerBook.instance.currentQuestionIndexFilemom;
      isFinishedFilemom = PreferencesManagerBook.instance.isFinishedFilemom;
    });
  }

  Future<void> _loadCurrentQuestionHebreus() async {
    await PreferencesManagerBook.instance.loadPreferences();
    setState(() {
      currentQuestionIndexHebreus =
          PreferencesManagerBook.instance.currentQuestionIndexHebreus;
      isFinishedHebreus = PreferencesManagerBook.instance.isFinishedHebreus;
    });
  }

  Future<void> _loadCurrentQuestionTiago() async {
    await PreferencesManagerBook.instance.loadPreferences();
    setState(() {
      currentQuestionIndexTiago =
          PreferencesManagerBook.instance.currentQuestionIndexTiago;
      isFinishedTiago = PreferencesManagerBook.instance.isFinishedTiago;
    });
  }

  Future<void> _loadCurrentQuestion1Pedro() async {
    await PreferencesManagerBook.instance.loadPreferences();
    setState(() {
      currentQuestionIndex1Pedro =
          PreferencesManagerBook.instance.currentQuestionIndex1Pedro;
      isFinished1Pedro = PreferencesManagerBook.instance.isFinished1Pedro;
    });
  }

  Future<void> _loadCurrentQuestion2Pedro() async {
    await PreferencesManagerBook.instance.loadPreferences();
    setState(() {
      currentQuestionIndex2Pedro =
          PreferencesManagerBook.instance.currentQuestionIndex2Pedro;
      isFinished2Pedro = PreferencesManagerBook.instance.isFinished2Pedro;
    });
  }

  Future<void> _loadCurrentQuestion1Joao() async {
    await PreferencesManagerBook.instance.loadPreferences();
    setState(() {
      currentQuestionIndex1Joao =
          PreferencesManagerBook.instance.currentQuestionIndex1Joao;
      isFinished1Joao = PreferencesManagerBook.instance.isFinished1Joao;
    });
  }

  Future<void> _loadCurrentQuestion2Joao() async {
    await PreferencesManagerBook.instance.loadPreferences();
    setState(() {
      currentQuestionIndex2Joao =
          PreferencesManagerBook.instance.currentQuestionIndex2Joao;
      isFinished2Joao = PreferencesManagerBook.instance.isFinished2Joao;
    });
  }

  Future<void> _loadCurrentQuestion3Joao() async {
    await PreferencesManagerBook.instance.loadPreferences();
    setState(() {
      currentQuestionIndex3Joao =
          PreferencesManagerBook.instance.currentQuestionIndex3Joao;
      isFinished3Joao = PreferencesManagerBook.instance.isFinished3Joao;
    });
  }

  Future<void> _loadCurrentQuestionJudas() async {
    await PreferencesManagerBook.instance.loadPreferences();
    setState(() {
      currentQuestionIndexJudas =
          PreferencesManagerBook.instance.currentQuestionIndexJudas;
      isFinishedJudas = PreferencesManagerBook.instance.isFinishedJudas;
    });
  }

  Future<void> _loadCurrentQuestionApocalipse() async {
    await PreferencesManagerBook.instance.loadPreferences();
    setState(() {
      currentQuestionIndexApocalipse =
          PreferencesManagerBook.instance.currentQuestionIndexApocalipse;
      isFinishedApocalipse =
          PreferencesManagerBook.instance.isFinishedApocalipse;
    });
  }

  void nextQuestionGenesis() {
    setState(() {
      if (currentQuestionIndexGenesis < mockGameData.genesis.length - 1) {
        currentQuestionIndexGenesis++;
        PreferencesManagerBook.instance.currentQuestionIndexGenesis =
            currentQuestionIndexGenesis; // Salvar o índice
      } else {
        isFinishedGenesis = true;
        PreferencesManagerBook.instance.isFinishedGenesis =
            true; // Salvar que terminou
      }
    });
  }

  void nextQuestionExodus() {
    setState(() {
      if (currentQuestionIndexExodus < mockGameData.exodus.length - 1) {
        currentQuestionIndexExodus++;
        PreferencesManagerBook.instance.currentQuestionIndexExodus =
            currentQuestionIndexExodus; // Salvar o índice
      } else {
        isFinishedExodus = true;
        PreferencesManagerBook.instance.isFinishedExodus =
            true; // Salvar que terminou
      }
    });
  }

  void nextQuestionLeviticus() {
    setState(() {
      if (currentQuestionIndexLeviticus < mockGameData.leviticus.length - 1) {
        currentQuestionIndexLeviticus++;
        PreferencesManagerBook.instance.currentQuestionIndexLeviticus =
            currentQuestionIndexLeviticus; // Salvar o índice
      } else {
        isFinishedLeviticus = true;
        PreferencesManagerBook.instance.isFinishedLeviticus =
            true; // Salvar que terminou
      }
    });
  }

  void nextQuestionNumbers() {
    setState(() {
      if (currentQuestionIndexNumbers < mockGameData.numbers.length - 1) {
        currentQuestionIndexNumbers++;
        PreferencesManagerBook.instance.currentQuestionIndexNumbers =
            currentQuestionIndexNumbers; // Salvar o índice
      } else {
        isFinishedNumbers = true;
        PreferencesManagerBook.instance.isFinishedNumbers =
            true; // Salvar que terminou
      }
    });
  }

  void nextQuestionDeuteronomy() {
    setState(() {
      if (currentQuestionIndexDeuteronomy <
          mockGameData.deuteronomy.length - 1) {
        currentQuestionIndexDeuteronomy++;
        PreferencesManagerBook.instance.currentQuestionIndexDeuteronomy =
            currentQuestionIndexDeuteronomy; // Salvar o índice
      } else {
        isFinishedDeuteronomy = true;
        PreferencesManagerBook.instance.isFinishedDeuteronomy =
            true; // Salvar que terminou
      }
    });
  }

  void nextQuestionJosue() {
    setState(() {
      if (currentQuestionIndexJosue < mockGameData.josue.length - 1) {
        currentQuestionIndexJosue++;
        PreferencesManagerBook.instance.currentQuestionIndexJosue =
            currentQuestionIndexJosue; // Salvar o índice
      } else {
        isFinishedJosue = true;
        PreferencesManagerBook.instance.isFinishedJosue =
            true; // Salvar que terminou
      }
    });
  }

  void nextQuestionJudges() {
    setState(() {
      if (currentQuestionIndexJudges < mockGameData.judges.length - 1) {
        currentQuestionIndexJudges++;
        PreferencesManagerBook.instance.currentQuestionIndexJudges =
            currentQuestionIndexJudges; // Salvar o índice
      } else {
        isFinishedJudges = true;
        PreferencesManagerBook.instance.isFinishedJudges =
            true; // Salvar que terminou
      }
    });
  }

  void nextQuestionRuth() {
    setState(() {
      if (currentQuestionIndexRuth < mockGameData.ruth.length - 1) {
        currentQuestionIndexRuth++;
        PreferencesManagerBook.instance.currentQuestionIndexRuth =
            currentQuestionIndexRuth; // Salvar o índice
      } else {
        isFinishedRuth = true;
        PreferencesManagerBook.instance.isFinishedRuth =
            true; // Salvar que terminou
      }
    });
  }

  void nextQuestion1Samuel() {
    setState(() {
      if (currentQuestionIndex1Samuel < mockGameData.samuel1.length - 1) {
        currentQuestionIndex1Samuel++;
        PreferencesManagerBook.instance.currentQuestionIndex1Samuel =
            currentQuestionIndex1Samuel;
        // Salvar o índice
      } else {
        isFinished1Samuel = true;
        PreferencesManagerBook.instance.isFinished1Samuel = true;
        // Salvar que terminou
      }
    });
  }

  void nextQuestion2Samuel() {
    setState(() {
      if (currentQuestionIndex2Samuel < mockGameData.samuel2.length - 1) {
        currentQuestionIndex2Samuel++;
        PreferencesManagerBook.instance.currentQuestionIndex2Samuel =
            currentQuestionIndex2Samuel;
        // Salvar o índice
      } else {
        isFinished2Samuel = true;
        PreferencesManagerBook.instance.isFinished2Samuel = true;
        // Salvar que terminou
      }
    });
  }

  void nextQuestion1Reis() {
    setState(() {
      if (currentQuestionIndex1Reis < mockGameData.kings1.length - 1) {
        currentQuestionIndex1Reis++;
        PreferencesManagerBook.instance.currentQuestionIndex1Reis =
            currentQuestionIndex1Reis;
        // Salvar o índice
      } else {
        isFinished1Reis = true;
        PreferencesManagerBook.instance.isFinished1Reis = true;
        // Salvar que terminou
      }
    });
  }

  void nextQuestion2Reis() {
    setState(() {
      if (currentQuestionIndex2Reis < mockGameData.kings2.length - 1) {
        currentQuestionIndex2Reis++;
        PreferencesManagerBook.instance.currentQuestionIndex2Reis =
            currentQuestionIndex2Reis;
        // Salvar o índice
      } else {
        isFinished2Reis = true;
        PreferencesManagerBook.instance.isFinished2Reis = true;
        // Salvar que terminou
      }
    });
  }

  void nextQuestion1Cronicas() {
    setState(() {
      if (currentQuestionIndex1Cronicas < mockGameData.chronicles1.length - 1) {
        currentQuestionIndex1Cronicas++;
        PreferencesManagerBook.instance.currentQuestionIndex1Cronicas =
            currentQuestionIndex1Cronicas;
        // Salvar o índice
      } else {
        isFinished1Cronicas = true;
        PreferencesManagerBook.instance.isFinished1Cronicas = true;
        // Salvar que terminou
      }
    });
  }

  void nextQuestion2Cronicas() {
    setState(() {
      if (currentQuestionIndex2Cronicas < mockGameData.chronicles2.length - 1) {
        currentQuestionIndex2Cronicas++;
        PreferencesManagerBook.instance.currentQuestionIndex2Cronicas =
            currentQuestionIndex2Cronicas;
        // Salvar o índice
      } else {
        isFinished2Cronicas = true;
        PreferencesManagerBook.instance.isFinished2Cronicas = true;
        // Salvar que terminou
      }
    });
  }

  void nextQuestionEsdras() {
    setState(() {
      if (currentQuestionIndexEsdras < mockGameData.ezra.length - 1) {
        currentQuestionIndexEsdras++;
        PreferencesManagerBook.instance.currentQuestionIndexEsdras =
            currentQuestionIndexEsdras;
        // Salvar o índice
      } else {
        isFinishedEsdras = true;
        PreferencesManagerBook.instance.isFinishedEsdras = true;
        // Salvar que terminou
      }
    });
  }

  void nextQuestionNeemias() {
    setState(() {
      if (currentQuestionIndexNeemias < mockGameData.nehemiah.length - 1) {
        currentQuestionIndexNeemias++;
        PreferencesManagerBook.instance.currentQuestionIndexNeemias =
            currentQuestionIndexNeemias;
        // Salvar o índice
      } else {
        isFinishedNeemias = true;
        PreferencesManagerBook.instance.isFinishedNeemias = true;
        // Salvar que terminou
      }
    });
  }

  void nextQuestionEster() {
    setState(() {
      if (currentQuestionIndexEster < mockGameData.ester.length - 1) {
        currentQuestionIndexEster++;
        PreferencesManagerBook.instance.currentQuestionIndexEster =
            currentQuestionIndexEster;
        // Salvar o índice
      } else {
        isFinishedEster = true;
        PreferencesManagerBook.instance.isFinishedEster = true;
        // Salvar que terminou
      }
    });
  }

  void nextQuestionJo() {
    setState(() {
      if (currentQuestionIndexJo < mockGameData.job.length - 1) {
        currentQuestionIndexJo++;
        PreferencesManagerBook.instance.currentQuestionIndexJo =
            currentQuestionIndexJo;
        // Salvar o índice
      } else {
        isFinishedJo = true;
        PreferencesManagerBook.instance.isFinishedJo = true;
        // Salvar que terminou
      }
    });
  }

  void nextQuestionSalmos() {
    setState(() {
      if (currentQuestionIndexSalmos < mockGameData.psalms.length - 1) {
        currentQuestionIndexSalmos++;
        PreferencesManagerBook.instance.currentQuestionIndexSalmos =
            currentQuestionIndexSalmos;
        // Salvar o índice
      } else {
        isFinishedSalmos = true;
        PreferencesManagerBook.instance.isFinishedSalmos = true;
        // Salvar que terminou
      }
    });
  }

  void nextQuestionProverbios() {
    setState(() {
      if (currentQuestionIndexProverbios < mockGameData.proverbs.length - 1) {
        currentQuestionIndexProverbios++;
        PreferencesManagerBook.instance.currentQuestionIndexProverbios =
            currentQuestionIndexProverbios;
        // Salvar o índice
      } else {
        isFinishedProverbios = true;
        PreferencesManagerBook.instance.isFinishedProverbios = true;
        // Salvar que terminou
      }
    });
  }

  void nextQuestionEclesiastes() {
    setState(() {
      if (currentQuestionIndexEclesiastes <
          mockGameData.ecclesiastes.length - 1) {
        currentQuestionIndexEclesiastes++;
        PreferencesManagerBook.instance.currentQuestionIndexEclesiastes =
            currentQuestionIndexEclesiastes;
        // Salvar o índice
      } else {
        isFinishedEclesiastes = true;
        PreferencesManagerBook.instance.isFinishedEclesiastes = true;
        // Salvar que terminou
      }
    });
  }

  void nextQuestionCantares() {
    setState(() {
      if (currentQuestionIndexCantares < mockGameData.songs.length - 1) {
        currentQuestionIndexCantares++;
        PreferencesManagerBook.instance.currentQuestionIndexCantares =
            currentQuestionIndexCantares;
        // Salvar o índice
      } else {
        isFinishedCantares = true;
        PreferencesManagerBook.instance.isFinishedCantares = true;
        // Salvar que terminou
      }
    });
  }

  void nextQuestionIsaias() {
    setState(() {
      if (currentQuestionIndexIsaias < mockGameData.isaiah.length - 1) {
        currentQuestionIndexIsaias++;
        PreferencesManagerBook.instance.currentQuestionIndexIsaias =
            currentQuestionIndexIsaias;
        // Salvar o índice
      } else {
        isFinishedIsaias = true;
        PreferencesManagerBook.instance.isFinishedIsaias = true;
        // Salvar que terminou
      }
    });
  }

  void nextQuestionJeremias() {
    setState(() {
      if (currentQuestionIndexJeremias < mockGameData.jeremiah.length - 1) {
        currentQuestionIndexJeremias++;
        PreferencesManagerBook.instance.currentQuestionIndexJeremias =
            currentQuestionIndexJeremias;
        // Salvar o índice
      } else {
        isFinishedJeremias = true;
        PreferencesManagerBook.instance.isFinishedJeremias = true;
        // Salvar que terminou
      }
    });
  }

  void nextQuestionLamentacoes() {
    setState(() {
      if (currentQuestionIndexLamentacoes <
          mockGameData.lamentations.length - 1) {
        currentQuestionIndexLamentacoes++;
        PreferencesManagerBook.instance.currentQuestionIndexLamentacoes =
            currentQuestionIndexLamentacoes;
        // Salvar o índice
      } else {
        isFinishedLamentacoes = true;
        PreferencesManagerBook.instance.isFinishedLamentacoes = true;
        // Salvar que terminou
      }
    });
  }

  void nextQuestionEzequiel() {
    setState(() {
      if (currentQuestionIndexEzequiel < mockGameData.ezequiel.length - 1) {
        currentQuestionIndexEzequiel++;
        PreferencesManagerBook.instance.currentQuestionIndexEzequiel =
            currentQuestionIndexEzequiel;
        // Salvar o índice
      } else {
        isFinishedEzequiel = true;
        PreferencesManagerBook.instance.isFinishedEzequiel = true;
        // Salvar que terminou
      }
    });
  }

  void nextQuestionDaniel() {
    setState(() {
      if (currentQuestionIndexDaniel < mockGameData.daniel.length - 1) {
        currentQuestionIndexDaniel++;
        PreferencesManagerBook.instance.currentQuestionIndexDaniel =
            currentQuestionIndexDaniel;
        // Salvar o índice
      } else {
        isFinishedDaniel = true;
        PreferencesManagerBook.instance.isFinishedDaniel = true;
        // Salvar que terminou
      }
    });
  }

  void nextQuestionOseias() {
    setState(() {
      if (currentQuestionIndexOseias < mockGameData.hosea.length - 1) {
        currentQuestionIndexOseias++;
        PreferencesManagerBook.instance.currentQuestionIndexOseias =
            currentQuestionIndexOseias;
        // Salvar o índice
      } else {
        isFinishedOseias = true;
        PreferencesManagerBook.instance.isFinishedOseias = true;
        // Salvar que terminou
      }
    });
  }

  void nextQuestionJoel() {
    setState(() {
      if (currentQuestionIndexJoel < mockGameData.joel.length - 1) {
        currentQuestionIndexJoel++;
        PreferencesManagerBook.instance.currentQuestionIndexJoel =
            currentQuestionIndexJoel;
        // Salvar o índice
      } else {
        isFinishedJoel = true;
        PreferencesManagerBook.instance.isFinishedJoel = true;
        // Salvar que terminou
      }
    });
  }

  void nextQuestionAmos() {
    setState(() {
      if (currentQuestionIndexAmos < mockGameData.amos.length - 1) {
        currentQuestionIndexAmos++;
        PreferencesManagerBook.instance.currentQuestionIndexAmos =
            currentQuestionIndexAmos;
        // Salvar o índice
      } else {
        isFinishedAmos = true;
        PreferencesManagerBook.instance.isFinishedAmos = true;
        // Salvar que terminou
      }
    });
  }

  void nextQuestionObadias() {
    setState(() {
      if (currentQuestionIndexObadias < mockGameData.obadiah.length - 1) {
        currentQuestionIndexObadias++;
        PreferencesManagerBook.instance.currentQuestionIndexObadias =
            currentQuestionIndexObadias;
        // Salvar o índice
      } else {
        isFinishedObadias = true;
        PreferencesManagerBook.instance.isFinishedObadias = true;
        // Salvar que terminou
      }
    });
  }

  void nextQuestionJonas() {
    setState(() {
      if (currentQuestionIndexJonas < mockGameData.jonah.length - 1) {
        currentQuestionIndexJonas++;
        PreferencesManagerBook.instance.currentQuestionIndexJonas =
            currentQuestionIndexJonas;
        // Salvar o índice
      } else {
        isFinishedJonas = true;
        PreferencesManagerBook.instance.isFinishedJonas = true;
        // Salvar que terminou
      }
    });
  }

  void nextQuestionMiqueias() {
    setState(() {
      if (currentQuestionIndexMiqueias < mockGameData.micah.length - 1) {
        currentQuestionIndexMiqueias++;
        PreferencesManagerBook.instance.currentQuestionIndexMiqueias =
            currentQuestionIndexMiqueias;
        // Salvar o índice
      } else {
        isFinishedMiqueias = true;
        PreferencesManagerBook.instance.isFinishedMiqueias = true;
        // Salvar que terminou
      }
    });
  }

  void nextQuestionNaum() {
    setState(() {
      if (currentQuestionIndexNaum < mockGameData.no.length - 1) {
        currentQuestionIndexNaum++;
        PreferencesManagerBook.instance.currentQuestionIndexNaum =
            currentQuestionIndexNaum;
        // Salvar o índice
      } else {
        isFinishedNaum = true;
        PreferencesManagerBook.instance.isFinishedNaum = true;
        // Salvar que terminou
      }
    });
  }

  void nextQuestionHabacuque() {
    setState(() {
      if (currentQuestionIndexHabacuque < mockGameData.habakkuk.length - 1) {
        currentQuestionIndexHabacuque++;
        PreferencesManagerBook.instance.currentQuestionIndexHabacuque =
            currentQuestionIndexHabacuque;
        // Salvar o índice
      } else {
        isFinishedHabacuque = true;
        PreferencesManagerBook.instance.isFinishedHabacuque = true;
        // Salvar que terminou
      }
    });
  }

  void nextQuestionSofonias() {
    setState(() {
      if (currentQuestionIndexSofonias < mockGameData.zephanies.length - 1) {
        currentQuestionIndexSofonias++;
        PreferencesManagerBook.instance.currentQuestionIndexSofonias =
            currentQuestionIndexSofonias;
        // Salvar o índice
      } else {
        isFinishedSofonias = true;
        PreferencesManagerBook.instance.isFinishedSofonias = true;
        // Salvar que terminou
      }
    });
  }

  void nextQuestionAgeu() {
    setState(() {
      if (currentQuestionIndexAgeu < mockGameData.haggai.length - 1) {
        currentQuestionIndexAgeu++;
        PreferencesManagerBook.instance.currentQuestionIndexAgeu =
            currentQuestionIndexAgeu;
        // Salvar o índice
      } else {
        isFinishedAgeu = true;
        PreferencesManagerBook.instance.isFinishedAgeu = true;
        // Salvar que terminou
      }
    });
  }

  void nextQuestionZacarias() {
    setState(() {
      if (currentQuestionIndexZacarias < mockGameData.zechariah.length - 1) {
        currentQuestionIndexZacarias++;
        PreferencesManagerBook.instance.currentQuestionIndexZacarias =
            currentQuestionIndexZacarias;
        // Salvar o índice
      } else {
        isFinishedZacarias = true;
        PreferencesManagerBook.instance.isFinishedZacarias = true;
        // Salvar que terminou
      }
    });
  }

  void nextQuestionMalaquias() {
    setState(() {
      if (currentQuestionIndexMalaquias < mockGameData.malachi.length - 1) {
        currentQuestionIndexMalaquias++;
        PreferencesManagerBook.instance.currentQuestionIndexMalaquias =
            currentQuestionIndexMalaquias;
        // Salvar o índice
      } else {
        isFinishedMalaquias = true;
        PreferencesManagerBook.instance.isFinishedMalaquias = true;
        // Salvar que terminou
      }
    });
  }

  void nextQuestionMateus() {
    setState(() {
      if (currentQuestionIndexMateus < mockGameData.mateus.length - 1) {
        currentQuestionIndexMateus++;
        PreferencesManagerBook.instance.currentQuestionIndexMateus =
            currentQuestionIndexMateus;
        // Salvar o índice
      } else {
        isFinishedMateus = true;
        PreferencesManagerBook.instance.isFinishedMateus = true;
        // Salvar que terminou
      }
    });
  }

  void nextQuestionMarcos() {
    setState(() {
      if (currentQuestionIndexMarcos < mockGameData.frames.length - 1) {
        currentQuestionIndexMarcos++;
        PreferencesManagerBook.instance.currentQuestionIndexMarcos =
            currentQuestionIndexMarcos;
        // Salvar o índice
      } else {
        isFinishedMarcos = true;
        PreferencesManagerBook.instance.isFinishedMarcos = true;
        // Salvar que terminou
      }
    });
  }

  void nextQuestionLucas() {
    setState(() {
      if (currentQuestionIndexLucas < mockGameData.lucas.length - 1) {
        currentQuestionIndexLucas++;
        PreferencesManagerBook.instance.currentQuestionIndexLucas =
            currentQuestionIndexLucas;
        // Salvar o índice
      } else {
        isFinishedLucas = true;
        PreferencesManagerBook.instance.isFinishedLucas = true;
        // Salvar que terminou
      }
    });
  }

  void nextQuestionJoao() {
    setState(() {
      if (currentQuestionIndexJoao < mockGameData.jonah.length - 1) {
        currentQuestionIndexJoao++;
        PreferencesManagerBook.instance.currentQuestionIndexJoao =
            currentQuestionIndexJoao;
        // Salvar o índice
      } else {
        isFinishedJoao = true;
        PreferencesManagerBook.instance.isFinishedJoao = true;
        // Salvar que terminou
      }
    });
  }

  void nextQuestionAtos() {
    setState(() {
      if (currentQuestionIndexAtos < mockGameData.acts.length - 1) {
        currentQuestionIndexAtos++;
        PreferencesManagerBook.instance.currentQuestionIndexAtos =
            currentQuestionIndexAtos;
        // Salvar o índice
      } else {
        isFinishedAtos = true;
        PreferencesManagerBook.instance.isFinishedAtos = true;
        // Salvar que terminou
      }
    });
  }

  void nextQuestionRomanos() {
    setState(() {
      if (currentQuestionIndexRomanos < mockGameData.romans.length - 1) {
        currentQuestionIndexRomanos++;
        PreferencesManagerBook.instance.currentQuestionIndexRomanos =
            currentQuestionIndexRomanos;
        // Salvar o índice
      } else {
        isFinishedRomanos = true;
        PreferencesManagerBook.instance.isFinishedRomanos = true;
        // Salvar que terminou
      }
    });
  }

  void nextQuestion1Corintios() {
    setState(() {
      if (currentQuestionIndex1Corintios <
          mockGameData.corinthians1.length - 1) {
        currentQuestionIndex1Corintios++;
        PreferencesManagerBook.instance.currentQuestionIndex1Corintios =
            currentQuestionIndex1Corintios;
        // Salvar o índice
      } else {
        isFinished1Corintios = true;
        PreferencesManagerBook.instance.isFinished1Corintios = true;
        // Salvar que terminou
      }
    });
  }

  void nextQuestion2Corintios() {
    setState(() {
      if (currentQuestionIndex2Corintios <
          mockGameData.corinthians2.length - 1) {
        currentQuestionIndex2Corintios++;
        PreferencesManagerBook.instance.currentQuestionIndex2Corintios =
            currentQuestionIndex2Corintios;
        // Salvar o índice
      } else {
        isFinished2Corintios = true;
        PreferencesManagerBook.instance.isFinished2Corintios = true;
        // Salvar que terminou
      }
    });
  }

  void nextQuestionGalatas() {
    setState(() {
      if (currentQuestionIndexGalatas < mockGameData.galatians.length - 1) {
        currentQuestionIndexGalatas++;
        PreferencesManagerBook.instance.currentQuestionIndexGalatas =
            currentQuestionIndexGalatas;
        // Salvar o índice
      } else {
        isFinishedGalatas = true;
        PreferencesManagerBook.instance.isFinishedGalatas = true;
        // Salvar que terminou
      }
    });
  }

  void nextQuestionEfesios() {
    setState(() {
      if (currentQuestionIndexEfesios < mockGameData.ephesians.length - 1) {
        currentQuestionIndexEfesios++;
        PreferencesManagerBook.instance.currentQuestionIndexEfesios =
            currentQuestionIndexEfesios;
        // Salvar o índice
      } else {
        isFinishedEfesios = true;
        PreferencesManagerBook.instance.isFinishedEfesios = true;
        // Salvar que terminou
      }
    });
  }

  void nextQuestionFilipenses() {
    setState(() {
      if (currentQuestionIndexFilipenses <
          mockGameData.philippians.length - 1) {
        currentQuestionIndexFilipenses++;
        PreferencesManagerBook.instance.currentQuestionIndexFilipenses =
            currentQuestionIndexFilipenses;
        // Salvar o índice
      } else {
        isFinishedFilipenses = true;
        PreferencesManagerBook.instance.isFinishedFilipenses = true;
        // Salvar que terminou
      }
    });
  }

  void nextQuestionColossenses() {
    setState(() {
      if (currentQuestionIndexColossenses <
          mockGameData.colossians.length - 1) {
        currentQuestionIndexColossenses++;
        PreferencesManagerBook.instance.currentQuestionIndexColossenses =
            currentQuestionIndexColossenses;
        // Salvar o índice
      } else {
        isFinishedColossenses = true;
        PreferencesManagerBook.instance.isFinishedColossenses = true;
        // Salvar que terminou
      }
    });
  }

  void nextQuestion1Tessalonenses() {
    setState(() {
      if (currentQuestionIndex1Tessalonenses <
          mockGameData.thessalonians1.length - 1) {
        currentQuestionIndex1Tessalonenses++;
        PreferencesManagerBook.instance.currentQuestionIndex1Tessalonenses =
            currentQuestionIndex1Tessalonenses;
        // Salvar o índice
      } else {
        isFinished1Tessalonenses = true;
        PreferencesManagerBook.instance.isFinished1Tessalonenses = true;
        // Salvar que terminou
      }
    });
  }

  void nextQuestion2Tessalonenses() {
    setState(() {
      if (currentQuestionIndex2Tessalonenses <
          mockGameData.thessalonians2.length - 1) {
        currentQuestionIndex2Tessalonenses++;
        PreferencesManagerBook.instance.currentQuestionIndex2Tessalonenses =
            currentQuestionIndex2Tessalonenses;
        // Salvar o índice
      } else {
        isFinished2Tessalonenses = true;
        PreferencesManagerBook.instance.isFinished2Tessalonenses = true;
        // Salvar que terminou
      }
    });
  }

  void nextQuestion1Timoteo() {
    setState(() {
      if (currentQuestionIndex1Timoteo < mockGameData.timothy1.length - 1) {
        currentQuestionIndex1Timoteo++;
        PreferencesManagerBook.instance.currentQuestionIndex1Timoteo =
            currentQuestionIndex1Timoteo;
        // Salvar o índice
      } else {
        isFinished1Timoteo = true;
        PreferencesManagerBook.instance.isFinished1Timoteo = true;
        // Salvar que terminou
      }
    });
  }

  void nextQuestion2Timoteo() {
    setState(() {
      if (currentQuestionIndex2Timoteo < mockGameData.timothy2.length - 1) {
        currentQuestionIndex2Timoteo++;
        PreferencesManagerBook.instance.currentQuestionIndex2Timoteo =
            currentQuestionIndex2Timoteo;
        // Salvar o índice
      } else {
        isFinished2Timoteo = true;
        PreferencesManagerBook.instance.isFinished2Timoteo = true;
        // Salvar que terminou
      }
    });
  }

  void nextQuestionTito() {
    setState(() {
      if (currentQuestionIndexTito < mockGameData.tito.length - 1) {
        currentQuestionIndexTito++;
        PreferencesManagerBook.instance.currentQuestionIndexTito =
            currentQuestionIndexTito;
        // Salvar o índice
      } else {
        isFinishedTito = true;
        PreferencesManagerBook.instance.isFinishedTito = true;
        // Salvar que terminou
      }
    });
  }

  void nextQuestionFilemom() {
    setState(() {
      if (currentQuestionIndexFilemom < mockGameData.philemon.length - 1) {
        currentQuestionIndexFilemom++;
        PreferencesManagerBook.instance.currentQuestionIndexFilemom =
            currentQuestionIndexFilemom;
        // Salvar o índice
      } else {
        isFinishedFilemom = true;
        PreferencesManagerBook.instance.isFinishedFilemom = true;
        // Salvar que terminou
      }
    });
  }

  void nextQuestionHebreus() {
    setState(() {
      if (currentQuestionIndexHebreus < mockGameData.hebrews.length - 1) {
        currentQuestionIndexHebreus++;
        PreferencesManagerBook.instance.currentQuestionIndexHebreus =
            currentQuestionIndexHebreus;
        // Salvar o índice
      } else {
        isFinishedHebreus = true;
        PreferencesManagerBook.instance.isFinishedHebreus = true;
        // Salvar que terminou
      }
    });
  }

  void nextQuestionTiago() {
    setState(() {
      if (currentQuestionIndexTiago < mockGameData.tiago.length - 1) {
        currentQuestionIndexTiago++;
        PreferencesManagerBook.instance.currentQuestionIndexTiago =
            currentQuestionIndexTiago;
        // Salvar o índice
      } else {
        isFinishedTiago = true;
        PreferencesManagerBook.instance.isFinishedTiago = true;
        // Salvar que terminou
      }
    });
  }

  void nextQuestion1Pedro() {
    setState(() {
      if (currentQuestionIndex1Pedro < mockGameData.peter1.length - 1) {
        currentQuestionIndex1Pedro++;
        PreferencesManagerBook.instance.currentQuestionIndex1Pedro =
            currentQuestionIndex1Pedro;
        // Salvar o índice
      } else {
        isFinished1Pedro = true;
        PreferencesManagerBook.instance.isFinished1Pedro = true;
        // Salvar que terminou
      }
    });
  }

  void nextQuestion2Pedro() {
    setState(() {
      if (currentQuestionIndex2Pedro < mockGameData.peter2.length - 1) {
        currentQuestionIndex2Pedro++;
        PreferencesManagerBook.instance.currentQuestionIndex2Pedro =
            currentQuestionIndex2Pedro;
        // Salvar o índice
      } else {
        isFinished2Pedro = true;
        PreferencesManagerBook.instance.isFinished2Pedro = true;
        // Salvar que terminou
      }
    });
  }

  void nextQuestion1Joao() {
    setState(() {
      if (currentQuestionIndex1Joao < mockGameData.john1.length - 1) {
        currentQuestionIndex1Joao++;
        PreferencesManagerBook.instance.currentQuestionIndex1Joao =
            currentQuestionIndex1Joao;
        // Salvar o índice
      } else {
        isFinished1Joao = true;
        PreferencesManagerBook.instance.isFinished1Joao = true;
        // Salvar que terminou
      }
    });
  }

  void nextQuestion2Joao() {
    setState(() {
      if (currentQuestionIndex2Joao < mockGameData.john2.length - 1) {
        currentQuestionIndex2Joao++;
        PreferencesManagerBook.instance.currentQuestionIndex2Joao =
            currentQuestionIndex2Joao;
        // Salvar o índice
      } else {
        isFinished2Joao = true;
        PreferencesManagerBook.instance.isFinished2Joao = true;
        // Salvar que terminou
      }
    });
  }

  void nextQuestion3Joao() {
    setState(() {
      if (currentQuestionIndex3Joao < mockGameData.john3.length - 1) {
        currentQuestionIndex3Joao++;
        PreferencesManagerBook.instance.currentQuestionIndex3Joao =
            currentQuestionIndex3Joao;
        // Salvar o índice
      } else {
        isFinished3Joao = true;
        PreferencesManagerBook.instance.isFinished3Joao = true;
        // Salvar que terminou
      }
    });
  }

  void nextQuestionJudas() {
    setState(() {
      if (currentQuestionIndexJudas < mockGameData.judas.length - 1) {
        currentQuestionIndexJudas++;
        PreferencesManagerBook.instance.currentQuestionIndexJudas =
            currentQuestionIndexJudas;
        // Salvar o índice
      } else {
        isFinishedJudas = true;
        PreferencesManagerBook.instance.isFinishedJudas = true;
        // Salvar que terminou
      }
    });
  }

  void nextQuestionApocalipse() {
    setState(() {
      if (currentQuestionIndexApocalipse < mockGameData.apocalypse.length - 1) {
        currentQuestionIndexApocalipse++;
        PreferencesManagerBook.instance.currentQuestionIndexApocalipse =
            currentQuestionIndexApocalipse;
        // Salvar o índice
      } else {
        isFinishedApocalipse = true;
        PreferencesManagerBook.instance.isFinishedApocalipse = true;
        // Salvar que terminou
      }
    });
  }

  Future<void> resetProgressGenesis() async {
    await PreferencesManagerBook.instance.resetProgressGenesis();
    setState(() {
      currentQuestionIndexGenesis = 0;
      isFinishedGenesis = false;
    });
  }

  Future<void> resetProgressExodus() async {
    await PreferencesManagerBook.instance.resetProgressExodus();
    setState(() {
      currentQuestionIndexExodus = 0;
      isFinishedExodus = false;
    });
  }

  Future<void> resetProgressLeviticus() async {
    await PreferencesManagerBook.instance.resetProgressLeviticus();
    setState(() {
      currentQuestionIndexLeviticus = 0;
      isFinishedLeviticus = false;
    });
  }

  Future<void> resetProgressNumbers() async {
    await PreferencesManagerBook.instance.resetProgressNumbers();
    setState(() {
      currentQuestionIndexNumbers = 0;
      isFinishedNumbers = false;
    });
  }

  Future<void> resetProgressDeuteronomy() async {
    await PreferencesManagerBook.instance.resetProgressDeuteronomy();
    setState(() {
      currentQuestionIndexDeuteronomy = 0;
      isFinishedDeuteronomy = false;
    });
  }

  Future<void> resetProgressJosue() async {
    await PreferencesManagerBook.instance.resetProgressJosue();
    setState(() {
      currentQuestionIndexJosue = 0;
      isFinishedJosue = false;
    });
  }

  Future<void> resetProgressJudges() async {
    await PreferencesManagerBook.instance.resetProgressJudges();
    setState(() {
      currentQuestionIndexJudges = 0;
      isFinishedJudges = false;
    });
  }

  Future<void> resetProgressRuth() async {
    await PreferencesManagerBook.instance.resetProgressRuth();
    setState(() {
      currentQuestionIndexRuth = 0;
      isFinishedRuth = false;
    });
  }

  Future<void> resetProgress1Samuel() async {
    await PreferencesManagerBook.instance.resetProgress1Samuel();
    setState(() {
      currentQuestionIndex1Samuel = 0;
      isFinished1Samuel = false;
    });
  }

  Future<void> resetProgress2Samuel() async {
    await PreferencesManagerBook.instance.resetProgress2Samuel();
    setState(() {
      currentQuestionIndex2Samuel = 0;
      isFinished2Samuel = false;
    });
  }

  Future<void> resetProgress1Reis() async {
    await PreferencesManagerBook.instance.resetProgress1Reis();
    setState(() {
      currentQuestionIndex1Reis = 0;
      isFinished1Reis = false;
    });
  }

  Future<void> resetProgress2Reis() async {
    await PreferencesManagerBook.instance.resetProgress2Reis();
    setState(() {
      currentQuestionIndex2Reis = 0;
      isFinished2Reis = false;
    });
  }

  Future<void> resetProgress1Cronicas() async {
    await PreferencesManagerBook.instance.resetProgress1Cronicas();
    setState(() {
      currentQuestionIndex1Cronicas = 0;
      isFinished1Cronicas = false;
    });
  }

  Future<void> resetProgress2Cronicas() async {
    await PreferencesManagerBook.instance.resetProgress2Cronicas();
    setState(() {
      currentQuestionIndex2Cronicas = 0;
      isFinished2Cronicas = false;
    });
  }

  Future<void> resetProgressEsdras() async {
    await PreferencesManagerBook.instance.resetProgressEsdras();
    setState(() {
      currentQuestionIndexEsdras = 0;
      isFinishedEsdras = false;
    });
  }

  Future<void> resetProgressNeemias() async {
    await PreferencesManagerBook.instance.resetProgressNeemias();
    setState(() {
      currentQuestionIndexNeemias = 0;
      isFinishedNeemias = false;
    });
  }

  Future<void> resetProgressEster() async {
    await PreferencesManagerBook.instance.resetProgressEster();
    setState(() {
      currentQuestionIndexEster = 0;
      isFinishedEster = false;
    });
  }

  Future<void> resetProgressJo() async {
    await PreferencesManagerBook.instance.resetProgressJo();
    setState(() {
      currentQuestionIndexJo = 0;
      isFinishedJo = false;
    });
  }

  Future<void> resetProgressSalmos() async {
    await PreferencesManagerBook.instance.resetProgressSalmos();
    setState(() {
      currentQuestionIndexSalmos = 0;
      isFinishedSalmos = false;
    });
  }

  Future<void> resetProgressProverbios() async {
    await PreferencesManagerBook.instance.resetProgressProverbios();
    setState(() {
      currentQuestionIndexProverbios = 0;
      isFinishedProverbios = false;
    });
  }

  Future<void> resetProgressEclesiastes() async {
    await PreferencesManagerBook.instance.resetProgressEclesiastes();
    setState(() {
      currentQuestionIndexEclesiastes = 0;
      isFinishedEclesiastes = false;
    });
  }

  Future<void> resetProgressCantares() async {
    await PreferencesManagerBook.instance.resetProgressCantares();
    setState(() {
      currentQuestionIndexCantares = 0;
      isFinishedCantares = false;
    });
  }

  Future<void> resetProgressIsaias() async {
    await PreferencesManagerBook.instance.resetProgressIsaias();
    setState(() {
      currentQuestionIndexIsaias = 0;
      isFinishedIsaias = false;
    });
  }

  Future<void> resetProgressJeremias() async {
    await PreferencesManagerBook.instance.resetProgressJeremias();
    setState(() {
      currentQuestionIndexJeremias = 0;
      isFinishedJeremias = false;
    });
  }

  Future<void> resetProgressLamentacoes() async {
    await PreferencesManagerBook.instance.resetProgressLamentacoes();
    setState(() {
      currentQuestionIndexLamentacoes = 0;
      isFinishedLamentacoes = false;
    });
  }

  Future<void> resetProgressEzequiel() async {
    await PreferencesManagerBook.instance.resetProgressEzequiel();
    setState(() {
      currentQuestionIndexEzequiel = 0;
      isFinishedEzequiel = false;
    });
  }

  Future<void> resetProgressDaniel() async {
    await PreferencesManagerBook.instance.resetProgressDaniel();
    setState(() {
      currentQuestionIndexDaniel = 0;
      isFinishedDaniel = false;
    });
  }

  Future<void> resetProgressOseias() async {
    await PreferencesManagerBook.instance.resetProgressOseias();
    setState(() {
      currentQuestionIndexOseias = 0;
      isFinishedOseias = false;
    });
  }

  Future<void> resetProgressJoel() async {
    await PreferencesManagerBook.instance.resetProgressJoel();
    setState(() {
      currentQuestionIndexJoel = 0;
      isFinishedJoel = false;
    });
  }

  Future<void> resetProgressAmos() async {
    await PreferencesManagerBook.instance.resetProgressAmos();
    setState(() {
      currentQuestionIndexAmos = 0;
      isFinishedAmos = false;
    });
  }

  Future<void> resetProgressObadias() async {
    await PreferencesManagerBook.instance.resetProgressObadias();
    setState(() {
      currentQuestionIndexObadias = 0;
      isFinishedObadias = false;
    });
  }

  Future<void> resetProgressJonas() async {
    await PreferencesManagerBook.instance.resetProgressJonas();
    setState(() {
      currentQuestionIndexJonas = 0;
      isFinishedJonas = false;
    });
  }

  Future<void> resetProgressMiqueias() async {
    await PreferencesManagerBook.instance.resetProgressMiqueias();
    setState(() {
      currentQuestionIndexMiqueias = 0;
      isFinishedMiqueias = false;
    });
  }

  Future<void> resetProgressNaum() async {
    await PreferencesManagerBook.instance.resetProgressNaum();
    setState(() {
      currentQuestionIndexNaum = 0;
      isFinishedNaum = false;
    });
  }

  Future<void> resetProgressHabacuque() async {
    await PreferencesManagerBook.instance.resetProgressHabacuque();
    setState(() {
      currentQuestionIndexHabacuque = 0;
      isFinishedHabacuque = false;
    });
  }

  Future<void> resetProgressSofonias() async {
    await PreferencesManagerBook.instance.resetProgressSofonias();
    setState(() {
      currentQuestionIndexSofonias = 0;
      isFinishedSofonias = false;
    });
  }

  Future<void> resetProgressAgeu() async {
    await PreferencesManagerBook.instance.resetProgressAgeu();
    setState(() {
      currentQuestionIndexAgeu = 0;
      isFinishedAgeu = false;
    });
  }

  Future<void> resetProgressZacarias() async {
    await PreferencesManagerBook.instance.resetProgressZacarias();
    setState(() {
      currentQuestionIndexZacarias = 0;
      isFinishedZacarias = false;
    });
  }

  Future<void> resetProgressMalaquias() async {
    await PreferencesManagerBook.instance.resetProgressMalaquias();
    setState(() {
      currentQuestionIndexMalaquias = 0;
      isFinishedMalaquias = false;
    });
  }

  Future<void> resetProgressMateus() async {
    await PreferencesManagerBook.instance.resetProgressMateus();
    setState(() {
      currentQuestionIndexMateus = 0;
      isFinishedMateus = false;
    });
  }

  Future<void> resetProgressMarcos() async {
    await PreferencesManagerBook.instance.resetProgressMarcos();
    setState(() {
      currentQuestionIndexMarcos = 0;
      isFinishedMarcos = false;
    });
  }

  Future<void> resetProgressLucas() async {
    await PreferencesManagerBook.instance.resetProgressLucas();
    setState(() {
      currentQuestionIndexLucas = 0;
      isFinishedLucas = false;
    });
  }

  Future<void> resetProgressJoao() async {
    await PreferencesManagerBook.instance.resetProgressJoao();
    setState(() {
      currentQuestionIndexJoao = 0;
      isFinishedJoao = false;
    });
  }

  Future<void> resetProgressAtos() async {
    await PreferencesManagerBook.instance.resetProgressAtos();
    setState(() {
      currentQuestionIndexAtos = 0;
      isFinishedAtos = false;
    });
  }

  Future<void> resetProgressRomanos() async {
    await PreferencesManagerBook.instance.resetProgressRomanos();
    setState(() {
      currentQuestionIndexRomanos = 0;
      isFinishedRomanos = false;
    });
  }

  Future<void> resetProgress1Corintios() async {
    await PreferencesManagerBook.instance.resetProgress1Corintios();
    setState(() {
      currentQuestionIndex1Corintios = 0;
      isFinished1Corintios = false;
    });
  }

  Future<void> resetProgress2Corintios() async {
    await PreferencesManagerBook.instance.resetProgress2Corintios();
    setState(() {
      currentQuestionIndex2Corintios = 0;
      isFinished2Corintios = false;
    });
  }

  Future<void> resetProgressGalatas() async {
    await PreferencesManagerBook.instance.resetProgressGalatas();
    setState(() {
      currentQuestionIndexGalatas = 0;
      isFinishedGalatas = false;
    });
  }

  Future<void> resetProgressEfesios() async {
    await PreferencesManagerBook.instance.resetProgressEfesios();
    setState(() {
      currentQuestionIndexEfesios = 0;
      isFinishedEfesios = false;
    });
  }

  Future<void> resetProgressFilipenses() async {
    await PreferencesManagerBook.instance.resetProgressFilipenses();
    setState(() {
      currentQuestionIndexFilipenses = 0;
      isFinishedFilipenses = false;
    });
  }

  Future<void> resetProgressColossenses() async {
    await PreferencesManagerBook.instance.resetProgressColossenses();
    setState(() {
      currentQuestionIndexColossenses = 0;
      isFinishedColossenses = false;
    });
  }

  Future<void> resetProgress1Tessalonenses() async {
    await PreferencesManagerBook.instance.resetProgress1Tessalonenses();
    setState(() {
      currentQuestionIndex1Tessalonenses = 0;
      isFinished1Tessalonenses = false;
    });
  }

  Future<void> resetProgress2Tessalonenses() async {
    await PreferencesManagerBook.instance.resetProgress2Tessalonenses();
    setState(() {
      currentQuestionIndex2Tessalonenses = 0;
      isFinished2Tessalonenses = false;
    });
  }

  Future<void> resetProgress1Timoteo() async {
    await PreferencesManagerBook.instance.resetProgress1Timoteo();
    setState(() {
      currentQuestionIndex1Timoteo = 0;
      isFinished1Timoteo = false;
    });
  }

  Future<void> resetProgress2Timoteo() async {
    await PreferencesManagerBook.instance.resetProgress2Timoteo();
    setState(() {
      currentQuestionIndex2Timoteo = 0;
      isFinished2Timoteo = false;
    });
  }

  Future<void> resetProgressTito() async {
    await PreferencesManagerBook.instance.resetProgressTito();
    setState(() {
      currentQuestionIndexTito = 0;
      isFinishedTito = false;
    });
  }

  Future<void> resetProgressFilemom() async {
    await PreferencesManagerBook.instance.resetProgressFilemom();
    setState(() {
      currentQuestionIndexFilemom = 0;
      isFinishedFilemom = false;
    });
  }

  Future<void> resetProgressHebreus() async {
    await PreferencesManagerBook.instance.resetProgressHebreus();
    setState(() {
      currentQuestionIndexHebreus = 0;
      isFinishedHebreus = false;
    });
  }

  Future<void> resetProgressTiago() async {
    await PreferencesManagerBook.instance.resetProgressTiago();
    setState(() {
      currentQuestionIndexTiago = 0;
      isFinishedTiago = false;
    });
  }

  Future<void> resetProgress1Pedro() async {
    await PreferencesManagerBook.instance.resetProgress1Pedro();
    setState(() {
      currentQuestionIndex1Pedro = 0;
      isFinished1Pedro = false;
    });
  }

  Future<void> resetProgress2Pedro() async {
    await PreferencesManagerBook.instance.resetProgress2Pedro();
    setState(() {
      currentQuestionIndex2Pedro = 0;
      isFinished2Pedro = false;
    });
  }

  Future<void> resetProgress1Joao() async {
    await PreferencesManagerBook.instance.resetProgress1Joao();
    setState(() {
      currentQuestionIndex1Joao = 0;
      isFinished1Joao = false;
    });
  }

  Future<void> resetProgress2Joao() async {
    await PreferencesManagerBook.instance.resetProgress2Joao();
    setState(() {
      currentQuestionIndex2Joao = 0;
      isFinished2Joao = false;
    });
  }

  Future<void> resetProgress3Joao() async {
    await PreferencesManagerBook.instance.resetProgress3Joao();
    setState(() {
      currentQuestionIndex3Joao = 0;
      isFinished3Joao = false;
    });
  }

  Future<void> resetProgressJudas() async {
    await PreferencesManagerBook.instance.resetProgressJudas();
    setState(() {
      currentQuestionIndexJudas = 0;
      isFinishedJudas = false;
    });
  }

  Future<void> resetProgressApocalipse() async {
    await PreferencesManagerBook.instance.resetProgressApocalipse();
    setState(() {
      currentQuestionIndexApocalipse = 0;
      isFinishedApocalipse = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    final String nameBook = args['nameBook'];
    //final int number = args['number'];

    final List<VariablesGameModel> genesis =
        args['genesis'] as List<VariablesGameModel>;

    final List<VariablesGameModel> exodus =
        args['exodus'] as List<VariablesGameModel>;

    final List<VariablesGameModel> leviticus =
        args['leviticus'] as List<VariablesGameModel>;

    final List<VariablesGameModel> numbers =
        args['numbers'] as List<VariablesGameModel>;

    final List<VariablesGameModel> deuteronomy =
        args['deuteronomy'] as List<VariablesGameModel>;

    final List<VariablesGameModel> josue =
        args['josue'] as List<VariablesGameModel>;

    final List<VariablesGameModel> judges =
        args['judges'] as List<VariablesGameModel>;

    final List<VariablesGameModel> ruth =
        args['ruth'] as List<VariablesGameModel>;

    final List<VariablesGameModel> samuel1 =
        args['samuel1'] as List<VariablesGameModel>;

    final List<VariablesGameModel> samuel2 =
        args['samuel2'] as List<VariablesGameModel>;

    final List<VariablesGameModel> kings1 =
        args['kings1'] as List<VariablesGameModel>;

    final List<VariablesGameModel> kings2 =
        args['kings2'] as List<VariablesGameModel>;

    final List<VariablesGameModel> chronicles1 =
        args['chronicles1'] as List<VariablesGameModel>;

    final List<VariablesGameModel> chronicles2 =
        args['chronicles2'] as List<VariablesGameModel>;

    final List<VariablesGameModel> ezra =
        args['ezra'] as List<VariablesGameModel>;

    final List<VariablesGameModel> nehemiah =
        args['nehemiah'] as List<VariablesGameModel>;

    final List<VariablesGameModel> ester =
        args['ester'] as List<VariablesGameModel>;

    final List<VariablesGameModel> job =
        args['job'] as List<VariablesGameModel>;

    final List<VariablesGameModel> psalms =
        args['psalms'] as List<VariablesGameModel>;

    final List<VariablesGameModel> proverbs =
        args['proverbs'] as List<VariablesGameModel>;

    final List<VariablesGameModel> ecclesiastes =
        args['ecclesiastes'] as List<VariablesGameModel>;

    final List<VariablesGameModel> songs =
        args['songs'] as List<VariablesGameModel>;

    final List<VariablesGameModel> isaiah =
        args['isaiah'] as List<VariablesGameModel>;

    final List<VariablesGameModel> jeremiah =
        args['jeremiah'] as List<VariablesGameModel>;

    final List<VariablesGameModel> lamentations =
        args['lamentations'] as List<VariablesGameModel>;

    final List<VariablesGameModel> ezequiel =
        args['ezequiel'] as List<VariablesGameModel>;

    final List<VariablesGameModel> daniel =
        args['daniel'] as List<VariablesGameModel>;

    final List<VariablesGameModel> hosea =
        args['hosea'] as List<VariablesGameModel>;

    final List<VariablesGameModel> joel =
        args['joel'] as List<VariablesGameModel>;

    final List<VariablesGameModel> amos =
        args['amos'] as List<VariablesGameModel>;

    final List<VariablesGameModel> obadiah =
        args['obadiah'] as List<VariablesGameModel>;

    final List<VariablesGameModel> jonah =
        args['jonah'] as List<VariablesGameModel>;

    final List<VariablesGameModel> micah =
        args['micah'] as List<VariablesGameModel>;

    final List<VariablesGameModel> no = args['no'] as List<VariablesGameModel>;

    final List<VariablesGameModel> habakkuk =
        args['habakkuk'] as List<VariablesGameModel>;

    final List<VariablesGameModel> zephanies =
        args['zephanies'] as List<VariablesGameModel>;

    final List<VariablesGameModel> haggai =
        args['haggai'] as List<VariablesGameModel>;

    final List<VariablesGameModel> zechariah =
        args['zechariah'] as List<VariablesGameModel>;

    final List<VariablesGameModel> malachi =
        args['malachi'] as List<VariablesGameModel>;

    final List<VariablesGameModel> mateus =
        args['mateus'] as List<VariablesGameModel>;

    final List<VariablesGameModel> frames =
        args['frames'] as List<VariablesGameModel>;

    final List<VariablesGameModel> lucas =
        args['lucas'] as List<VariablesGameModel>;

    final List<VariablesGameModel> john =
        args['john'] as List<VariablesGameModel>;

    final List<VariablesGameModel> acts =
        args['acts'] as List<VariablesGameModel>;

    final List<VariablesGameModel> romans =
        args['romans'] as List<VariablesGameModel>;

    final List<VariablesGameModel> corinthians1 =
        args['corinthians1'] as List<VariablesGameModel>;

    final List<VariablesGameModel> corinthians2 =
        args['corinthians2'] as List<VariablesGameModel>;

    final List<VariablesGameModel> galatians =
        args['galatians'] as List<VariablesGameModel>;

    final List<VariablesGameModel> ephesians =
        args['ephesians'] as List<VariablesGameModel>;

    final List<VariablesGameModel> philippians =
        args['philippians'] as List<VariablesGameModel>;

    final List<VariablesGameModel> colossians =
        args['colossians'] as List<VariablesGameModel>;

    final List<VariablesGameModel> thessalonians1 =
        args['thessalonians1'] as List<VariablesGameModel>;

    final List<VariablesGameModel> thessalonians2 =
        args['thessalonians2'] as List<VariablesGameModel>;

    final List<VariablesGameModel> timothy1 =
        args['timothy1'] as List<VariablesGameModel>;

    final List<VariablesGameModel> timothy2 =
        args['timothy2'] as List<VariablesGameModel>;

    final List<VariablesGameModel> tito =
        args['tito'] as List<VariablesGameModel>;

    final List<VariablesGameModel> philemon =
        args['philemon'] as List<VariablesGameModel>;

    final List<VariablesGameModel> hebrews =
        args['hebrews'] as List<VariablesGameModel>;

    final List<VariablesGameModel> tiago =
        args['tiago'] as List<VariablesGameModel>;

    final List<VariablesGameModel> peter1 =
        args['peter1'] as List<VariablesGameModel>;

    final List<VariablesGameModel> peter2 =
        args['peter2'] as List<VariablesGameModel>;

    final List<VariablesGameModel> john1 =
        args['john1'] as List<VariablesGameModel>;

    final List<VariablesGameModel> john2 =
        args['john2'] as List<VariablesGameModel>;

    final List<VariablesGameModel> john3 =
        args['john3'] as List<VariablesGameModel>;

    final List<VariablesGameModel> judas =
        args['judas'] as List<VariablesGameModel>;

            final List<VariablesGameModel> apocalypse =
        args['apocalypse'] as List<VariablesGameModel>;

        final String nameBank =
        args['nameBank'] as String;

    final Map<String, dynamic> nameBooks =
        args['nameBooks'] as Map<String, dynamic>;

    return PreferencesManager.instance.isDirectQuestionMode
        ? SafeArea(
            child: Scaffold(
              appBar: PreferredSize(
                preferredSize: const Size.fromHeight(55.0),
                child: AppBarDefault(
                  text: nameBook == 'Gênesis'
                      ? 'Genesis'.tr()
                      : nameBook == 'Êxodo'
                      ? 'Exodus'.tr()
                      : nameBook == 'Levítico'
                      ? 'Leviticus'.tr()
                      : nameBook,
                ),
              ),
              body: GridBooks(
                nameBook: nameBook,
                nameBank: nameBank,
                apocalypse: apocalypse,
                judas: judas,
                john3: john3,
                john2: john2,
                john1: john1,
                peter2: peter2,
                peter1: peter1,
                tiago: tiago,
                hebrews: hebrews,
                philemon: philemon,
                tito: tito,
                timothy1: timothy1,
                timothy2: timothy2,
                thessalonians2: thessalonians2,
                thessalonians1: thessalonians1,
                colossians: colossians,
                philippians: philippians,
                ephesians: ephesians,
                galatians: galatians,
                corinthians2: corinthians2,
                corinthians1: corinthians1,
                romans: romans,
                acts: acts,
                john: john,
                lucas: lucas,
                frames: frames,
                mateus: mateus,
                malachi: malachi,
                zechariah: zechariah,
                haggai: haggai,
                zephanies: zephanies,
                habakkuk: habakkuk,
                no: no,
                micah: micah,
                jonah: jonah,
                obadiah: obadiah,
                amos: amos,
                joel: joel,
                hosea: hosea,
                daniel: daniel,
                ezequiel: ezequiel,
                lamentations: lamentations,
                jeremiah: jeremiah,
                isaiah: isaiah,
                songs: songs,
                ecclesiastes: ecclesiastes,
                proverbs: proverbs,
                psalms: psalms,
                job: job,
                ester: ester,
                nehemiah: nehemiah,
                ezra: ezra,
                chronicles2: chronicles2,
                chronicles1: chronicles1,
                kings2: kings2,
                kings1: kings1,
                samuel2: samuel2,
                samuel1: samuel1,
                ruth: ruth,
                judges: judges,
                josue: josue,
                deuteronomy: deuteronomy,
                numbers: numbers,
                leviticus: leviticus,
                exodus: exodus,
                genesis: genesis,
                nameBooks: nameBooks,
              ),
            ),
          )
        : nameBook == 'Gênesis' && isFinishedGenesis ||
              nameBook == 'Êxodo' && isFinishedExodus ||
              nameBook == 'Levítico' && isFinishedLeviticus ||
              nameBook == 'Números' && isFinishedNumbers ||
              nameBook == 'Deuteronômio' && isFinishedDeuteronomy ||
              nameBook == 'Josué' && isFinishedJosue ||
              nameBook == 'Juízes' && isFinishedJudges ||
              nameBook == 'Rute' && isFinishedRuth ||
              nameBook == '1Samuel' && isFinished1Samuel ||
              nameBook == '2Samuel' && isFinished2Samuel ||
              nameBook == '1Reis' && isFinished1Reis ||
              nameBook == '2Reis' && isFinished2Reis ||
              nameBook == '1Crônicas' && isFinished1Cronicas ||
              nameBook == '2Crônicas' && isFinished2Cronicas ||
              nameBook == 'Esdras' && isFinishedEsdras ||
              nameBook == 'Neemias' && isFinishedNeemias ||
              nameBook == 'Ester' && isFinishedEster ||
              nameBook == 'Jó' && isFinishedJo ||
              nameBook == 'Salmos' && isFinishedSalmos ||
              nameBook == 'Provérbios' && isFinishedProverbios ||
              nameBook == 'Eclesiastes' && isFinishedEclesiastes ||
              nameBook == 'Cântares' && isFinishedCantares ||
              nameBook == 'Isaías' && isFinishedIsaias ||
              nameBook == 'Jeremias' && isFinishedJeremias ||
              nameBook == 'Lamentações' && isFinishedLamentacoes ||
              nameBook == 'Ezequiel' && isFinishedEzequiel ||
              nameBook == 'Daniel' && isFinishedDaniel ||
              nameBook == 'Oséias' && isFinishedOseias ||
              nameBook == 'Joel' && isFinishedJoel ||
              nameBook == 'Amós' && isFinishedAmos ||
              nameBook == 'Obadias' && isFinishedObadias ||
              nameBook == 'Jonas' && isFinishedJonas ||
              nameBook == 'Miquéias' && isFinishedMiqueias ||
              nameBook == 'Naum' && isFinishedNaum ||
              nameBook == 'Habacuque' && isFinishedHabacuque ||
              nameBook == 'Sofonias' && isFinishedSofonias ||
              nameBook == 'Ageu' && isFinishedAgeu ||
              nameBook == 'Zacarias' && isFinishedZacarias ||
              nameBook == 'Malaquias' && isFinishedMalaquias ||
              nameBook == 'Mateus' && isFinishedMateus ||
              nameBook == 'Marcos' && isFinishedMarcos ||
              nameBook == 'Lucas' && isFinishedLucas ||
              nameBook == 'João' && isFinishedJoao ||
              nameBook == 'Atos' && isFinishedAtos ||
              nameBook == 'Romanos' && isFinishedRomanos ||
              nameBook == '1Coríntios' && isFinished1Corintios ||
              nameBook == '2Coríntios' && isFinished2Corintios ||
              nameBook == 'Gálatas' && isFinishedGalatas ||
              nameBook == 'Efésios' && isFinishedEfesios ||
              nameBook == 'Filipenses' && isFinishedFilipenses ||
              nameBook == 'Colossenses' && isFinishedColossenses ||
              nameBook == '1Tessalonicenses' && isFinished1Tessalonenses ||
              nameBook == '2Tessalonicenses' && isFinished2Tessalonenses ||
              nameBook == '1Timóteo' && isFinished1Timoteo ||
              nameBook == '2Timóteo' && isFinished2Timoteo ||
              nameBook == 'Tito' && isFinishedTito ||
              nameBook == 'Filemom' && isFinishedFilemom ||
              nameBook == 'Hebreus' && isFinishedHebreus ||
              nameBook == 'Tiago' && isFinishedTiago ||
              nameBook == '1 Pedro' && isFinished1Pedro ||
              nameBook == '2 Pedro' && isFinished2Pedro ||
              nameBook == '1 João' && isFinished1Joao ||
              nameBook == '2 João' && isFinished2Joao ||
              nameBook == '3 João' && isFinished3Joao ||
              nameBook == 'Judas' && isFinishedJudas ||
              nameBook == 'Apocalipse' && isFinishedApocalipse
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
                                  '${'congratulationsBook'.tr()} ${nameBook == 'Gênesis'
                                      ? 'Genesis'.tr()
                                      : nameBook == 'Êxodo'
                                      ? 'Exodus'.tr()
                                      : nameBook == 'Levítico'
                                      ? 'Leviticus'.tr()
                                      : nameBook}.',
                                  style: const TextStyle(
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
                                  // Gênesis
                                  nameBook == 'Gênesis'
                                      ? await resetProgressGenesis()
                                      :
                                        // Êxodo
                                        nameBook == 'Êxodo'
                                      ? await resetProgressExodus()
                                      :
                                        // Levítico
                                        nameBook == 'Levítico'
                                      ? await resetProgressLeviticus()
                                      :
                                        // Números
                                        nameBook == 'Números'
                                      ? await resetProgressNumbers()
                                      :
                                        // Deuteronômio
                                        nameBook == 'Deuteronômio'
                                      ? await resetProgressDeuteronomy()
                                      :
                                        // Josué
                                        nameBook == 'Josué'
                                      ? await resetProgressJosue()
                                      :
                                        // Juízes
                                        nameBook == 'Juízes'
                                      ? await resetProgressJudges()
                                      :
                                        // Rute
                                        nameBook == 'Rute'
                                      ? await resetProgressRuth()
                                      :
                                        // 1Samuel
                                        nameBook == '1Samuel'
                                      ? await resetProgress1Samuel()
                                      :
                                        // 2Samuel
                                        nameBook == '2Samuel'
                                      ? await resetProgress2Samuel()
                                      :
                                        // 1Reis
                                        nameBook == '1Reis'
                                      ? await resetProgress1Reis()
                                      :
                                        // 2Reis
                                        nameBook == '2Reis'
                                      ? await resetProgress2Reis()
                                      :
                                        // 1Crônicas
                                        nameBook == '1Crônicas'
                                      ? await resetProgress1Cronicas()
                                      :
                                        // 2Crônicas
                                        nameBook == '2Crônicas'
                                      ? await resetProgress2Cronicas()
                                      :
                                        // Esdras
                                        nameBook == 'Esdras'
                                      ? await resetProgressEsdras()
                                      :
                                        // Neemias
                                        nameBook == 'Neemias'
                                      ? await resetProgressNeemias()
                                      :
                                        // Ester
                                        nameBook == 'Ester'
                                      ? await resetProgressEster()
                                      :
                                        // Jó
                                        nameBook == 'Jó'
                                      ? await resetProgressJo()
                                      :
                                        // Salmos
                                        nameBook == 'Salmos'
                                      ? await resetProgressSalmos()
                                      :
                                        // Provérbios
                                        nameBook == 'Provérbios'
                                      ? await resetProgressProverbios()
                                      :
                                        // Eclesiastes
                                        nameBook == 'Eclesiastes'
                                      ? await resetProgressEclesiastes()
                                      :
                                        // Cântares
                                        nameBook == 'Cântares'
                                      ? await resetProgressCantares()
                                      :
                                        // Isaías
                                        nameBook == 'Isaías'
                                      ? await resetProgressIsaias()
                                      :
                                        // Jeremias
                                        nameBook == 'Jeremias'
                                      ? await resetProgressJeremias()
                                      :
                                        // Lamentações
                                        nameBook == 'Lamentações'
                                      ? await resetProgressLamentacoes()
                                      :
                                        // Ezequiel
                                        nameBook == 'Ezequiel'
                                      ? await resetProgressEzequiel()
                                      :
                                        // Daniel
                                        nameBook == 'Daniel'
                                      ? await resetProgressDaniel()
                                      :
                                        // Oseias
                                        nameBook == 'Oséias'
                                      ? await resetProgressOseias()
                                      :
                                        // Joel
                                        nameBook == 'Joel'
                                      ? await resetProgressJoel()
                                      :
                                        // Amos
                                        nameBook == 'Amós'
                                      ? await resetProgressAmos()
                                      :
                                        // Obadias
                                        nameBook == 'Obadias'
                                      ? await resetProgressObadias()
                                      :
                                        // Jonas
                                        nameBook == 'Jonas'
                                      ? await resetProgressJonas()
                                      :
                                        // Miquéias
                                        nameBook == 'Miquéias'
                                      ? await resetProgressMiqueias()
                                      :
                                        // Naum
                                        nameBook == 'Naum'
                                      ? await resetProgressNaum()
                                      :
                                        // Habacuque
                                        nameBook == 'Habacuque'
                                      ? await resetProgressHabacuque()
                                      :
                                        // Sofonias
                                        nameBook == 'Sofonias'
                                      ? await resetProgressSofonias()
                                      :
                                        // Ageu
                                        nameBook == 'Ageu'
                                      ? await resetProgressAgeu()
                                      :
                                        // Zacarias
                                        nameBook == 'Zacarias'
                                      ? await resetProgressZacarias()
                                      :
                                        // Malaquias
                                        nameBook == 'Malaquias'
                                      ? await resetProgressMalaquias()
                                      :
                                        // Mateus
                                        nameBook == 'Mateus'
                                      ? await resetProgressMateus()
                                      :
                                        // Marcos
                                        nameBook == 'Marcos'
                                      ? await resetProgressMarcos()
                                      :
                                        // Lucas
                                        nameBook == 'Lucas'
                                      ? await resetProgressLucas()
                                      :
                                        // João
                                        nameBook == 'João'
                                      ? await resetProgressJoao()
                                      :
                                        // Atos
                                        nameBook == 'Atos'
                                      ? await resetProgressAtos()
                                      :
                                        // Romanos
                                        nameBook == 'Romanos'
                                      ? await resetProgressRomanos()
                                      :
                                        // 1Coríntios
                                        nameBook == '1Coríntios'
                                      ? await resetProgress1Corintios()
                                      :
                                        // 2Coríntios
                                        nameBook == '2Coríntios'
                                      ? await resetProgress2Corintios()
                                      :
                                        // Gálatas
                                        nameBook == 'Gálatas'
                                      ? await resetProgressGalatas()
                                      :
                                        // Efésios
                                        nameBook == 'Efésios'
                                      ? await resetProgressEfesios()
                                      :
                                        // Filipenses
                                        nameBook == 'Filipenses'
                                      ? await resetProgressFilipenses()
                                      :
                                        // Colossenses
                                        nameBook == 'Colossenses'
                                      ? await resetProgressColossenses()
                                      :
                                        // 1Tessalonicenses
                                        nameBook == '1Tessalonicenses'
                                      ? await resetProgress1Tessalonenses()
                                      :
                                        // 2Tessalonicenses
                                        nameBook == '2Tessalonicenses'
                                      ? await resetProgress2Tessalonenses()
                                      :
                                        // 1Timóteo
                                        nameBook == '1 Timóteo'
                                      ? await resetProgress1Timoteo()
                                      :
                                        // 2Timóteo
                                        nameBook == '2 Timóteo'
                                      ? await resetProgress2Timoteo()
                                      :
                                        // Tito
                                        nameBook == 'Tito'
                                      ? await resetProgressTito()
                                      :
                                        // Filemom
                                        nameBook == 'Filemom'
                                      ? await resetProgressFilemom()
                                      :
                                        // Hebreus
                                        nameBook == 'Hebreus'
                                      ? await resetProgressHebreus()
                                      :
                                        // Tiago
                                        nameBook == 'Tiago'
                                      ? await resetProgressTiago()
                                      :
                                        // 1 Pedro
                                        nameBook == '1 Pedro'
                                      ? await resetProgress1Pedro()
                                      :
                                        // 2 Pedro
                                        nameBook == '2 Pedro'
                                      ? await resetProgress2Pedro()
                                      :
                                        // 1 João
                                        nameBook == '1 João'
                                      ? await resetProgress1Joao()
                                      :
                                        // 2 João
                                        nameBook == '2 João'
                                      ? await resetProgress2Joao()
                                      :
                                        // 3 João
                                        nameBook == '3 João'
                                      ? await resetProgress3Joao()
                                      :
                                        // Judas
                                        nameBook == 'Judas'
                                      ? await resetProgressJudas()
                                      :
                                        // Apocalipse
                                        nameBook == 'Apocalipse'
                                      ? await resetProgressApocalipse()
                                      : null;
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
        : BookQuestions(
            nameBook: nameBook,
            nextQuestion: nameBook == 'Gênesis'
                ? nextQuestionGenesis
                : nameBook == 'Êxodo'
                ? nextQuestionExodus
                : nameBook == 'Levítico'
                ? nextQuestionLeviticus
                : nameBook == 'Números'
                ? nextQuestionNumbers
                : nameBook == 'Deuteronômio'
                ? nextQuestionDeuteronomy
                : nameBook == 'Josué'
                ? nextQuestionJosue
                : nameBook == 'Juízes'
                ? nextQuestionJudges
                : nameBook == 'Rute'
                ? nextQuestionRuth
                : nameBook == '1Samuel'
                ? nextQuestion1Samuel
                : nameBook == '2Samuel'
                ? nextQuestion2Samuel
                : nameBook == '1Reis'
                ? nextQuestion1Reis
                : nameBook == '2Reis'
                ? nextQuestion2Reis
                : nameBook == '1Crônicas'
                ? nextQuestion1Cronicas
                : nameBook == '2Crônicas'
                ? nextQuestion2Cronicas
                : nameBook == 'Esdras'
                ? nextQuestionEsdras
                : nameBook == 'Neemias'
                ? nextQuestionNeemias
                : nameBook == 'Ester'
                ? nextQuestionEster
                : nameBook == 'Jó'
                ? nextQuestionJo
                : nameBook == 'Salmos'
                ? nextQuestionSalmos
                : nameBook == 'Provérbios'
                ? nextQuestionProverbios
                : nameBook == 'Eclesiastes'
                ? nextQuestionEclesiastes
                : nameBook == 'Cântares'
                ? nextQuestionCantares
                : nameBook == 'Isaías'
                ? nextQuestionIsaias
                : nameBook == 'Jeremias'
                ? nextQuestionJeremias
                : nameBook == 'Lamentações'
                ? nextQuestionLamentacoes
                : nameBook == 'Ezequiel'
                ? nextQuestionEzequiel
                : nameBook == 'Daniel'
                ? nextQuestionDaniel
                : nameBook == 'Oséias'
                ? nextQuestionOseias
                : nameBook == 'Joel'
                ? nextQuestionJoel
                : nameBook == 'Amós'
                ? nextQuestionAmos
                : nameBook == 'Obadias'
                ? nextQuestionObadias
                : nameBook == 'Jonas'
                ? nextQuestionJonas
                : nameBook == 'Miquéias'
                ? nextQuestionMiqueias
                : nameBook == 'Naum'
                ? nextQuestionNaum
                : nameBook == 'Habacuque'
                ? nextQuestionHabacuque
                : nameBook == 'Sofonias'
                ? nextQuestionSofonias
                : nameBook == 'Ageu'
                ? nextQuestionAgeu
                : nameBook == 'Zacarias'
                ? nextQuestionZacarias
                : nameBook == 'Malaquias'
                ? nextQuestionMalaquias
                : nameBook == 'Mateus'
                ? nextQuestionMateus
                : nameBook == 'Marcos'
                ? nextQuestionMarcos
                : nameBook == 'Lucas'
                ? nextQuestionLucas
                : nameBook == 'João'
                ? nextQuestionJoao
                : nameBook == 'Atos'
                ? nextQuestionAtos
                : nameBook == 'Romanos'
                ? nextQuestionRomanos
                : nameBook == '1Coríntios'
                ? nextQuestion1Corintios
                : nameBook == '2Coríntios'
                ? nextQuestion2Corintios
                : nameBook == 'Gálatas'
                ? nextQuestionGalatas
                : nameBook == 'Efésios'
                ? nextQuestionEfesios
                : nameBook == 'Filipenses'
                ? nextQuestionFilipenses
                : nameBook == 'Colossenses'
                ? nextQuestionColossenses
                : nameBook == '1Tessalonicenses'
                ? nextQuestion1Tessalonenses
                : nameBook == '2Tessalonicenses'
                ? nextQuestion2Tessalonenses
                : nameBook == '1 Timóteo'
                ? nextQuestion1Timoteo
                : nameBook == '2 Timóteo'
                ? nextQuestion2Timoteo
                : nameBook == 'Tito'
                ? nextQuestionTito
                : nameBook == 'Filemom'
                ? nextQuestionFilemom
                : nameBook == 'Hebreus'
                ? nextQuestionHebreus
                : nameBook == 'Tiago'
                ? nextQuestionTiago
                : nameBook == '1 Pedro'
                ? nextQuestion1Pedro
                : nameBook == '2 Pedro'
                ? nextQuestion2Pedro
                : nameBook == '1 João'
                ? nextQuestion1Joao
                : nameBook == '2 João'
                ? nextQuestion2Joao
                : nameBook == '3 João'
                ? nextQuestion3Joao
                : nameBook == 'Judas'
                ? nextQuestionJudas
                : nameBook == 'Apocalipse'
                ? nextQuestionApocalipse
                : null,
            mockGameData: nameBook == 'Gênesis'
                ? genesis[currentQuestionIndexGenesis]
                : nameBook == 'Êxodo'
                ? exodus[currentQuestionIndexExodus]
                : nameBook == 'Levítico'
                ? leviticus[currentQuestionIndexLeviticus]
                : nameBook == 'Números'
                ? numbers[currentQuestionIndexNumbers]
                : nameBook == 'Deuteronômio'
                ? deuteronomy[currentQuestionIndexDeuteronomy]
                : nameBook == 'Josué'
                ? josue[currentQuestionIndexJosue]
                : nameBook == 'Juízes'
                ? judges[currentQuestionIndexJudges]
                : nameBook == 'Rute'
                ? ruth[currentQuestionIndexRuth]
                : nameBook == '1Samuel'
                ? samuel1[currentQuestionIndex1Samuel]
                : nameBook == '2Samuel'
                ? samuel2[currentQuestionIndex2Samuel]
                : nameBook == '1Reis'
                ? kings1[currentQuestionIndex1Reis]
                : nameBook == '2Reis'
                ? kings2[currentQuestionIndex2Reis]
                : nameBook == '1Crônicas'
                ? chronicles1[currentQuestionIndex1Cronicas]
                : nameBook == '2Crônicas'
                ? chronicles2[currentQuestionIndex2Cronicas]
                : nameBook == 'Esdras'
                ? ezra[currentQuestionIndexEsdras]
                : nameBook == 'Neemias'
                ? nehemiah[currentQuestionIndexNeemias]
                : nameBook == 'Ester'
                ? ester[currentQuestionIndexEster]
                : nameBook == 'Jó'
                ? job[currentQuestionIndexJo]
                : nameBook == 'Salmos'
                ? psalms[currentQuestionIndexSalmos]
                : nameBook == 'Provérbios'
                ? proverbs[currentQuestionIndexProverbios]
                : nameBook == 'Eclesiastes'
                ? ecclesiastes[currentQuestionIndexEclesiastes]
                : nameBook == 'Cântares'
                ? songs[currentQuestionIndexCantares]
                : nameBook == 'Isaías'
                ? isaiah[currentQuestionIndexIsaias]
                : nameBook == 'Jeremias'
                ? jeremiah[currentQuestionIndexJeremias]
                : nameBook == 'Lamentações'
                ? lamentations[currentQuestionIndexLamentacoes]
                : nameBook == 'Ezequiel'
                ? ezequiel[currentQuestionIndexEzequiel]
                : nameBook == 'Daniel'
                ? daniel[currentQuestionIndexDaniel]
                : nameBook == 'Oséias'
                ? hosea[currentQuestionIndexOseias]
                : nameBook == 'Joel'
                ? joel[currentQuestionIndexJoel]
                : nameBook == 'Amós'
                ? amos[currentQuestionIndexAmos]
                : nameBook == 'Obadias'
                ? obadiah[currentQuestionIndexObadias]
                : nameBook == 'Jonas'
                ? jonah[currentQuestionIndexJonas]
                : nameBook == 'Miquéias'
                ? micah[currentQuestionIndexMiqueias]
                : nameBook == 'Naum'
                ? no[currentQuestionIndexNaum]
                : nameBook == 'Habacuque'
                ? habakkuk[currentQuestionIndexHabacuque]
                : nameBook == 'Sofonias'
                ? zephanies[currentQuestionIndexSofonias]
                : nameBook == 'Ageu'
                ? haggai[currentQuestionIndexAgeu]
                : nameBook == 'Zacarias'
                ? zechariah[currentQuestionIndexZacarias]
                : nameBook == 'Malaquias'
                ? malachi[currentQuestionIndexMalaquias]
                : nameBook == 'Mateus'
                ? mateus[currentQuestionIndexMateus]
                : nameBook == 'Marcos'
                ? frames[currentQuestionIndexMarcos]
                : nameBook == 'Lucas'
                ? lucas[currentQuestionIndexLucas]
                : nameBook == 'João'
                ? john[currentQuestionIndexJoao]
                : nameBook == 'Atos'
                ? acts[currentQuestionIndexAtos]
                : nameBook == 'Romanos'
                ? romans[currentQuestionIndexRomanos]
                : nameBook == '1Coríntios'
                ? corinthians1[currentQuestionIndex1Corintios]
                : nameBook == '2Coríntios'
                ? corinthians2[currentQuestionIndex2Corintios]
                : nameBook == 'Gálatas'
                ? galatians[currentQuestionIndexGalatas]
                : nameBook == 'Efésios'
                ? ephesians[currentQuestionIndexEfesios]
                : nameBook == 'Filipenses'
                ? philippians[currentQuestionIndexFilipenses]
                : nameBook == 'Colossenses'
                ? colossians[currentQuestionIndexColossenses]
                : nameBook == '1Tessalonicenses'
                ? thessalonians1[currentQuestionIndex1Tessalonenses]
                : nameBook == '2Tessalonicenses'
                ? thessalonians2[currentQuestionIndex2Tessalonenses]
                : nameBook == '1 Timóteo'
                ? timothy1[currentQuestionIndex1Timoteo]
                : nameBook == '2 Timóteo'
                ? timothy2[currentQuestionIndex2Timoteo]
                : nameBook == 'Tito'
                ? tito[currentQuestionIndexTito]
                : nameBook == 'Filemom'
                ? philemon[currentQuestionIndexFilemom]
                : nameBook == 'Hebreus'
                ? hebrews[currentQuestionIndexHebreus]
                : nameBook == 'Tiago'
                ? tiago[currentQuestionIndexTiago]
                : nameBook == '1 Pedro'
                ? peter1[currentQuestionIndex1Pedro]
                : nameBook == '2 Pedro'
                ? peter2[currentQuestionIndex2Pedro]
                : nameBook == '1 João'
                ? john1[currentQuestionIndex1Joao]
                : nameBook == '2 João'
                ? john2[currentQuestionIndex2Joao]
                : nameBook == '3 João'
                ? john3[currentQuestionIndex3Joao]
                : nameBook == 'Judas'
                ? judas[currentQuestionIndexJudas]
                : nameBook == 'Apocalipse'
                ? apocalypse[currentQuestionIndexApocalipse]
                : null,
          );
  }
}

class BookQuestions extends StatefulWidget {
  final VariablesGameModel? mockGameData;
  final String? nameBook;
  final Function()? nextQuestion;

  const BookQuestions({
    super.key,
    this.nameBook,
    this.mockGameData,
    this.nextQuestion,
  });

  @override
  State<BookQuestions> createState() => _BookQuestionsState();
}

class _BookQuestionsState extends State<BookQuestions>
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
    return widget.mockGameData != null
        ? SafeArea(
            child: Scaffold(
              appBar: PreferredSize(
                preferredSize: const Size.fromHeight(55.0),
                child: AppBarDefault(
                  text: '${'question'.tr()} ${widget.mockGameData?.id}',
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
                        "${widget.mockGameData?.question!.substring(3)}."
                        "${'alternativeA'.tr()} ${widget.mockGameData?.alternatives1!.substring(2)}."
                        "${'alternativeB'.tr()} ${widget.mockGameData?.alternatives2!.substring(2)}."
                        "${'alternativeC'.tr()} ${widget.mockGameData?.alternatives3!.substring(2)}.",
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
                          builder:
                              (
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        _isTimerVisible
                                            ? InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    _isTimerVisible =
                                                        !_isTimerVisible;
                                                  });
                                                },
                                                child: CustomTimer(
                                                  controller: _controller,
                                                  builder: (state, remaining) {
                                                    return Container(
                                                      padding:
                                                          const EdgeInsets.only(
                                                            bottom: 2.0,
                                                          ),
                                                      alignment:
                                                          Alignment.center,
                                                      width: double.infinity,
                                                      height: 30,
                                                      color:
                                                          Colors.red.shade300,
                                                      child: Text(
                                                        "${remaining.hours}:${remaining.minutes}:${remaining.seconds}.${remaining.milliseconds}",
                                                        style: Theme.of(context)
                                                            .appBarTheme
                                                            .titleTextStyle
                                                            ?.copyWith(
                                                              fontSize: 20,
                                                              fontFamily:
                                                                  'Quicksand',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                            ),
                                                      ),
                                                    );
                                                  },
                                                ),
                                              )
                                            : InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    _isTimerVisible =
                                                        !_isTimerVisible;
                                                    _controller.reset();
                                                  });
                                                },
                                                child: Container(
                                                  padding:
                                                      const EdgeInsets.only(
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
                                                        ?.copyWith(
                                                          fontSize: 20,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                        TextQuestion(
                                          textQuestion:
                                              widget.mockGameData!.question!,
                                        ),
                                        const SizedBox(height: 5.0),
                                        OptionABook(
                                          nameBook: widget.nameBook!,
                                          book: widget.mockGameData!,
                                        ),
                                        const SizedBox(height: 5.0),
                                        OptionBBook(
                                          nameBook: widget.nameBook!,
                                          book: widget.mockGameData!,
                                        ),
                                        const SizedBox(height: 5.0),
                                        OptionCBook(
                                          nameBook: widget.nameBook!,
                                          book: widget.mockGameData!,
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
          )
        : Scaffold(
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
                    child: Padding(
                      padding: EdgeInsets.only(left: 20, right: 20, bottom: 4),
                      child: AutoSizeText(
                        'thereAreNoQuestions'.tr(),
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'FredokaOne',
                          fontSize: 40, //constraints!.maxHeight * 0.06,
                          shadows: [
                            Shadow(
                              blurRadius: 7.0,
                              color: Colors.black,
                              offset: Offset(1.0, 1.0),
                            ),
                          ],
                        ),
                        maxLines: 1,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                );
              },
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
}
