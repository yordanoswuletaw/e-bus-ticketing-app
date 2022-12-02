import 'package:e_bus_ticketing/config/config.dart';
import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData.light().copyWith(
  visualDensity: VisualDensity.adaptivePlatformDensity,
  scaffoldBackgroundColor: white200,
  // appBarTheme: AppBarTheme(),
  textTheme: const TextTheme(
    subtitle1: TextStyle(
      color: black200,
    ),
    bodyText2: TextStyle(
      color: black200,
    ),
    bodyText1: TextStyle(
      color: black200,
    ),
  ),
  colorScheme: const ColorScheme.light().copyWith(
    primary: green500,
    primaryVariant: white100,
    secondary: black200,
    secondaryVariant: black100,
  ),
);

ThemeData darkTheme = ThemeData.dark().copyWith(
  visualDensity: VisualDensity.adaptivePlatformDensity,
  scaffoldBackgroundColor: black100,
  // appBarTheme: AppBarTheme(),
  textTheme: const TextTheme(
    subtitle1: TextStyle(
      color: white200,
    ),
    bodyText2: TextStyle(
      color: white200,
    ),
  ),
  colorScheme: const ColorScheme.dark().copyWith(
    primary: green500,
    primaryVariant: black200,
    secondary: white200,
    secondaryVariant: white100,
  ),
);
