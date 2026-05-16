import 'package:shared_preferences/shared_preferences.dart';

class PreferencesManagerBook {
  static final PreferencesManagerBook instance =
      PreferencesManagerBook._internal();

  bool _isDirectQuestionMode = false;

  int _currentQuestionIndexGenesis = 0;
  bool _isFinishedGenesis = false;

  int _currentQuestionIndexExodus = 0;
  bool _isFinishedExodus = false;

  int _currentQuestionIndexLeviticus = 0;
  bool _isFinishedLeviticus = false;

  int _currentQuestionIndexNumbers = 0;
  bool _isFinishedNumbers = false;

  int _currentQuestionIndexDeuteronomy = 0;
  bool _isFinishedDeuteronomy = false;

  int _currentQuestionIndexJosue = 0;
  bool _isFinishedJosue = false;

  int _currentQuestionIndexJudges = 0;
  bool _isFinishedJudges = false;

  int _currentQuestionIndexRuth = 0;
  bool _isFinishedRuth = false;

  int _currentQuestionIndex1Samuel = 0;
  bool _isFinished1Samuel = false;

  int _currentQuestionIndex2Samuel = 0;
  bool _isFinished2Samuel = false;

  int _currentQuestionIndex1Reis = 0;
  bool _isFinished1Reis = false;

  int _currentQuestionIndex2Reis = 0;
  bool _isFinished2Reis = false;

  int _currentQuestionIndex1Cronicas = 0;
  bool _isFinished1Cronicas = false;

  int _currentQuestionIndex2Cronicas = 0;
  bool _isFinished2Cronicas = false;

  int _currentQuestionIndexEsdras = 0;
  bool _isFinishedEsdras = false;

  int _currentQuestionIndexNeemias = 0;
  bool _isFinishedNeemias = false;

  int _currentQuestionIndexEster = 0;
  bool _isFinishedEster = false;

  int _currentQuestionIndexJo = 0;
  bool _isFinishedJo = false;

  int _currentQuestionIndexSalmos = 0;
  bool _isFinishedSalmos = false;

  int _currentQuestionIndexProverbios = 0;
  bool _isFinishedProverbios = false;

  int _currentQuestionIndexEclesiastes = 0;
  bool _isFinishedEclesiastes = false;

  int _currentQuestionIndexCantares = 0;
  bool _isFinishedCantares = false;

  int _currentQuestionIndexIsaias = 0;
  bool _isFinishedIsaias = false;

  int _currentQuestionIndexJeremias = 0;
  bool _isFinishedJeremias = false;

  int _currentQuestionIndexLamentacoes = 0;
  bool _isFinishedLamentacoes = false;

  int _currentQuestionIndexEzequiel = 0;
  bool _isFinishedEzequiel = false;

  int _currentQuestionIndexDaniel = 0;
  bool _isFinishedDaniel = false;

  int _currentQuestionIndexOseias = 0;
  bool _isFinishedOseias = false;

  int _currentQuestionIndexJoel = 0;
  bool _isFinishedJoel = false;

  int _currentQuestionIndexAmos = 0;
  bool _isFinishedAmos = false;

  int _currentQuestionIndexObadias = 0;
  bool _isFinishedObadias = false;

  int _currentQuestionIndexJonas = 0;
  bool _isFinishedJonas = false;

  int _currentQuestionIndexMiqueias = 0;
  bool _isFinishedMiqueias = false;

  int _currentQuestionIndexNaum = 0;
  bool _isFinishedNaum = false;

  int _currentQuestionIndexHabacuque = 0;
  bool _isFinishedHabacuque = false;

  int _currentQuestionIndexSofonias = 0;
  bool _isFinishedSofonias = false;

  int _currentQuestionIndexAgeu = 0;
  bool _isFinishedAgeu = false;

  int _currentQuestionIndexZacarias = 0;
  bool _isFinishedZacarias = false;

  int _currentQuestionIndexMalaquias = 0;
  bool _isFinishedMalaquias = false;

  int _currentQuestionIndexMateus = 0;
  bool _isFinishedMateus = false;

  int _currentQuestionIndexMarcos = 0;
  bool _isFinishedMarcos = false;

  int _currentQuestionIndexLucas = 0;
  bool _isFinishedLucas = false;

  int _currentQuestionIndexJoao = 0;
  bool _isFinishedJoao = false;

  int _currentQuestionIndexAtos = 0;
  bool _isFinishedAtos = false;

  int _currentQuestionIndexRomanos = 0;
  bool _isFinishedRomanos = false;

  int _currentQuestionIndex1Corintios = 0;
  bool _isFinished1Corintios = false;

  int _currentQuestionIndex2Corintios = 0;
  bool _isFinished2Corintios = false;

  int _currentQuestionIndexGalatas = 0;
  bool _isFinishedGalatas = false;

  int _currentQuestionIndexEfesios = 0;
  bool _isFinishedEfesios = false;

  int _currentQuestionIndexFilipenses = 0;
  bool _isFinishedFilipenses = false;

  int _currentQuestionIndexColossenses = 0;
  bool _isFinishedColossenses = false;

  int _currentQuestionIndex1Tessalonenses = 0;
  bool _isFinished1Tessalonenses = false;

  int _currentQuestionIndex2Tessalonenses = 0;
  bool _isFinished2Tessalonenses = false;

  int _currentQuestionIndex1Timoteo = 0;
  bool _isFinished1Timoteo = false;

  int _currentQuestionIndex2Timoteo = 0;
  bool _isFinished2Timoteo = false;

  int _currentQuestionIndexTito = 0;
  bool _isFinishedTito = false;

  int _currentQuestionIndexFilemom = 0;
  bool _isFinishedFilemom = false;

  int _currentQuestionIndexHebreus = 0;
  bool _isFinishedHebreus = false;

  int _currentQuestionIndexTiago = 0;
  bool _isFinishedTiago = false;

  int _currentQuestionIndex1Pedro = 0;
  bool _isFinished1Pedro = false;

  int _currentQuestionIndex2Pedro = 0;
  bool _isFinished2Pedro = false;

  int _currentQuestionIndex1Joao = 0;
  bool _isFinished1Joao = false;

  int _currentQuestionIndex2Joao = 0;
  bool _isFinished2Joao = false;

  int _currentQuestionIndex3Joao = 0;
  bool _isFinished3Joao = false;

  int _currentQuestionIndexJudas = 0;
  bool _isFinishedJudas = false;

  int _currentQuestionIndexApocalipse = 0;
  bool _isFinishedApocalipse = false;

  PreferencesManagerBook._internal();

  bool get isDirectQuestionMode => _isDirectQuestionMode;

  int get currentQuestionIndexGenesis => _currentQuestionIndexGenesis;
  bool get isFinishedGenesis => _isFinishedGenesis;

  int get currentQuestionIndexExodus => _currentQuestionIndexExodus;
  bool get isFinishedExodus => _isFinishedExodus;

  int get currentQuestionIndexLeviticus => _currentQuestionIndexLeviticus;
  bool get isFinishedLeviticus => _isFinishedLeviticus;

  int get currentQuestionIndexNumbers => _currentQuestionIndexNumbers;
  bool get isFinishedNumbers => _isFinishedNumbers;

  int get currentQuestionIndexDeuteronomy => _currentQuestionIndexDeuteronomy;
  bool get isFinishedDeuteronomy => _isFinishedDeuteronomy;

  int get currentQuestionIndexJosue => _currentQuestionIndexJosue;
  bool get isFinishedJosue => _isFinishedJosue;

  int get currentQuestionIndexJudges => _currentQuestionIndexJudges;
  bool get isFinishedJudges => _isFinishedJudges;

  int get currentQuestionIndexRuth => _currentQuestionIndexRuth;
  bool get isFinishedRuth => _isFinishedRuth;

  int get currentQuestionIndex1Samuel => _currentQuestionIndex1Samuel;
  bool get isFinished1Samuel => _isFinished1Samuel;

  int get currentQuestionIndex2Samuel => _currentQuestionIndex2Samuel;
  bool get isFinished2Samuel => _isFinished2Samuel;

  int get currentQuestionIndex1Reis => _currentQuestionIndex1Reis;
  bool get isFinished1Reis => _isFinished1Reis;

  int get currentQuestionIndex2Reis => _currentQuestionIndex2Reis;
  bool get isFinished2Reis => _isFinished2Reis;

  int get currentQuestionIndex1Cronicas => _currentQuestionIndex1Cronicas;
  bool get isFinished1Cronicas => _isFinished1Cronicas;

  int get currentQuestionIndex2Cronicas => _currentQuestionIndex2Cronicas;
  bool get isFinished2Cronicas => _isFinished2Cronicas;

  int get currentQuestionIndexEsdras => _currentQuestionIndexEsdras;
  bool get isFinishedEsdras => _isFinishedEsdras;

  int get currentQuestionIndexNeemias => _currentQuestionIndexNeemias;
  bool get isFinishedNeemias => _isFinishedNeemias;

  int get currentQuestionIndexEster => _currentQuestionIndexEster;
  bool get isFinishedEster => _isFinishedEster;

  int get currentQuestionIndexJo => _currentQuestionIndexJo;
  bool get isFinishedJo => _isFinishedJo;

  int get currentQuestionIndexSalmos => _currentQuestionIndexSalmos;
  bool get isFinishedSalmos => _isFinishedSalmos;

  int get currentQuestionIndexProverbios => _currentQuestionIndexProverbios;
  bool get isFinishedProverbios => _isFinishedProverbios;

