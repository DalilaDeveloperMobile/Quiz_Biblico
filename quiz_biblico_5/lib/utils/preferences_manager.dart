import 'package:shared_preferences/shared_preferences.dart';

class PreferencesManager {
  static final PreferencesManager instance = PreferencesManager._internal();

  bool _isDirectQuestionMode = false;
  int _currentQuestionIndexRandom = 0;
  bool _isFinishedRandom = false;

  int _currentQuestionIndexEasy = 0;
  bool _isFinishedEasy = false;

  int _currentQuestionIndexMedium = 0;
  bool _isFinishedMedium = false;

  int _currentQuestionIndexDifficult = 0;
  bool _isFinishedDifficult = false;

  PreferencesManager._internal();

  bool get isDirectQuestionMode => _isDirectQuestionMode;
  
  int get currentQuestionIndexRandom => _currentQuestionIndexRandom;
  bool get isFinishedRandom => _isFinishedRandom;

  int get currentQuestionIndexEasy => _currentQuestionIndexEasy;
  bool get isFinishedEasy => _isFinishedEasy;

  int get currentQuestionIndexMedium => _currentQuestionIndexMedium;
  bool get isFinishedMedium => _isFinishedMedium;

  int get currentQuestionIndexDifficult => _currentQuestionIndexDifficult;
  bool get isFinishedDifficult => _isFinishedDifficult;

  set isDirectQuestionMode(bool value) {
    _isDirectQuestionMode = value;
    _saveIsDirectQuestionMode(value);
  }

  set currentQuestionIndexRandom(int value) {
    _currentQuestionIndexRandom = value;
    _saveCurrentQuestionIndexRandom(value);
  }

  set currentQuestionIndexEasy(int value) {
    _currentQuestionIndexEasy = value;
    _saveCurrentQuestionIndexEasy(value);
  }

  set currentQuestionIndexMedium(int value) {
    _currentQuestionIndexMedium = value;
    _saveCurrentQuestionIndexMedium(value);
  }

  set currentQuestionIndexDifficult(int value) {
    _currentQuestionIndexDifficult = value;
    _saveCurrentQuestionIndexDifficult(value);
  }

  set isFinishedRandom(bool value) {
    _isFinishedRandom = value;
    _saveIsFinishedRandom(value);
  }

  set isFinishedEasy(bool value) {
    _isFinishedEasy = value;
    _saveIsFinishedEasy(value);
  }

  set isFinishedMedium(bool value) {
    _isFinishedMedium = value;
    _saveIsFinishedMedium(value);
  }

  set isFinishedDifficult(bool value) {
    _isFinishedDifficult = value;
    _saveIsFinishedDifficult(value);
  }

  Future<void> loadPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _isDirectQuestionMode = prefs.getBool('isDirectQuestionMode') ?? true;
    
    _currentQuestionIndexRandom = prefs.getInt('currentQuestionIndexRandom') ?? 0;
    _isFinishedRandom = prefs.getBool('isFinishedRandom') ?? false;
    
    _currentQuestionIndexEasy = prefs.getInt('currentQuestionIndexEasy') ?? 0;
    _isFinishedEasy = prefs.getBool('isFinishedEasy') ?? false;

    _currentQuestionIndexMedium = prefs.getInt('currentQuestionIndexMedium') ?? 0;
    _isFinishedMedium = prefs.getBool('isFinishedMedium') ?? false;

    _currentQuestionIndexDifficult = prefs.getInt('currentQuestionIndexDifficult') ?? 0;
    _isFinishedDifficult = prefs.getBool('isFinishedDifficult') ?? false;
    
    }

  Future<void> _saveIsDirectQuestionMode(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isDirectQuestionMode', value);
  }

  Future<void> _saveCurrentQuestionIndexRandom(int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentQuestionIndexRandom', value);
  }

  Future<void> _saveCurrentQuestionIndexEasy(int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentQuestionIndexEasy', value);
  }

  Future<void> _saveCurrentQuestionIndexMedium(int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentQuestionIndexMedium', value);
  }

  Future<void> _saveCurrentQuestionIndexDifficult(int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentQuestionIndexDifficult', value);
  }

  Future<void> _saveIsFinishedRandom(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFinishedRandom', value);
  }

  Future<void> _saveIsFinishedEasy(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFinishedEasy', value);
  }

  Future<void> _saveIsFinishedMedium(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFinishedMedium', value);
  }

  Future<void> _saveIsFinishedDifficult(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFinishedDifficult', value);
  }

  Future<void> resetProgressRandom() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('currentQuestionIndexRandom');
    await prefs.remove('isFinishedRandom');
    _currentQuestionIndexRandom = 0;
    _isFinishedRandom = false;
  }

  Future<void> resetProgressEasy() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('currentQuestionIndexEasy');
    await prefs.remove('isFinishedEasy');
    _currentQuestionIndexEasy = 0;
    _isFinishedEasy = false;
  }

  Future<void> resetProgressMedium() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('currentQuestionIndexMedium');
    await prefs.remove('isFinishedMedium');
    _currentQuestionIndexMedium = 0;
    _isFinishedMedium = false;
  }

  Future<void> resetProgressDifficult() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('currentQuestionIndexDifficult');
    await prefs.remove('isFinishedDifficult');
    _currentQuestionIndexDifficult = 0;
    _isFinishedDifficult = false;
  }
}
