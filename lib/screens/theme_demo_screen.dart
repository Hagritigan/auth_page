

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThemeDemoApp extends StatefulWidget {
  const ThemeDemoApp({Key? key}) : super(key: key);

  @override
  State<ThemeDemoApp> createState() => _ThemeDemoAppState();
}

class _ThemeDemoAppState extends State<ThemeDemoApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ThemeDemoScreen(),
    );
  }
}

class ThemeDemoScreen extends StatefulWidget {
  const ThemeDemoScreen({Key? key}) : super(key: key);

  @override
  State<ThemeDemoScreen> createState() => _ThemeDemoScreenState();
}

class _ThemeDemoScreenState extends State<ThemeDemoScreen> {
  double _currentSliderValue = 20;
  bool _isDarkTheme = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}