  int get currentQuestionIndexEclesiastes => _currentQuestionIndexEclesiastes;
  bool get isFinishedEclesiastes => _isFinishedEclesiastes;

  int get currentQuestionIndexCantares => _currentQuestionIndexCantares;
  bool get isFinishedCantares => _isFinishedCantares;

  int get currentQuestionIndexIsaias => _currentQuestionIndexIsaias;
  bool get isFinishedIsaias => _isFinishedIsaias;

  int get currentQuestionIndexJeremias => _currentQuestionIndexJeremias;
  bool get isFinishedJeremias => _isFinishedJeremias;

  int get currentQuestionIndexLamentacoes => _currentQuestionIndexLamentacoes;
  bool get isFinishedLamentacoes => _isFinishedLamentacoes;

  int get currentQuestionIndexEzequiel => _currentQuestionIndexEzequiel;
  bool get isFinishedEzequiel => _isFinishedEzequiel;

  int get currentQuestionIndexDaniel => _currentQuestionIndexDaniel;
  bool get isFinishedDaniel => _isFinishedDaniel;

  int get currentQuestionIndexOseias => _currentQuestionIndexOseias;
  bool get isFinishedOseias => _isFinishedOseias;

  int get currentQuestionIndexJoel => _currentQuestionIndexJoel;
  bool get isFinishedJoel => _isFinishedJoel;

  int get currentQuestionIndexAmos => _currentQuestionIndexAmos;
  bool get isFinishedAmos => _isFinishedAmos;

  int get currentQuestionIndexObadias => _currentQuestionIndexObadias;
  bool get isFinishedObadias => _isFinishedObadias;

  int get currentQuestionIndexJonas => _currentQuestionIndexJonas;
  bool get isFinishedJonas => _isFinishedJonas;

  int get currentQuestionIndexMiqueias => _currentQuestionIndexMiqueias;
  bool get isFinishedMiqueias => _isFinishedMiqueias;

  int get currentQuestionIndexNaum => _currentQuestionIndexNaum;
  bool get isFinishedNaum => _isFinishedNaum;

  int get currentQuestionIndexHabacuque => _currentQuestionIndexHabacuque;
  bool get isFinishedHabacuque => _isFinishedHabacuque;

  int get currentQuestionIndexSofonias => _currentQuestionIndexSofonias;
  bool get isFinishedSofonias => _isFinishedSofonias;

  int get currentQuestionIndexAgeu => _currentQuestionIndexAgeu;
  bool get isFinishedAgeu => _isFinishedAgeu;

  int get currentQuestionIndexZacarias => _currentQuestionIndexZacarias;
  bool get isFinishedZacarias => _isFinishedZacarias;

  int get currentQuestionIndexMalaquias => _currentQuestionIndexMalaquias;
  bool get isFinishedMalaquias => _isFinishedMalaquias;

  int get currentQuestionIndexMateus => _currentQuestionIndexMateus;
  bool get isFinishedMateus => _isFinishedMateus;

  int get currentQuestionIndexMarcos => _currentQuestionIndexMarcos;
  bool get isFinishedMarcos => _isFinishedMarcos;

  int get currentQuestionIndexLucas => _currentQuestionIndexLucas;
  bool get isFinishedLucas => _isFinishedLucas;

  int get currentQuestionIndexJoao => _currentQuestionIndexJoao;
  bool get isFinishedJoao => _isFinishedJoao;

  int get currentQuestionIndexAtos => _currentQuestionIndexAtos;
  bool get isFinishedAtos => _isFinishedAtos;

  int get currentQuestionIndexRomanos => _currentQuestionIndexRomanos;
  bool get isFinishedRomanos => _isFinishedRomanos;

  int get currentQuestionIndex1Corintios => _currentQuestionIndex1Corintios;
  bool get isFinished1Corintios => _isFinished1Corintios;

  int get currentQuestionIndex2Corintios => _currentQuestionIndex2Corintios;
  bool get isFinished2Corintios => _isFinished2Corintios;

  int get currentQuestionIndexGalatas => _currentQuestionIndexGalatas;
  bool get isFinishedGalatas => _isFinishedGalatas;

  int get currentQuestionIndexEfesios => _currentQuestionIndexEfesios;
  bool get isFinishedEfesios => _isFinishedEfesios;

  int get currentQuestionIndexFilipenses => _currentQuestionIndexFilipenses;
  bool get isFinishedFilipenses => _isFinishedFilipenses;

  int get currentQuestionIndexColossenses => _currentQuestionIndexColossenses;
  bool get isFinishedColossenses => _isFinishedColossenses;

  int get currentQuestionIndex1Tessalonenses =>
      _currentQuestionIndex1Tessalonenses;
  bool get isFinished1Tessalonenses => _isFinished1Tessalonenses;

  int get currentQuestionIndex2Tessalonenses =>
      _currentQuestionIndex2Tessalonenses;
  bool get isFinished2Tessalonenses => _isFinished2Tessalonenses;

  int get currentQuestionIndex1Timoteo => _currentQuestionIndex1Timoteo;
  bool get isFinished1Timoteo => _isFinished1Timoteo;

  int get currentQuestionIndex2Timoteo => _currentQuestionIndex2Timoteo;
  bool get isFinished2Timoteo => _isFinished2Timoteo;

  int get currentQuestionIndexTito => _currentQuestionIndexTito;
  bool get isFinishedTito => _isFinishedTito;

  int get currentQuestionIndexFilemom => _currentQuestionIndexFilemom;
  bool get isFinishedFilemom => _isFinishedFilemom;

  int get currentQuestionIndexHebreus => _currentQuestionIndexHebreus;
  bool get isFinishedHebreus => _isFinishedHebreus;

  int get currentQuestionIndexTiago => _currentQuestionIndexTiago;
  bool get isFinishedTiago => _isFinishedTiago;

  int get currentQuestionIndex1Pedro => _currentQuestionIndex1Pedro;
  bool get isFinished1Pedro => _isFinished1Pedro;

  int get currentQuestionIndex2Pedro => _currentQuestionIndex2Pedro;
  bool get isFinished2Pedro => _isFinished2Pedro;

  int get currentQuestionIndex1Joao => _currentQuestionIndex1Joao;
  bool get isFinished1Joao => _isFinished1Joao;

  int get currentQuestionIndex2Joao => _currentQuestionIndex2Joao;
  bool get isFinished2Joao => _isFinished2Joao;

  int get currentQuestionIndex3Joao => _currentQuestionIndex3Joao;
  bool get isFinished3Joao => _isFinished3Joao;

  int get currentQuestionIndexJudas => _currentQuestionIndexJudas;
  bool get isFinishedJudas => _isFinishedJudas;

  int get currentQuestionIndexApocalipse => _currentQuestionIndexApocalipse;
  bool get isFinishedApocalipse => _isFinishedApocalipse;

  set isDirectQuestionMode(bool value) {
    _isDirectQuestionMode = value;
    _saveIsDirectQuestionMode(value);
  }

  set currentQuestionIndexGenesis(int value) {
    _currentQuestionIndexGenesis = value;
    _saveCurrentQuestionIndexGenesis(value);
  }

  set currentQuestionIndexExodus(int value) {
    _currentQuestionIndexExodus = value;
    _saveCurrentQuestionIndexExodus(value);
  }

  set currentQuestionIndexLeviticus(int value) {
    _currentQuestionIndexLeviticus = value;
    _saveCurrentQuestionIndexLeviticus(value);
  }

  set currentQuestionIndexNumbers(int value) {
    _currentQuestionIndexNumbers = value;
    _saveCurrentQuestionIndexNumbers(value);
  }

  set currentQuestionIndexDeuteronomy(int value) {
    _currentQuestionIndexDeuteronomy = value;
    _saveCurrentQuestionIndexDeuteronomy(value);
  }

  set currentQuestionIndexJosue(int value) {
    _currentQuestionIndexJosue = value;
    _saveCurrentQuestionIndexJosue(value);
  }

  set currentQuestionIndexJudges(int value) {
    _currentQuestionIndexJudges = value;
    _saveCurrentQuestionIndexJudges(value);
  }

  set currentQuestionIndexRuth(int value) {
    _currentQuestionIndexRuth = value;
    _saveCurrentQuestionIndexRuth(value);
  }

  set currentQuestionIndex1Samuel(int value) {
    _currentQuestionIndex1Samuel = value;
    _saveCurrentQuestionIndex1Samuel(value);
  }

  set currentQuestionIndex2Samuel(int value) {
    _currentQuestionIndex2Samuel = value;
    _saveCurrentQuestionIndex2Samuel(value);
  }

  set currentQuestionIndex1Reis(int value) {
    _currentQuestionIndex1Reis = value;
    _saveCurrentQuestionIndex1Reis(value);
  }

  set currentQuestionIndex2Reis(int value) {
    _currentQuestionIndex2Reis = value;
    _saveCurrentQuestionIndex2Reis(value);
  }

  set currentQuestionIndex1Cronicas(int value) {
    _currentQuestionIndex1Cronicas = value;
    _saveCurrentQuestionIndex1Cronicas(value);
  }

  set currentQuestionIndex2Cronicas(int value) {
    _currentQuestionIndex2Cronicas = value;
    _saveCurrentQuestionIndex2Cronicas(value);
  }

  set currentQuestionIndexEsdras(int value) {
    _currentQuestionIndexEsdras = value;
    _saveCurrentQuestionIndexEsdras(value);
  }

