import 'package:flutter/material.dart';

const appTextTheme = TextTheme(
  displayLarge: TextStyle(
    fontSize: 96.0,
    fontWeight: FontWeight.bold,
  ),
  displayMedium: TextStyle(
    fontSize: 60.0,
    fontWeight: FontWeight.bold,
  ),
  displaySmall: TextStyle(
    fontSize: 48.0,
    fontWeight: FontWeight.bold,
  ),
  headlineMedium: TextStyle(
    fontSize: 34.0,
    fontWeight: FontWeight.bold,
  ),
  headlineSmall: TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.bold,
  ),
  titleLarge: TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
  ),
  titleMedium: TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.normal,
  ),
  titleSmall: TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.normal,
  ),
  bodyLarge: TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.normal,
  ),
  bodyMedium: TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.normal,
  ),
  labelLarge: TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.bold,
  ),
  bodySmall: TextStyle(
    fontSize: 12.0,
    fontWeight: FontWeight.normal,
  ),
  labelSmall: TextStyle(
    fontSize: 10.0,
    fontWeight: FontWeight.normal,
  ),
);

const dividerTheme = DividerThemeData(
  thickness: 0.5,
  color: Colors.white,
);

final inputDecorationTheme = InputDecorationTheme(
  errorStyle: const TextStyle(
    color: Colors.redAccent,
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10.0),
    borderSide: BorderSide.none,
  ),
  prefixIconColor: Colors.blue,
  suffixIconColor: Colors.blue,
  floatingLabelBehavior: FloatingLabelBehavior.always,
);

final appLightTheme = ThemeData(
  primaryColor: Colors.blue,
  inputDecorationTheme: inputDecorationTheme,
  appBarTheme: const AppBarTheme(
    color: Colors.blue,
    iconTheme: IconThemeData(color: Colors.white),
  ),
  drawerTheme: commonDrawerTheme,
  colorScheme: ColorScheme.light(
    primary: Colors.blue,
    secondary: Colors.amber,
    surface: Colors.grey[200]!,
    error: Colors.red,
  ),
  cardColor: Colors.white,
  textTheme: appTextTheme,
  dividerTheme: dividerTheme,
  iconTheme: const IconThemeData(color: Colors.white),
);

const darkestBlue = Color(0xFF0B132B), darkerBlue = Color(0xff1C2541), darkBlue = Color(0xff3A506B), lightBlue = Color(0xff5BC0BE), lightestBlue = Color(0xff6FFFE9);

const commonDrawerTheme = DrawerThemeData(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.zero,
  ),
);

final appDarkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: darkestBlue,
  inputDecorationTheme: inputDecorationTheme,
  appBarTheme: const AppBarTheme(
    color: darkestBlue,
  ),
  drawerTheme: commonDrawerTheme,
  colorScheme: ColorScheme.dark(
    primary: darkestBlue,
    onPrimary: Colors.white,
    secondary: lightBlue,
    surface: darkBlue,
    error: Colors.red[700]!,
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: lightBlue,
    ),
  ),
  iconTheme: const IconThemeData(color: Colors.white),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    foregroundColor: Colors.white,
  ),
  textTheme: appTextTheme.apply(
    bodyColor: Colors.white70,
    displayColor: Colors.white,
  ),
  dividerTheme: dividerTheme,
);
