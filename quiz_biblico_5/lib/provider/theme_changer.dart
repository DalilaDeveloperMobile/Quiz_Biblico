import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum AppTheme { system, light, dark, sepia, highContrast, orangeLight }

class ThemeChanger extends ChangeNotifier {
  late ThemeData _themeData;
  late AppTheme _themeType;

  ThemeChanger() {
    _themeType = AppTheme.system;
    _themeData = ThemeData.light();
    loadThemeFromPrefs();
  }

  ThemeData get themeData => _themeData;
  AppTheme get themeType => _themeType;

  Future<void> setTheme(AppTheme theme) async {
    _themeType = theme;
    _themeData = _mapTheme(theme);
    notifyListeners();
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('theme', theme.name);
  }

  Future<void> loadThemeFromPrefs() async {
    final prefs = await SharedPreferences.getInstance();
    final name = prefs.getString('theme') ?? AppTheme.system.name;
    final savedTheme = AppTheme.values.firstWhere((e) => e.name == name);
    _themeType = savedTheme;
    _themeData = _mapTheme(savedTheme);
    notifyListeners();
  }

  ThemeData _mapTheme(AppTheme theme) {
    switch (theme) {
      case AppTheme.light:
        return _buildLightTheme();
      case AppTheme.dark:
        return _buildDarkTheme();
      case AppTheme.sepia:
        return _buildSepiaTheme();
      case AppTheme.highContrast:
        return _buildHighContrastTheme();
      case AppTheme.orangeLight:
        return _buildOrangeLightTheme();
      case AppTheme.system:
        final brightness =
            WidgetsBinding.instance.platformDispatcher.platformBrightness;
        return brightness == Brightness.dark
            ? _buildDarkTheme()
            : _buildLightTheme();
    }
  }

  static ThemeData _buildLightTheme() {
    return ThemeData(
      useMaterial3: false,
      brightness: Brightness.light,
      primaryColor: Colors.amber.shade100,
      secondaryHeaderColor: Color(0xFF966F58),
      iconTheme: const IconThemeData(color: Colors.black),
    
      appBarTheme: const AppBarTheme(
        titleTextStyle: TextStyle(
          fontSize: 30,
          color: Colors.black,
          fontFamily: 'Trocchi',
        ),
      ),
      textTheme: const TextTheme(
        headlineMedium: TextStyle(
          fontSize: 23,
          color: Colors.black,
          fontFamily: 'Trocchi',
        ),
        bodyMedium: TextStyle(
          color: Colors.black,
          fontFamily: 'Trocchi',
          fontWeight: FontWeight.w500,
          fontSize: 18,
        ),
        titleMedium: TextStyle(
          color: Colors.black,
          fontFamily: 'Trocchi',
          fontSize: 18.0,
        ),
        titleSmall: TextStyle(
          color: Colors.black,
          fontFamily: 'Trocchi',
          fontSize: 15.0,
        ),
      ),
      // Defina outras propriedades de tema escuro aqui
    );
  }

  static ThemeData _buildDarkTheme() {
    return ThemeData(
      useMaterial3: false,
      brightness: Brightness.dark,
      primaryColor: Colors.white24,
      secondaryHeaderColor: Colors.black45,
      iconTheme: const IconThemeData(color: Colors.white),
      appBarTheme: const AppBarTheme(
        titleTextStyle: TextStyle(
          fontSize: 30,
          color: Colors.white,
          fontFamily: 'Trocchi',
        ),
      ),
      textTheme: const TextTheme(
        headlineMedium: TextStyle(
          fontSize: 23,
          color: Colors.white,
          fontFamily: 'Trocchi',
        ),
        bodyMedium: TextStyle(
          color: Colors.white,
          fontFamily: 'Trocchi',
          fontWeight: FontWeight.w500,
          fontSize: 18,
        ),
        titleMedium: TextStyle(
          color: Colors.white,
          fontFamily: 'Trocchi',
          fontSize: 18.0,
        ),
        titleSmall: TextStyle(
          color: Colors.black,
          fontFamily: 'Trocchi',
          fontSize: 15.0,
        ),
      ),
      // Defina outras propriedades de tema escuro aqui
    );
  }