  set currentQuestionIndexNeemias(int value) {
    _currentQuestionIndexNeemias = value;
    _saveCurrentQuestionIndexNeemias(value);
  }

  set currentQuestionIndexEster(int value) {
    _currentQuestionIndexEster = value;
    _saveCurrentQuestionIndexEster(value);
  }

  set currentQuestionIndexJo(int value) {
    _currentQuestionIndexJo = value;
    _saveCurrentQuestionIndexJo(value);
  }

  set currentQuestionIndexSalmos(int value) {
    _currentQuestionIndexSalmos = value;
    _saveCurrentQuestionIndexSalmos(value);
  }

  set currentQuestionIndexProverbios(int value) {
    _currentQuestionIndexProverbios = value;
    _saveCurrentQuestionIndexProverbios(value);
  }

  set currentQuestionIndexEclesiastes(int value) {
    _currentQuestionIndexEclesiastes = value;
    _saveCurrentQuestionIndexEclesiastes(value);
  }

  set currentQuestionIndexCantares(int value) {
    _currentQuestionIndexCantares = value;
    _saveCurrentQuestionIndexCantares(value);
  }

  set currentQuestionIndexIsaias(int value) {
    _currentQuestionIndexIsaias = value;
    _saveCurrentQuestionIndexIsaias(value);
  }

  set currentQuestionIndexJeremias(int value) {
    _currentQuestionIndexJeremias = value;
    _saveCurrentQuestionIndexJeremias(value);
  }

  set currentQuestionIndexLamentacoes(int value) {
    _currentQuestionIndexLamentacoes = value;
    _saveCurrentQuestionIndexLamentacoes(value);
  }

  set currentQuestionIndexEzequiel(int value) {
    _currentQuestionIndexEzequiel = value;
    _saveCurrentQuestionIndexEzequiel(value);
  }

  set currentQuestionIndexDaniel(int value) {
    _currentQuestionIndexDaniel = value;
    _saveCurrentQuestionIndexDaniel(value);
  }

  set currentQuestionIndexOseias(int value) {
    _currentQuestionIndexOseias = value;
    _saveCurrentQuestionIndexOseias(value);
  }

  set currentQuestionIndexJoel(int value) {
    _currentQuestionIndexJoel = value;
    _saveCurrentQuestionIndexJoel(value);
  }

  set currentQuestionIndexAmos(int value) {
    _currentQuestionIndexAmos = value;
    _saveCurrentQuestionIndexAmos(value);
  }

  set currentQuestionIndexObadias(int value) {
    _currentQuestionIndexObadias = value;
    _saveCurrentQuestionIndexObadias(value);
  }

  set currentQuestionIndexJonas(int value) {
    _currentQuestionIndexJonas = value;
    _saveCurrentQuestionIndexJonas(value);
  }

  set currentQuestionIndexMiqueias(int value) {
    _currentQuestionIndexMiqueias = value;
    _saveCurrentQuestionIndexMiqueias(value);
  }

  set currentQuestionIndexNaum(int value) {
    _currentQuestionIndexNaum = value;
    _saveCurrentQuestionIndexNaum(value);
  }

  set currentQuestionIndexHabacuque(int value) {
    _currentQuestionIndexHabacuque = value;
    _saveCurrentQuestionIndexHabacuque(value);
  }

  set currentQuestionIndexSofonias(int value) {
    _currentQuestionIndexSofonias = value;
    _saveCurrentQuestionIndexSofonias(value);
  }

  set currentQuestionIndexAgeu(int value) {
    _currentQuestionIndexAgeu = value;
    _saveCurrentQuestionIndexAgeu(value);
  }

  set currentQuestionIndexZacarias(int value) {
    _currentQuestionIndexZacarias = value;
    _saveCurrentQuestionIndexZacarias(value);
  }

  set currentQuestionIndexMalaquias(int value) {
    _currentQuestionIndexMalaquias = value;
    _saveCurrentQuestionIndexMalaquias(value);
  }

  set currentQuestionIndexMateus(int value) {
    _currentQuestionIndexMateus = value;
    _saveCurrentQuestionIndexMateus(value);
  }

  set currentQuestionIndexMarcos(int value) {
    _currentQuestionIndexMarcos = value;
    _saveCurrentQuestionIndexMarcos(value);
  }

  set currentQuestionIndexLucas(int value) {
    _currentQuestionIndexLucas = value;
    _saveCurrentQuestionIndexLucas(value);
  }

  set currentQuestionIndexJoao(int value) {
    _currentQuestionIndexJoao = value;
    _saveCurrentQuestionIndexJoao(value);
  }

  set currentQuestionIndexAtos(int value) {
    _currentQuestionIndexAtos = value;
    _saveCurrentQuestionIndexAtos(value);
  }

  set currentQuestionIndexRomanos(int value) {
    _currentQuestionIndexRomanos = value;
    _saveCurrentQuestionIndexRomanos(value);
  }

  set currentQuestionIndex1Corintios(int value) {
    _currentQuestionIndex1Corintios = value;
    _saveCurrentQuestionIndex1Corintios(value);
  }

  set currentQuestionIndex2Corintios(int value) {
    _currentQuestionIndex2Corintios = value;
    _saveCurrentQuestionIndex2Corintios(value);
  }

  set currentQuestionIndexGalatas(int value) {
    _currentQuestionIndexGalatas = value;
    _saveCurrentQuestionIndexGalatas(value);
  }

  set currentQuestionIndexEfesios(int value) {
    _currentQuestionIndexEfesios = value;
    _saveCurrentQuestionIndexEfesios(value);
  }

  set currentQuestionIndexFilipenses(int value) {
    _currentQuestionIndexFilipenses = value;
    _saveCurrentQuestionIndexFilipenses(value);
  }

  set currentQuestionIndexColossenses(int value) {
    _currentQuestionIndexColossenses = value;
    _saveCurrentQuestionIndexColossenses(value);
  }

  set currentQuestionIndex1Tessalonenses(int value) {
    _currentQuestionIndex1Tessalonenses = value;
    _saveCurrentQuestionIndex1Tessalonenses(value);
  }

  set currentQuestionIndex2Tessalonenses(int value) {
    _currentQuestionIndex2Tessalonenses = value;
    _saveCurrentQuestionIndex2Tessalonenses(value);
  }

  set currentQuestionIndex1Timoteo(int value) {
    _currentQuestionIndex1Timoteo = value;
    _saveCurrentQuestionIndex1Timoteo(value);
  }

  set currentQuestionIndex2Timoteo(int value) {
    _currentQuestionIndex2Timoteo = value;
    _saveCurrentQuestionIndex2Timoteo(value);
  }

  set currentQuestionIndexTito(int value) {
    _currentQuestionIndexTito = value;
    _saveCurrentQuestionIndexTito(value);
  }

  set currentQuestionIndexFilemom(int value) {
    _currentQuestionIndexFilemom = value;
    _saveCurrentQuestionIndexFilemom(value);
  }

  set currentQuestionIndexHebreus(int value) {
    _currentQuestionIndexHebreus = value;
    _saveCurrentQuestionIndexHebreus(value);
  }

  set currentQuestionIndexTiago(int value) {
    _currentQuestionIndexTiago = value;
    _saveCurrentQuestionIndexTiago(value);
  }

  set currentQuestionIndex1Pedro(int value) {
    _currentQuestionIndex1Pedro = value;
    _saveCurrentQuestionIndex1Pedro(value);
  }

  set currentQuestionIndex2Pedro(int value) {
    _currentQuestionIndex2Pedro = value;
    _saveCurrentQuestionIndex2Pedro(value);
  }

  set currentQuestionIndex1Joao(int value) {
    _currentQuestionIndex1Joao = value;
    _saveCurrentQuestionIndex1Joao(value);
  }

  set currentQuestionIndex2Joao(int value) {
    _currentQuestionIndex2Joao = value;
    _saveCurrentQuestionIndex2Joao(value);
  }

  set currentQuestionIndex3Joao(int value) {
    _currentQuestionIndex3Joao = value;
    _saveCurrentQuestionIndex3Joao(value);
  }

  set currentQuestionIndexJudas(int value) {
    _currentQuestionIndexJudas = value;
    _saveCurrentQuestionIndexJudas(value);
  }

  set currentQuestionIndexApocalipse(int value) {
    _currentQuestionIndexApocalipse = value;
    _saveCurrentQuestionIndexApocalipse(value);
  }

  set isFinishedGenesis(bool value) {
    _isFinishedGenesis = value;
    _saveIsFinishedGenesis(value);
  }

  set isFinishedExodus(bool value) {
    _isFinishedExodus = value;
    _saveIsFinishedExodus(value);
  }

  set isFinishedLeviticus(bool value) {
    _isFinishedLeviticus = value;
    _saveIsFinishedLeviticus(value);
  }

  set isFinishedNumbers(bool value) {
    _isFinishedNumbers = value;
    _saveIsFinishedNumbers(value);
  }

  set isFinishedDeuteronomy(bool value) {
    _isFinishedDeuteronomy = value;
    _saveIsFinishedDeuteronomy(value);
  }

  set isFinishedJosue(bool value) {
    _isFinishedJosue = value;
    _saveIsFinishedJosue(value);
  }

  set isFinishedJudges(bool value) {
    _isFinishedJudges = value;
    _saveIsFinishedJudges(value);
  }

  set isFinishedRuth(bool value) {
    _isFinishedRuth = value;
    _saveIsFinishedRuth(value);
  }

