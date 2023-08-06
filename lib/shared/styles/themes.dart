import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'colors.dart';

ThemeData darkTheme = ThemeData(
  cardColor: const Color(0xff000000),
  scaffoldBackgroundColor: const Color(0xff1e1e1e),
  primarySwatch: dColor,
  appBarTheme: const AppBarTheme(
    titleSpacing: 20.0,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Color(0xff1e1e1e),
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.dark,
    ),
    backgroundColor: Color(0xff1e1e1e),
    elevation: 0.0,
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
    ),
    actionsIconTheme: IconThemeData(
      color: Colors.white,
    ),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    selectedItemColor: dColor,
    unselectedItemColor: Colors.white,
    backgroundColor: Color(0xff1e1e1e),
    elevation: 25.0,
    unselectedIconTheme: IconThemeData(
      color: Colors.white,
    ),
  ),
  textTheme: const TextTheme(
    bodyText2: TextStyle(
      color: Colors.white,
    ),
    headline6: TextStyle(
      color: Colors.white,
    ),
    headline1: TextStyle(
      color: Colors.white,
    ),
    headline2: TextStyle(
      color: Colors.white,
    ),
    headline3: TextStyle(
      color: Colors.white,
    ),
    headline4: TextStyle(
      color: Colors.white,
    ),
    headline5: TextStyle(
      color: Colors.white,
    ),
    bodyText1: TextStyle(
      fontSize: 18.0,
      color: Colors.white,
    ),
    subtitle1: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w600,
      color: Colors.white,
      height: 1.3,
    ),
  ),
  iconTheme: const IconThemeData(
    color: Colors.white,
  ),
  inputDecorationTheme: const InputDecorationTheme(
    labelStyle: TextStyle(
      color: Colors.white,
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
    ),
    hintStyle: TextStyle(
      color: Colors.white,
      fontSize: 14.0,
    ),
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Colors.white,
      ),
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Colors.white,
      ),
    ),
  ),
);

ThemeData lightTheme = ThemeData(
  primarySwatch: dColor,
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: const AppBarTheme(
    titleSpacing: 20.0,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
    ),
    backgroundColor: Colors.white,
    elevation: 0.0,
    titleTextStyle: TextStyle(
      color: Colors.black,
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
    ),
    iconTheme: IconThemeData(
      color: Colors.black,
    ),
    actionsIconTheme: IconThemeData(
      color: Colors.black,
    ),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    selectedItemColor: dColor,
    unselectedItemColor: Colors.black,
    backgroundColor: Colors.white,
    elevation: 25.0,
    unselectedIconTheme: IconThemeData(
      color: Colors.black,
    ),
  ),
  textTheme: const TextTheme(
    bodyText1: TextStyle(
      fontSize: 18.0,
      color: Colors.black,
    ),
    subtitle1: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w600,
      color: Colors.black,
      height: 1.3,
    ),
  ),
);