  static ThemeData _buildSepiaTheme() {
    return ThemeData(
      useMaterial3: false,
      brightness: Brightness.light,
      primaryColor: Colors.grey.shade300,
      secondaryHeaderColor: Colors.green.shade400,
      iconTheme: const IconThemeData(color: Colors.white),
      appBarTheme: const AppBarTheme(
        titleTextStyle: TextStyle(
          fontSize: 30,
          color: Colors.black,
          fontFamily: 'Trocchi',
        ),
      ),
      textTheme: const TextTheme(
        headlineMedium: TextStyle(
          fontSize: 23,
          color: Colors.black,
          fontFamily: 'Trocchi',
        ),
        bodyMedium: TextStyle(
          color: Colors.black,
          fontFamily: 'Trocchi',
          fontWeight: FontWeight.w500,
          fontSize: 18,
        ),
        titleMedium: TextStyle(
          color: Colors.black,
          fontFamily: 'Trocchi',
          fontSize: 18.0,
        ),
        titleSmall: TextStyle(
          color: Colors.black,
          fontFamily: 'Trocchi',
          fontSize: 15.0,
        ),
      ),
      // Defina outras propriedades de tema escuro aqui
    );
  }

  static ThemeData _buildHighContrastTheme() {
    return ThemeData(
      useMaterial3: false,
      brightness: Brightness.dark,
      primaryColor: Colors.black,
      secondaryHeaderColor: Colors.grey,
      iconTheme: const IconThemeData(color: Colors.white),
      appBarTheme: const AppBarTheme(
        titleTextStyle: TextStyle(
          fontSize: 30,
          color: Colors.white,
          fontFamily: 'Trocchi',
        ),
      ),
      textTheme: const TextTheme(
        headlineMedium: TextStyle(
          fontSize: 23,
          color: Colors.white,
          fontFamily: 'Trocchi',
        ),
        bodyMedium: TextStyle(
          color: Colors.white,
          fontFamily: 'Trocchi',
          fontWeight: FontWeight.w500,
          fontSize: 18,
        ),
        titleMedium: TextStyle(
          color: Colors.white,
          fontFamily: 'Trocchi',
          fontSize: 18.0,
        ),
        titleSmall: TextStyle(
          color: Colors.white,
          fontFamily: 'Trocchi',
          fontSize: 15.0,
        ),
      ),
      // Defina outras propriedades de tema escuro aqui
    );
  }

  static ThemeData _buildOrangeLightTheme() {
    return ThemeData(
      useMaterial3: false,
      brightness: Brightness.dark,
      primaryColor: Colors.deepOrange.shade400,
      secondaryHeaderColor: const Color(0xFFFFF3E0),
      iconTheme: const IconThemeData(color: Colors.white),
      appBarTheme: const AppBarTheme(
        titleTextStyle: TextStyle(
          fontSize: 30,
          color: Colors.white,
          fontFamily: 'Trocchi',
        ),
      ),
      textTheme: const TextTheme(
        headlineMedium: TextStyle(
          fontSize: 23,
          color: Colors.white,
          fontFamily: 'Trocchi',
        ),
        bodyMedium: TextStyle(
          color: Colors.white,
          fontFamily: 'Trocchi',
          fontWeight: FontWeight.w500,
          fontSize: 18,
        ),
        titleMedium: TextStyle(
          color: Colors.white,
          fontFamily: 'Trocchi',
          fontSize: 18.0,
        ),
        titleSmall: TextStyle(
          color: Colors.white,
          fontFamily: 'Trocchi',
          fontSize: 15.0,
        ),
      ),
      // Defina outras propriedades de tema escuro aqui
    );
  }
}
