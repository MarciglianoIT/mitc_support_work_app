import 'package:flutter/material.dart';

class ColorPalette {
  static const MaterialColor primary = MaterialColor(_primary, <int, Color>{
    50: Color(0xFFE3E8EF),
    100: Color(0xFFB9C6D8),
    200: Color(0xFF8AA0BE),
    300: Color(0xFF5B79A3),
    400: Color(0xFF375D90),
    500: Color(_primary),
    600: Color(0xFF123A74),
    700: Color(0xFF0E3269),
    800: Color(0xFF0B2A5F),
    900: Color(0xFF061C4C),
  });
  static const int _primary = 0xFF14407C;

  static const MaterialColor primaryAccent =
      MaterialColor(_primaryAccent, <int, Color>{
    100: Color(0xFF80A0FF),
    200: Color(_primaryAccent),
    400: Color(0xFF1A54FF),
    700: Color(0xFF0141FF),
  });
  static const int _primaryAccent = 0xFF4D7AFF;

  static const MaterialColor secondary = MaterialColor(_secondary, <int, Color>{
    50: Color(0xFFFFFFFF),
    100: Color(0xFFFFFFFF),
    200: Color(0xFFFFFFFF),
    300: Color(0xFFFFFFFF),
    400: Color(0xFFFFFFFF),
    500: Color(_secondary),
    600: Color(0xFFFFFFFF),
    700: Color(0xFFFFFFFF),
    800: Color(0xFFFFFFFF),
    900: Color(0xFFFFFFFF),
  });
  static const int _secondary = 0xFFFFFFFF;

  static const MaterialColor secondaryAccent =
      MaterialColor(_secondaryAccentValue, <int, Color>{
    100: Color(0xFFFFFFFF),
    200: Color(_secondaryAccentValue),
    400: Color(0xFFFFFFFF),
    700: Color(0xFFFFFFFF),
  });
  static const int _secondaryAccentValue = 0xFFFFFFFF;
}