  set isFinished1Samuel(bool value) {
    _isFinished1Samuel = value;
    _saveIsFinished1Samuel(value);
  }

  set isFinished2Samuel(bool value) {
    _isFinished2Samuel = value;
    _saveIsFinished2Samuel(value);
  }

  set isFinished1Reis(bool value) {
    _isFinished1Reis = value;
    _saveIsFinished1Reis(value);
  }

  set isFinished2Reis(bool value) {
    _isFinished2Reis = value;
    _saveIsFinished2Reis(value);
  }

  set isFinished1Cronicas(bool value) {
    _isFinished1Cronicas = value;
    _saveIsFinished1Cronicas(value);
  }

  set isFinished2Cronicas(bool value) {
    _isFinished2Cronicas = value;
    _saveIsFinished2Cronicas(value);
  }

  set isFinishedEsdras(bool value) {
    _isFinishedEsdras = value;
    _saveIsFinishedEsdras(value);
  }

  set isFinishedNeemias(bool value) {
    _isFinishedNeemias = value;
    _saveIsFinishedNeemias(value);
  }

  set isFinishedEster(bool value) {
    _isFinishedEster = value;
    _saveIsFinishedEster(value);
  }

  set isFinishedJo(bool value) {
    _isFinishedJo = value;
    _saveIsFinishedJo(value);
  }

  set isFinishedSalmos(bool value) {
    _isFinishedSalmos = value;
    _saveIsFinishedSalmos(value);
  }

  set isFinishedProverbios(bool value) {
    _isFinishedProverbios = value;
    _saveIsFinishedProverbios(value);
  }

  set isFinishedEclesiastes(bool value) {
    _isFinishedEclesiastes = value;
    _saveIsFinishedEclesiastes(value);
  }

  set isFinishedCantares(bool value) {
    _isFinishedCantares = value;
    _saveIsFinishedCantares(value);
  }

  set isFinishedIsaias(bool value) {
    _isFinishedIsaias = value;
    _saveIsFinishedIsaias(value);
  }

  set isFinishedJeremias(bool value) {
    _isFinishedJeremias = value;
    _saveIsFinishedJeremias(value);
  }

  set isFinishedLamentacoes(bool value) {
    _isFinishedLamentacoes = value;
    _saveIsFinishedLamentacoes(value);
  }

  set isFinishedEzequiel(bool value) {
    _isFinishedEzequiel = value;
    _saveIsFinishedEzequiel(value);
  }

  set isFinishedDaniel(bool value) {
    _isFinishedDaniel = value;
    _saveIsFinishedDaniel(value);
  }

  set isFinishedOseias(bool value) {
    _isFinishedOseias = value;
    _saveIsFinishedOseias(value);
  }

  set isFinishedJoel(bool value) {
    _isFinishedJoel = value;
    _saveIsFinishedJoel(value);
  }

  set isFinishedAmos(bool value) {
    _isFinishedAmos = value;
    _saveIsFinishedAmos(value);
  }

  set isFinishedObadias(bool value) {
    _isFinishedObadias = value;
    _saveIsFinishedObadias(value);
  }

  set isFinishedJonas(bool value) {
    _isFinishedJonas = value;
    _saveIsFinishedJonas(value);
  }

  set isFinishedMiqueias(bool value) {
    _isFinishedMiqueias = value;
    _saveIsFinishedMiqueias(value);
  }

  set isFinishedNaum(bool value) {
    _isFinishedNaum = value;
    _saveIsFinishedNaum(value);
  }

  set isFinishedHabacuque(bool value) {
    _isFinishedHabacuque = value;
    _saveIsFinishedHabacuque(value);
  }

  set isFinishedSofonias(bool value) {
    _isFinishedSofonias = value;
    _saveIsFinishedSofonias(value);
  }

  set isFinishedAgeu(bool value) {
    _isFinishedAgeu = value;
    _saveIsFinishedAgeu(value);
  }

  set isFinishedZacarias(bool value) {
    _isFinishedZacarias = value;
    _saveIsFinishedZacarias(value);
  }

  set isFinishedMalaquias(bool value) {
    _isFinishedMalaquias = value;
    _saveIsFinishedMalaquias(value);
  }

  set isFinishedMateus(bool value) {
    _isFinishedMateus = value;
    _saveIsFinishedMateus(value);
  }

  set isFinishedMarcos(bool value) {
    _isFinishedMarcos = value;
    _saveIsFinishedMarcos(value);
  }

  set isFinishedLucas(bool value) {
    _isFinishedLucas = value;
    _saveIsFinishedLucas(value);
  }

  set isFinishedJoao(bool value) {
    _isFinishedJoao = value;
    _saveIsFinishedJoao(value);
  }

  set isFinishedAtos(bool value) {
    _isFinishedAtos = value;
    _saveIsFinishedAtos(value);
  }

  set isFinishedRomanos(bool value) {
    _isFinishedRomanos = value;
    _saveIsFinishedRomanos(value);
  }

  set isFinished1Corintios(bool value) {
    _isFinished1Corintios = value;
    _saveIsFinished1Corintios(value);
  }

  set isFinished2Corintios(bool value) {
    _isFinished2Corintios = value;
    _saveIsFinished2Corintios(value);
  }

  set isFinishedGalatas(bool value) {
    _isFinishedGalatas = value;
    _saveIsFinishedGalatas(value);
  }

  set isFinishedEfesios(bool value) {
    _isFinishedEfesios = value;
    _saveIsFinishedEfesios(value);
  }

  set isFinishedFilipenses(bool value) {
    _isFinishedFilipenses = value;
    _saveIsFinishedFilipenses(value);
  }

  set isFinishedColossenses(bool value) {
    _isFinishedColossenses = value;
    _saveIsFinishedColossenses(value);
  }

  set isFinished1Tessalonenses(bool value) {
    _isFinished1Tessalonenses = value;
    _saveIsFinished1Tessalonenses(value);
  }

  set isFinished2Tessalonenses(bool value) {
    _isFinished2Tessalonenses = value;
    _saveIsFinished2Tessalonenses(value);
  }

  set isFinished1Timoteo(bool value) {
    _isFinished1Timoteo = value;
    _saveIsFinished1Timoteo(value);
  }

  set isFinished2Timoteo(bool value) {
    _isFinished2Timoteo = value;
    _saveIsFinished2Timoteo(value);
  }

  set isFinishedTito(bool value) {
    _isFinishedTito = value;
    _saveIsFinishedTito(value);
  }

  set isFinishedFilemom(bool value) {
    _isFinishedFilemom = value;
    _saveIsFinishedFilemom(value);
  }

  set isFinishedHebreus(bool value) {
    _isFinishedHebreus = value;
    _saveIsFinishedHebreus(value);
  }

  set isFinishedTiago(bool value) {
    _isFinishedTiago = value;
    _saveIsFinishedTiago(value);
  }

  set isFinished1Pedro(bool value) {
    _isFinished1Pedro = value;
    _saveIsFinished1Pedro(value);
  }

  set isFinished2Pedro(bool value) {
    _isFinished2Pedro = value;
    _saveIsFinished2Pedro(value);
  }

  set isFinished1Joao(bool value) {
    _isFinished1Joao = value;
    _saveIsFinished1Joao(value);
  }

  set isFinished2Joao(bool value) {
    _isFinished2Joao = value;
    _saveIsFinished2Joao(value);
  }

  set isFinished3Joao(bool value) {
    _isFinished3Joao = value;
    _saveIsFinished3Joao(value);
  }

  set isFinishedJudas(bool value) {
    _isFinishedJudas = value;
    _saveIsFinishedJudas(value);
  }

  set isFinishedApocalipse(bool value) {
    _isFinishedApocalipse = value;
    _saveIsFinishedApocalipse(value);
  }

  Future<void> loadPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _isDirectQuestionMode = prefs.getBool('isDirectQuestionMode') ?? true;

    _currentQuestionIndexGenesis =
        prefs.getInt('currentQuestionIndexGenesis') ?? 0;
    _isFinishedGenesis = prefs.getBool('isFinishedGenesis') ?? false;

    _currentQuestionIndexExodus =
        prefs.getInt('currentQuestionIndexExodus') ?? 0;
    _isFinishedExodus = prefs.getBool('isFinishedExodus') ?? false;

    _currentQuestionIndexLeviticus =
        prefs.getInt('currentQuestionIndexLeviticus') ?? 0;
    _isFinishedLeviticus = prefs.getBool('isFinishedLeviticus') ?? false;

    _currentQuestionIndexNumbers =
        prefs.getInt('currentQuestionIndexNumbers') ?? 0;
    _isFinishedNumbers = prefs.getBool('isFinishedNumbers') ?? false;

    _currentQuestionIndexDeuteronomy =
        prefs.getInt('currentQuestionIndexDeuteronomy') ?? 0;
    _isFinishedDeuteronomy = prefs.getBool('isFinishedDeuteronomy') ?? false;

    _currentQuestionIndexJosue = prefs.getInt('currentQuestionIndexJosue') ?? 0;
    _isFinishedJosue = prefs.getBool('isFinishedJosue') ?? false;

    _currentQuestionIndexJudges =
        prefs.getInt('currentQuestionIndexJudges') ?? 0;
    _isFinishedJudges = prefs.getBool('isFinishedJudges') ?? false;

    _currentQuestionIndexRuth = prefs.getInt('currentQuestionIndexRuth') ?? 0;
    _isFinishedRuth = prefs.getBool('isFinishedRuth') ?? false;

