import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ThemeNotifier with ChangeNotifier {
  ThemeMode _themeMode;

  ThemeNotifier(this._themeMode);

  getThemeMode() => _themeMode;

  setThemeMode(ThemeMode mode) async {
    _themeMode = mode;
    notifyListeners();
  }
}

class AppTheme {
  get darkTheme => ThemeData(
    // primaryColor: Colors.red,
    // toggleableActiveColor: Colors.red,
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal)
        .copyWith(secondary: Colors.teal,brightness: Brightness.dark),
    scaffoldBackgroundColor: Color(0xFF131313),
    appBarTheme: AppBarTheme(
        color: Colors.transparent, systemOverlayStyle: SystemUiOverlayStyle.light),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: TextStyle(color: Colors.grey),
      labelStyle: TextStyle(color: Colors.white),
    ),
    brightness: Brightness.dark,
    canvasColor: Color(0xFF1F1F1F),
    textTheme: TextTheme(
      headline1: TextStyle(color: Colors.white,fontFamily: "PSM"),
      headline2: TextStyle(color: Colors.white,fontFamily: "PSM"),
      bodyText2: TextStyle(fontFamily: "PSM"),
      subtitle1: TextStyle(fontFamily: "PSM"),
    ),

  );

  get lightTheme => ThemeData(
    primarySwatch: Colors.grey,
    appBarTheme:
    AppBarTheme(color: Colors.grey, systemOverlayStyle: SystemUiOverlayStyle.dark,),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: TextStyle(color: Colors.grey),
      labelStyle: TextStyle(color: Colors.white),
    ),
  );
}