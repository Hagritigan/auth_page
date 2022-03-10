import 'package:flutter/material.dart';

ThemeData globalTheme() => ThemeData(
    fontFamily: 'Georgia',
    splashColor: Colors.green,

    colorScheme: ColorScheme.fromSwatch(
      brightness: Brightness.dark,
      primarySwatch: Colors.cyan,
    ).copyWith(
      secondary: Colors.amberAccent,
    ),
    textTheme: const TextTheme(
      headline1: TextStyle(fontSize: 60.0, fontWeight: FontWeight.bold),
      headline6: TextStyle(fontSize: 24.0, fontStyle: FontStyle.italic),
      bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
    )
);