    _currentQuestionIndex1Samuel =
        prefs.getInt('currentQuestionIndex1Samuel') ?? 0;
    _isFinished1Samuel = prefs.getBool('isFinished1Samuel') ?? false;

    _currentQuestionIndex2Samuel =
        prefs.getInt('currentQuestionIndex2Samuel') ?? 0;
    _isFinished2Samuel = prefs.getBool('isFinished2Samuel') ?? false;

    _currentQuestionIndex1Reis = prefs.getInt('currentQuestionIndex1Reis') ?? 0;
    _isFinished1Reis = prefs.getBool('isFinished1Reis') ?? false;

    _currentQuestionIndex2Reis = prefs.getInt('currentQuestionIndex2Reis') ?? 0;
    _isFinished2Reis = prefs.getBool('isFinished2Reis') ?? false;

    _currentQuestionIndex1Cronicas =
        prefs.getInt('currentQuestionIndex1Cronicas') ?? 0;
    _isFinished1Cronicas = prefs.getBool('isFinished1Cronicas') ?? false;

    _currentQuestionIndex2Cronicas =
        prefs.getInt('currentQuestionIndex2Cronicas') ?? 0;
    _isFinished2Cronicas = prefs.getBool('isFinished2Cronicas') ?? false;

    _currentQuestionIndexEsdras =
        prefs.getInt('currentQuestionIndexEsdras') ?? 0;
    _isFinishedEsdras = prefs.getBool('isFinishedEsdras') ?? false;

    _currentQuestionIndexNeemias =
        prefs.getInt('currentQuestionIndexNeemias') ?? 0;
    _isFinishedNeemias = prefs.getBool('isFinishedNeemias') ?? false;

    _currentQuestionIndexEster = prefs.getInt('currentQuestionIndexEster') ?? 0;
    _isFinishedEster = prefs.getBool('isFinishedEster') ?? false;

    _currentQuestionIndexJo = prefs.getInt('currentQuestionIndexJo') ?? 0;
    _isFinishedJo = prefs.getBool('isFinishedJo') ?? false;

    _currentQuestionIndexSalmos =
        prefs.getInt('currentQuestionIndexSalmos') ?? 0;
    _isFinishedSalmos = prefs.getBool('isFinishedSalmos') ?? false;

    _currentQuestionIndexProverbios =
        prefs.getInt('currentQuestionIndexProverbios') ?? 0;
    _isFinishedProverbios = prefs.getBool('isFinishedProverbios') ?? false;

    _currentQuestionIndexEclesiastes =
        prefs.getInt('currentQuestionIndexEclesiastes') ?? 0;
    _isFinishedEclesiastes = prefs.getBool('isFinishedEclesiastes') ?? false;

    _currentQuestionIndexCantares =
        prefs.getInt('currentQuestionIndexCantares') ?? 0;
    _isFinishedCantares = prefs.getBool('isFinishedCantares') ?? false;

    _currentQuestionIndexIsaias =
        prefs.getInt('currentQuestionIndexIsaias') ?? 0;
    _isFinishedIsaias = prefs.getBool('isFinishedIsaias') ?? false;

    _currentQuestionIndexJeremias =
        prefs.getInt('currentQuestionIndexJeremias') ?? 0;
    _isFinishedJeremias = prefs.getBool('isFinishedJeremias') ?? false;

    _currentQuestionIndexLamentacoes =
        prefs.getInt('currentQuestionIndexLamentacoes') ?? 0;
    _isFinishedLamentacoes = prefs.getBool('isFinishedLamentacoes') ?? false;

    _currentQuestionIndexEzequiel =
        prefs.getInt('currentQuestionIndexEzequiel') ?? 0;
    _isFinishedEzequiel = prefs.getBool('isFinishedEzequiel') ?? false;

    _currentQuestionIndexDaniel =
        prefs.getInt('currentQuestionIndexDaniel') ?? 0;
    _isFinishedDaniel = prefs.getBool('isFinishedDaniel') ?? false;

    _currentQuestionIndexOseias =
        prefs.getInt('currentQuestionIndexOseias') ?? 0;
    _isFinishedOseias = prefs.getBool('isFinishedOseias') ?? false;

    _currentQuestionIndexJoel = prefs.getInt('currentQuestionIndexJoel') ?? 0;
    _isFinishedJoel = prefs.getBool('isFinishedJoel') ?? false;

    _currentQuestionIndexAmos = prefs.getInt('currentQuestionIndexAmos') ?? 0;
    _isFinishedAmos = prefs.getBool('isFinishedAmos') ?? false;

    _currentQuestionIndexObadias =
        prefs.getInt('currentQuestionIndexObadias') ?? 0;
    _isFinishedObadias = prefs.getBool('isFinishedObadias') ?? false;

    _currentQuestionIndexJonas = prefs.getInt('currentQuestionIndexJonas') ?? 0;
    _isFinishedJonas = prefs.getBool('isFinishedJonas') ?? false;

    _currentQuestionIndexMiqueias =
        prefs.getInt('currentQuestionIndexMiqueias') ?? 0;
    _isFinishedMiqueias = prefs.getBool('isFinishedMiqueias') ?? false;

    _currentQuestionIndexNaum = prefs.getInt('currentQuestionIndexNaum') ?? 0;
    _isFinishedNaum = prefs.getBool('isFinishedNaum') ?? false;

    _currentQuestionIndexHabacuque =
        prefs.getInt('currentQuestionIndexHabacuque') ?? 0;
    _isFinishedHabacuque = prefs.getBool('isFinishedHabacuque') ?? false;

    _currentQuestionIndexSofonias =
        prefs.getInt('currentQuestionIndexSofonias') ?? 0;
    _isFinishedSofonias = prefs.getBool('isFinishedSofonias') ?? false;

    _currentQuestionIndexAgeu = prefs.getInt('currentQuestionIndexAgeu') ?? 0;
    _isFinishedAgeu = prefs.getBool('isFinishedAgeu') ?? false;

    _currentQuestionIndexZacarias =
        prefs.getInt('currentQuestionIndexZacarias') ?? 0;
    _isFinishedZacarias = prefs.getBool('isFinishedZacarias') ?? false;

    _currentQuestionIndexMalaquias =
        prefs.getInt('currentQuestionIndexMalaquias') ?? 0;
    _isFinishedMalaquias = prefs.getBool('isFinishedMalaquias') ?? false;

    _currentQuestionIndexMateus =
        prefs.getInt('currentQuestionIndexMateus') ?? 0;
    _isFinishedMateus = prefs.getBool('isFinishedMateus') ?? false;

    _currentQuestionIndexMarcos =
        prefs.getInt('currentQuestionIndexMarcos') ?? 0;
    _isFinishedMarcos = prefs.getBool('isFinishedMarcos') ?? false;

    _currentQuestionIndexLucas = prefs.getInt('currentQuestionIndexLucas') ?? 0;
    _isFinishedLucas = prefs.getBool('isFinishedLucas') ?? false;

    _currentQuestionIndexJoao = prefs.getInt('currentQuestionIndexJoao') ?? 0;
    _isFinishedJoao = prefs.getBool('isFinishedJoao') ?? false;

    _currentQuestionIndexAtos = prefs.getInt('currentQuestionIndexAtos') ?? 0;
    _isFinishedAtos = prefs.getBool('isFinishedAtos') ?? false;

    _currentQuestionIndexRomanos =
        prefs.getInt('currentQuestionIndexRomanos') ?? 0;
    _isFinishedRomanos = prefs.getBool('isFinishedRomanos') ?? false;

    _currentQuestionIndex1Corintios =
        prefs.getInt('currentQuestionIndex1Corintios') ?? 0;
    _isFinished1Corintios = prefs.getBool('isFinished1Corintios') ?? false;

    _currentQuestionIndex2Corintios =
        prefs.getInt('currentQuestionIndex2Corintios') ?? 0;
    _isFinished2Corintios = prefs.getBool('isFinished2Corintios') ?? false;

    _currentQuestionIndexGalatas =
        prefs.getInt('currentQuestionIndexGalatas') ?? 0;
    _isFinishedGalatas = prefs.getBool('isFinishedGalatas') ?? false;

    _currentQuestionIndexEfesios =
        prefs.getInt('currentQuestionIndexEfesios') ?? 0;
    _isFinishedEfesios = prefs.getBool('isFinishedEfesios') ?? false;

    _currentQuestionIndexFilipenses =
        prefs.getInt('currentQuestionIndexFilipenses') ?? 0;
    _isFinishedFilipenses = prefs.getBool('isFinishedFilipenses') ?? false;

    _currentQuestionIndexColossenses =
        prefs.getInt('currentQuestionIndexColossenses') ?? 0;
    _isFinishedColossenses = prefs.getBool('isFinishedColossenses') ?? false;

    _currentQuestionIndex1Tessalonenses =
        prefs.getInt('currentQuestionIndex1Tessalonenses') ?? 0;
    _isFinished1Tessalonenses =
        prefs.getBool('isFinished1Tessalonenses') ?? false;

    _currentQuestionIndex2Tessalonenses =
        prefs.getInt('currentQuestionIndex2Tessalonenses') ?? 0;
    _isFinished2Tessalonenses =
        prefs.getBool('isFinished2Tessalonenses') ?? false;

    _currentQuestionIndex1Timoteo =
        prefs.getInt('currentQuestionIndex1Timoteo') ?? 0;
    _isFinished1Timoteo = prefs.getBool('isFinished1Timoteo') ?? false;

