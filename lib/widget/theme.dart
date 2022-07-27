import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:hexcolor/hexcolor.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.system;

  bool get isDarkMode {
    if (themeMode == ThemeMode.system) {
      final brightness = SchedulerBinding.instance.window.platformBrightness;
      return brightness == Brightness.dark;
    } else {
      return themeMode == ThemeMode.dark;
    }
  }

  void toggleTheme(bool isOn) {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

class MyTheme {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: HexColor('#46244C'),
    primaryColor: HexColor('#FF7777'),
    
    bottomAppBarColor: HexColor('#852747'),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: HexColor('#F5C6A5'),
      unselectedItemColor: HexColor('#46244C'),
      backgroundColor: Colors.blue,
    ),
    appBarTheme: AppBarTheme(
      color: Color.fromRGBO(135, 39, 71, 0),
    ),
    primaryColorDark: HexColor('#900C3F'),
    iconTheme: IconThemeData(color: HexColor('#900C3F'), opacity: 1),
  );

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: HexColor('#E7E6E1'),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: HexColor('#F2A154'),
      unselectedItemColor: HexColor('#314E52'),
    ),
    bottomAppBarColor: HexColor('#F5C6A5'),
    appBarTheme: AppBarTheme(
      color: HexColor('#F2A154'),
    ),
    primaryColorLight: HexColor('#F2A154'),
    iconTheme: IconThemeData(color: HexColor('#F2A154'), opacity: 0.8),
  );
}