    _currentQuestionIndex2Timoteo =
        prefs.getInt('currentQuestionIndex2Timoteo') ?? 0;
    _isFinished2Timoteo = prefs.getBool('isFinished2Timoteo') ?? false;

    _currentQuestionIndexTito = prefs.getInt('currentQuestionIndexTito') ?? 0;
    _isFinishedTito = prefs.getBool('isFinishedTito') ?? false;

    _currentQuestionIndexFilemom =
        prefs.getInt('currentQuestionIndexFilemom') ?? 0;
    _isFinishedFilemom = prefs.getBool('isFinishedFilemom') ?? false;

    _currentQuestionIndexHebreus =
        prefs.getInt('currentQuestionIndexHebreus') ?? 0;
    _isFinishedHebreus = prefs.getBool('isFinishedHebreus') ?? false;

    _currentQuestionIndexTiago = prefs.getInt('currentQuestionIndexTiago') ?? 0;
    _isFinishedTiago = prefs.getBool('isFinishedTiago') ?? false;

    _currentQuestionIndex1Pedro =
        prefs.getInt('currentQuestionIndex1Pedro') ?? 0;
    _isFinished1Pedro = prefs.getBool('isFinished1Pedro') ?? false;

    _currentQuestionIndex2Pedro =
        prefs.getInt('currentQuestionIndex2Pedro') ?? 0;
    _isFinished2Pedro = prefs.getBool('isFinished2Pedro') ?? false;

    _currentQuestionIndex1Joao = prefs.getInt('currentQuestionIndex1Joao') ?? 0;
    _isFinished1Joao = prefs.getBool('isFinished1Joao') ?? false;

    _currentQuestionIndex2Joao = prefs.getInt('currentQuestionIndex2Joao') ?? 0;
    _isFinished2Joao = prefs.getBool('isFinished2Joao') ?? false;

    _currentQuestionIndex3Joao = prefs.getInt('currentQuestionIndex3Joao') ?? 0;
    _isFinished3Joao = prefs.getBool('isFinished3Joao') ?? false;

    _currentQuestionIndexJudas = prefs.getInt('currentQuestionIndexJudas') ?? 0;
    _isFinishedJudas = prefs.getBool('isFinishedJudas') ?? false;

    _currentQuestionIndexApocalipse =
        prefs.getInt('currentQuestionIndexApocalipse') ?? 0;
    _isFinishedApocalipse = prefs.getBool('isFinishedApocalipse') ?? false;
  }

  Future<void> _saveIsDirectQuestionMode(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isDirectQuestionMode', value);
  }

  Future<void> _saveCurrentQuestionIndexGenesis(int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentQuestionIndexGenesis', value);
  }

  Future<void> _saveCurrentQuestionIndexExodus(int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentQuestionIndexExodus', value);
  }

  Future<void> _saveCurrentQuestionIndexLeviticus(int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentQuestionIndexLeviticus', value);
  }

  Future<void> _saveCurrentQuestionIndexNumbers(int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentQuestionIndexNumbers', value);
  }

  Future<void> _saveCurrentQuestionIndexDeuteronomy(int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentQuestionIndexDeuteronomy', value);
  }

  Future<void> _saveCurrentQuestionIndexJosue(int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentQuestionIndexJosue', value);
  }

  Future<void> _saveCurrentQuestionIndexJudges(int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentQuestionIndexJudges', value);
  }

  Future<void> _saveCurrentQuestionIndexRuth(int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentQuestionIndexRuth', value);
  }

  Future<void> _saveCurrentQuestionIndex1Samuel(int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentQuestionIndex1Samuel', value);
  }

  Future<void> _saveCurrentQuestionIndex2Samuel(int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentQuestionIndex2Samuel', value);
  }

  Future<void> _saveCurrentQuestionIndex1Reis(int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentQuestionIndex1Reis', value);
  }

  Future<void> _saveCurrentQuestionIndex2Reis(int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentQuestionIndex2Reis', value);
  }

  Future<void> _saveCurrentQuestionIndex1Cronicas(int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentQuestionIndex1Cronicas', value);
  }

  Future<void> _saveCurrentQuestionIndex2Cronicas(int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentQuestionIndex2Cronicas', value);
  }

  Future<void> _saveCurrentQuestionIndexEsdras(int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentQuestionIndexEsdras', value);
  }

  Future<void> _saveCurrentQuestionIndexNeemias(int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentQuestionIndexNeemias', value);
  }

  Future<void> _saveCurrentQuestionIndexEster(int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentQuestionIndexEster', value);
  }

  Future<void> _saveCurrentQuestionIndexJo(int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentQuestionIndexJo', value);
  }

  Future<void> _saveCurrentQuestionIndexSalmos(int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentQuestionIndexSalmos', value);
  }

  Future<void> _saveCurrentQuestionIndexProverbios(int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentQuestionIndexProverbios', value);
  }

  Future<void> _saveCurrentQuestionIndexEclesiastes(int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentQuestionIndexEclesiastes', value);
  }

  Future<void> _saveCurrentQuestionIndexCantares(int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentQuestionIndexCantares', value);
  }

  Future<void> _saveCurrentQuestionIndexIsaias(int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentQuestionIndexIsaias', value);
  }

  Future<void> _saveCurrentQuestionIndexJeremias(int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentQuestionIndexJeremias', value);
  }

  Future<void> _saveCurrentQuestionIndexLamentacoes(int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentQuestionIndexLamentacoes', value);
  }

  Future<void> _saveCurrentQuestionIndexEzequiel(int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentQuestionIndexEzequiel', value);
  }

  Future<void> _saveCurrentQuestionIndexDaniel(int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentQuestionIndexDaniel', value);
  }

  Future<void> _saveCurrentQuestionIndexOseias(int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentQuestionIndexOseias', value);
  }

  Future<void> _saveCurrentQuestionIndexJoel(int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentQuestionIndexJoel', value);
  }

  Future<void> _saveCurrentQuestionIndexAmos(int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentQuestionIndexAmos', value);
  }

  Future<void> _saveCurrentQuestionIndexObadias(int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentQuestionIndexObadias', value);
  }

  Future<void> _saveCurrentQuestionIndexJonas(int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentQuestionIndexJonas', value);
  }

  Future<void> _saveCurrentQuestionIndexMiqueias(int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentQuestionIndexMiqueias', value);
  }

  Future<void> _saveCurrentQuestionIndexNaum(int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentQuestionIndexNaum', value);
  }

  Future<void> _saveCurrentQuestionIndexHabacuque(int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentQuestionIndexHabacuque', value);
  }

  Future<void> _saveCurrentQuestionIndexSofonias(int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentQuestionIndexSofonias', value);
  }

  Future<void> _saveCurrentQuestionIndexAgeu(int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentQuestionIndexAgeu', value);
  }

  Future<void> _saveCurrentQuestionIndexZacarias(int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentQuestionIndexZacarias', value);
  }

  Future<void> _saveCurrentQuestionIndexMalaquias(int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentQuestionIndexMalaquias', value);
  }

  Future<void> _saveCurrentQuestionIndexMateus(int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentQuestionIndexMateus', value);
  }

  Future<void> _saveCurrentQuestionIndexMarcos(int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentQuestionIndexMarcos', value);
  }

  Future<void> _saveCurrentQuestionIndexLucas(int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentQuestionIndexLucas', value);
  }

  Future<void> _saveCurrentQuestionIndexJoao(int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentQuestionIndexJoao', value);
  }

  Future<void> _saveCurrentQuestionIndexAtos(int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentQuestionIndexAtos', value);
  }

  Future<void> _saveCurrentQuestionIndexRomanos(int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentQuestionIndexRomanos', value);
  }

  Future<void> _saveCurrentQuestionIndex1Corintios(int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentQuestionIndex1Corintios', value);
  }

  Future<void> _saveCurrentQuestionIndex2Corintios(int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentQuestionIndex2Corintios', value);
  }

  Future<void> _saveCurrentQuestionIndexGalatas(int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentQuestionIndexGalatas', value);
  }

  Future<void> _saveCurrentQuestionIndexEfesios(int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentQuestionIndexEfesios', value);
  }

  Future<void> _saveCurrentQuestionIndexFilipenses(int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentQuestionIndexFilipenses', value);
  }

  Future<void> _saveCurrentQuestionIndexColossenses(int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentQuestionIndexColossenses', value);
  }

  Future<void> _saveCurrentQuestionIndex1Tessalonenses(int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentQuestionIndex1Tessalonenses', value);
  }

  Future<void> _saveCurrentQuestionIndex2Tessalonenses(int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentQuestionIndex2Tessalonenses', value);
  }

  Future<void> _saveCurrentQuestionIndex1Timoteo(int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentQuestionIndex1Timoteo', value);
  }

  Future<void> _saveCurrentQuestionIndex2Timoteo(int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentQuestionIndex2Timoteo', value);
  }

  Future<void> _saveCurrentQuestionIndexTito(int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentQuestionIndexTito', value);
  }

  Future<void> _saveCurrentQuestionIndexFilemom(int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentQuestionIndexFilemom', value);
  }

  Future<void> _saveCurrentQuestionIndexHebreus(int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentQuestionIndexHebreus', value);
  }

  Future<void> _saveCurrentQuestionIndexTiago(int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentQuestionIndexTiago', value);
  }

  Future<void> _saveCurrentQuestionIndex1Pedro(int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentQuestionIndex1Pedro', value);
  }

  Future<void> _saveCurrentQuestionIndex2Pedro(int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentQuestionIndex2Pedro', value);
  }

  Future<void> _saveCurrentQuestionIndex1Joao(int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentQuestionIndex1Joao', value);
  }

  Future<void> _saveCurrentQuestionIndex2Joao(int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentQuestionIndex2Joao', value);
  }

  Future<void> _saveCurrentQuestionIndex3Joao(int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentQuestionIndex3Joao', value);
  }

  Future<void> _saveCurrentQuestionIndexJudas(int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentQuestionIndexJudas', value);
  }

  Future<void> _saveCurrentQuestionIndexApocalipse(int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentQuestionIndexApocalipse', value);
  }

  Future<void> _saveIsFinishedGenesis(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFinishedGenesis', value);
  }

  Future<void> _saveIsFinishedExodus(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFinishedExodus', value);
  }

  Future<void> _saveIsFinishedLeviticus(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFinishedLeviticus', value);
  }

  Future<void> _saveIsFinishedNumbers(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFinishedNumbers', value);
  }

  Future<void> _saveIsFinishedDeuteronomy(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFinishedDeuteronomy', value);
  }

  Future<void> _saveIsFinishedJosue(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFinishedJosue', value);
  }

  Future<void> _saveIsFinishedJudges(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFinishedJudges', value);
  }

  Future<void> _saveIsFinishedRuth(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFinishedRuth', value);
  }

  Future<void> _saveIsFinished1Samuel(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFinished1Samuel', value);
  }

  Future<void> _saveIsFinished2Samuel(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFinished2Samuel', value);
  }

  Future<void> _saveIsFinished1Reis(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFinished1Reis', value);
  }

  Future<void> _saveIsFinished2Reis(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFinished2Reis', value);
  }

  Future<void> _saveIsFinished1Cronicas(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFinished1Cronicas', value);
  }

  Future<void> _saveIsFinished2Cronicas(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFinished2Cronicas', value);
  }

  Future<void> _saveIsFinishedEsdras(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFinishedEsdras', value);
  }

  Future<void> _saveIsFinishedNeemias(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFinishedNeemias', value);
  }

  Future<void> _saveIsFinishedEster(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFinishedEster', value);
  }

  Future<void> _saveIsFinishedJo(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFinishedJo', value);
  }

  Future<void> _saveIsFinishedSalmos(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFinishedSalmos', value);
  }

  Future<void> _saveIsFinishedProverbios(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFinishedProverbios', value);
  }

  Future<void> _saveIsFinishedEclesiastes(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFinishedEclesiastes', value);
  }

  Future<void> _saveIsFinishedCantares(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFinishedCantares', value);
  }

  Future<void> _saveIsFinishedIsaias(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFinishedIsaias', value);
  }

  Future<void> _saveIsFinishedJeremias(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFinishedJeremias', value);
  }

  Future<void> _saveIsFinishedLamentacoes(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFinishedLamentacoes', value);
  }

  Future<void> _saveIsFinishedEzequiel(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFinishedEzequiel', value);
  }

  Future<void> _saveIsFinishedDaniel(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFinishedDaniel', value);
  }

  Future<void> _saveIsFinishedOseias(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFinishedOseias', value);
  }

  Future<void> _saveIsFinishedJoel(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFinishedJoel', value);
  }

  Future<void> _saveIsFinishedAmos(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFinishedAmos', value);
  }

  Future<void> _saveIsFinishedObadias(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFinishedObadias', value);
  }

  Future<void> _saveIsFinishedJonas(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFinishedJonas', value);
  }

  Future<void> _saveIsFinishedMiqueias(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFinishedMiqueias', value);
  }

  Future<void> _saveIsFinishedNaum(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFinishedNaum', value);
  }

  Future<void> _saveIsFinishedHabacuque(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFinishedHabacuque', value);
  }

  Future<void> _saveIsFinishedSofonias(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFinishedSofonias', value);
  }

  Future<void> _saveIsFinishedAgeu(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFinishedAgeu', value);
  }

  Future<void> _saveIsFinishedZacarias(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFinishedZacarias', value);
  }

  Future<void> _saveIsFinishedMalaquias(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFinishedMalaquias', value);
  }

  Future<void> _saveIsFinishedMateus(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFinishedMateus', value);
  }

  Future<void> _saveIsFinishedMarcos(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFinishedMarcos', value);
  }

  Future<void> _saveIsFinishedLucas(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFinishedLucas', value);
  }

  Future<void> _saveIsFinishedJoao(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFinishedJoao', value);
  }

  Future<void> _saveIsFinishedAtos(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFinishedAtos', value);
  }

  Future<void> _saveIsFinishedRomanos(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFinishedRomanos', value);
  }

  Future<void> _saveIsFinished1Corintios(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFinished1Corintios', value);
  }

  Future<void> _saveIsFinished2Corintios(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFinished2Corintios', value);
  }

  Future<void> _saveIsFinishedGalatas(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFinishedGalatas', value);
  }

  Future<void> _saveIsFinishedEfesios(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFinishedEfesios', value);
  }

  Future<void> _saveIsFinishedFilipenses(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFinishedFilipenses', value);
  }

  Future<void> _saveIsFinishedColossenses(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFinishedColossenses', value);
  }

  Future<void> _saveIsFinished1Tessalonenses(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFinished1Tessalonenses', value);
  }

  Future<void> _saveIsFinished2Tessalonenses(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFinished2Tessalonenses', value);
  }

  Future<void> _saveIsFinished1Timoteo(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFinished1Timoteo', value);
  }

  Future<void> _saveIsFinished2Timoteo(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFinished2Timoteo', value);
  }

  Future<void> _saveIsFinishedTito(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFinishedTito', value);
  }

  Future<void> _saveIsFinishedFilemom(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFinishedFilemom', value);
  }

  Future<void> _saveIsFinishedHebreus(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFinishedHebreus', value);
  }

  Future<void> _saveIsFinishedTiago(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFinishedTiago', value);
  }

  Future<void> _saveIsFinished1Pedro(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFinished1Pedro', value);
  }

  Future<void> _saveIsFinished2Pedro(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFinished2Pedro', value);
  }

  Future<void> _saveIsFinished1Joao(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFinished1Joao', value);
  }

  Future<void> _saveIsFinished2Joao(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFinished2Joao', value);
  }

  Future<void> _saveIsFinished3Joao(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFinished3Joao', value);
  }

  Future<void> _saveIsFinishedJudas(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFinishedJudas', value);
  }

  Future<void> _saveIsFinishedApocalipse(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFinishedApocalipse', value);
  }

  Future<void> resetProgressGenesis() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('currentQuestionIndexGenesis');
    await prefs.remove('isFinishedGenesis');
    _currentQuestionIndexGenesis = 0;
    _isFinishedGenesis = false;
  }

  Future<void> resetProgressExodus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('currentQuestionIndexExodus');
    await prefs.remove('isFinishedExodus');
    _currentQuestionIndexExodus = 0;
    _isFinishedExodus = false;
  }

  Future<void> resetProgressLeviticus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('currentQuestionIndexLeviticus');
    await prefs.remove('isFinishedLeviticus');
    _currentQuestionIndexLeviticus = 0;
    _isFinishedLeviticus = false;
  }

  Future<void> resetProgressNumbers() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('currentQuestionIndexNumbers');
    await prefs.remove('isFinishedNumbers');
    _currentQuestionIndexNumbers = 0;
    _isFinishedNumbers = false;
  }

  Future<void> resetProgressDeuteronomy() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('currentQuestionIndexDeuteronomy');
    await prefs.remove('isFinishedDeuteronomy');
    _currentQuestionIndexDeuteronomy = 0;
    _isFinishedDeuteronomy = false;
  }

  Future<void> resetProgressJosue() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('currentQuestionIndexJosue');
    await prefs.remove('isFinishedJosue');
    _currentQuestionIndexJosue = 0;
    _isFinishedJosue = false;
  }

  Future<void> resetProgressJudges() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('currentQuestionIndexJudges');
    await prefs.remove('isFinishedJudges');
    _currentQuestionIndexJudges = 0;
    _isFinishedJudges = false;
  }

  Future<void> resetProgressRuth() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('currentQuestionIndexRuth');
    await prefs.remove('isFinishedRuth');
    _currentQuestionIndexRuth = 0;
    _isFinishedRuth = false;
  }

  Future<void> resetProgress1Samuel() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('currentQuestionIndex1Samuel');
    await prefs.remove('isFinished1Samuel');
    _currentQuestionIndex1Samuel = 0;
    _isFinished1Samuel = false;
  }

  Future<void> resetProgress2Samuel() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('currentQuestionIndex2Samuel');
    await prefs.remove('isFinished2Samuel');
    _currentQuestionIndex2Samuel = 0;
    _isFinished2Samuel = false;
  }

  Future<void> resetProgress1Reis() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('currentQuestionIndex1Reis');
    await prefs.remove('isFinished1Reis');
    _currentQuestionIndex1Reis = 0;
    _isFinished1Reis = false;
  }

  Future<void> resetProgress2Reis() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('currentQuestionIndex2Reis');
    await prefs.remove('isFinished2Reis');
    _currentQuestionIndex2Reis = 0;
    _isFinished2Reis = false;
  }

  Future<void> resetProgress1Cronicas() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('currentQuestionIndex1Cronicas');
    await prefs.remove('isFinished1Cronicas');
    _currentQuestionIndex1Cronicas = 0;
    _isFinished1Cronicas = false;
  }

  Future<void> resetProgress2Cronicas() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('currentQuestionIndex2Cronicas');
    await prefs.remove('isFinished2Cronicas');
    _currentQuestionIndex2Cronicas = 0;
    _isFinished2Cronicas = false;
  }

  Future<void> resetProgressEsdras() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('currentQuestionIndexEsdras');
    await prefs.remove('isFinishedEsdras');
    _currentQuestionIndexEsdras = 0;
    _isFinishedEsdras = false;
  }

  Future<void> resetProgressNeemias() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('currentQuestionIndexNeemias');
    await prefs.remove('isFinishedNeemias');
    _currentQuestionIndexNeemias = 0;
    _isFinishedNeemias = false;
  }

  Future<void> resetProgressEster() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('currentQuestionIndexEster');
    await prefs.remove('isFinishedEster');
    _currentQuestionIndexEster = 0;
    _isFinishedEster = false;
  }

  Future<void> resetProgressJo() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('currentQuestionIndexJo');
    await prefs.remove('isFinishedJo');
    _currentQuestionIndexJo = 0;
    _isFinishedJo = false;
  }

  Future<void> resetProgressSalmos() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('currentQuestionIndexSalmos');
    await prefs.remove('isFinishedSalmos');
    _currentQuestionIndexSalmos = 0;
    _isFinishedSalmos = false;
  }

  Future<void> resetProgressProverbios() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('currentQuestionIndexProverbios');
    await prefs.remove('isFinishedProverbios');
    _currentQuestionIndexProverbios = 0;
    _isFinishedProverbios = false;
  }

  Future<void> resetProgressEclesiastes() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('currentQuestionIndexEclesiastes');
    await prefs.remove('isFinishedEclesiastes');
    _currentQuestionIndexEclesiastes = 0;
    _isFinishedEclesiastes = false;
  }

  Future<void> resetProgressCantares() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('currentQuestionIndexCantares');
    await prefs.remove('isFinishedCantares');
    _currentQuestionIndexCantares = 0;
    _isFinishedCantares = false;
  }

  Future<void> resetProgressIsaias() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('currentQuestionIndexIsaias');
    await prefs.remove('isFinishedIsaias');
    _currentQuestionIndexIsaias = 0;
    _isFinishedIsaias = false;
  }

  Future<void> resetProgressJeremias() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('currentQuestionIndexJeremias');
    await prefs.remove('isFinishedJeremias');
    _currentQuestionIndexJeremias = 0;
    _isFinishedJeremias = false;
  }

  Future<void> resetProgressLamentacoes() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('currentQuestionIndexLamentacoes');
    await prefs.remove('isFinishedLamentacoes');
    _currentQuestionIndexLamentacoes = 0;
    _isFinishedLamentacoes = false;
  }

  Future<void> resetProgressEzequiel() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('currentQuestionIndexEzequiel');
    await prefs.remove('isFinishedEzequiel');
    _currentQuestionIndexEzequiel = 0;
    _isFinishedEzequiel = false;
  }

  Future<void> resetProgressDaniel() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('currentQuestionIndexDaniel');
    await prefs.remove('isFinishedDaniel');
    _currentQuestionIndexDaniel = 0;
    _isFinishedDaniel = false;
  }

  Future<void> resetProgressOseias() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('currentQuestionIndexOseias');
    await prefs.remove('isFinishedOseias');
    _currentQuestionIndexOseias = 0;
    _isFinishedOseias = false;
  }

  Future<void> resetProgressJoel() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('currentQuestionIndexJoel');
    await prefs.remove('isFinishedJoel');
    _currentQuestionIndexJoel = 0;
    _isFinishedJoel = false;
  }

  Future<void> resetProgressAmos() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('currentQuestionIndexAmos');
    await prefs.remove('isFinishedAmos');
    _currentQuestionIndexAmos = 0;
    _isFinishedAmos = false;
  }

  Future<void> resetProgressObadias() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('currentQuestionIndexObadias');
    await prefs.remove('isFinishedObadias');
    _currentQuestionIndexObadias = 0;
    _isFinishedObadias = false;
  }

  Future<void> resetProgressJonas() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('currentQuestionIndexJonas');
    await prefs.remove('isFinishedJonas');
    _currentQuestionIndexJonas = 0;
    _isFinishedJonas = false;
  }

  Future<void> resetProgressMiqueias() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('currentQuestionIndexMiqueias');
    await prefs.remove('isFinishedMiqueias');
    _currentQuestionIndexMiqueias = 0;
    _isFinishedMiqueias = false;
  }

  Future<void> resetProgressNaum() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('currentQuestionIndexNaum');
    await prefs.remove('isFinishedNaum');
    _currentQuestionIndexNaum = 0;
    _isFinishedNaum = false;
  }

  Future<void> resetProgressHabacuque() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('currentQuestionIndexHabacuque');
    await prefs.remove('isFinishedHabacuque');
    _currentQuestionIndexHabacuque = 0;
    _isFinishedHabacuque = false;
  }

  Future<void> resetProgressSofonias() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('currentQuestionIndexSofonias');
    await prefs.remove('isFinishedSofonias');
    _currentQuestionIndexSofonias = 0;
    _isFinishedSofonias = false;
  }

  Future<void> resetProgressAgeu() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('currentQuestionIndexAgeu');
    await prefs.remove('isFinishedAgeu');
    _currentQuestionIndexAgeu = 0;
    _isFinishedAgeu = false;
  }

  Future<void> resetProgressZacarias() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('currentQuestionIndexZacarias');
    await prefs.remove('isFinishedZacarias');
  }

  Future<void> resetProgressMalaquias() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('currentQuestionIndexMalaquias');
    await prefs.remove('isFinishedMalaquias');
  }

  Future<void> resetProgressMateus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('currentQuestionIndexMateus');
    await prefs.remove('isFinishedMateus');
  }

  Future<void> resetProgressMarcos() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('currentQuestionIndexMarcos');
    await prefs.remove('isFinishedMarcos');
  }

  Future<void> resetProgressLucas() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('currentQuestionIndexLucas');
    await prefs.remove('isFinishedLucas');
  }

  Future<void> resetProgressJoao() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('currentQuestionIndexJoao');
    await prefs.remove('isFinishedJoao');
  }

  Future<void> resetProgressAtos() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('currentQuestionIndexAtos');
    await prefs.remove('isFinishedAtos');
  }

  Future<void> resetProgressRomanos() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('currentQuestionIndexRomanos');
    await prefs.remove('isFinishedRomanos');
  }

  Future<void> resetProgress1Corintios() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('currentQuestionIndex1Corintios');
    await prefs.remove('isFinished1Corintios');
  }

  Future<void> resetProgress2Corintios() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('currentQuestionIndex2Corintios');
    await prefs.remove('isFinished2Corintios');
  }

  Future<void> resetProgressGalatas() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('currentQuestionIndexGalatas');
    await prefs.remove('isFinishedGalatas');
  }

  Future<void> resetProgressEfesios() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('currentQuestionIndexEfesios');
    await prefs.remove('isFinishedEfesios');
  }

  Future<void> resetProgressFilipenses() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('currentQuestionIndexFilipenses');
    await prefs.remove('isFinishedFilipenses');
  }

  Future<void> resetProgressColossenses() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('currentQuestionIndexColossenses');
    await prefs.remove('isFinishedColossenses');
  }

  Future<void> resetProgress1Tessalonenses() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('currentQuestionIndex1Tessalonenses');
    await prefs.remove('isFinished1Tessalonenses');
  }

  Future<void> resetProgress2Tessalonenses() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('currentQuestionIndex2Tessalonenses');
    await prefs.remove('isFinished2Tessalonenses');
  }

  Future<void> resetProgress1Timoteo() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('currentQuestionIndex1Timoteo');
    await prefs.remove('isFinished1Timoteo');
  }

  Future<void> resetProgress2Timoteo() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('currentQuestionIndex2Timoteo');
    await prefs.remove('isFinished2Timoteo');
  }

  Future<void> resetProgressTito() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('currentQuestionIndexTito');
    await prefs.remove('isFinishedTito');
  }

  Future<void> resetProgressFilemom() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('currentQuestionIndexFilemom');
    await prefs.remove('isFinishedFilemom');
  }

  Future<void> resetProgressHebreus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('currentQuestionIndexHebreus');
    await prefs.remove('isFinishedHebreus');
  }

  Future<void> resetProgressTiago() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('currentQuestionIndexTiago');
    await prefs.remove('isFinishedTiago');
  }

  Future<void> resetProgress1Pedro() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('currentQuestionIndex1Pedro');
    await prefs.remove('isFinished1Pedro');
  }

  Future<void> resetProgress2Pedro() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('currentQuestionIndex2Pedro');
    await prefs.remove('isFinished2Pedro');
  }

  Future<void> resetProgress1Joao() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('currentQuestionIndex1Joao');
    await prefs.remove('isFinished1Joao');
  }

  Future<void> resetProgress2Joao() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('currentQuestionIndex2Joao');
    await prefs.remove('isFinished2Joao');
  }

  Future<void> resetProgress3Joao() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('currentQuestionIndex3Joao');
    await prefs.remove('isFinished3Joao');
  }

  Future<void> resetProgressJudas() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('currentQuestionIndexJudas');
    await prefs.remove('isFinishedJudas');
  }

  Future<void> resetProgressApocalipse() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('currentQuestionIndexApocalipse');
    await prefs.remove('isFinishedApocalipse');
  }
}
