import 'package:flutter/material.dart';

const MaterialColor customprimarycolor =
    MaterialColor(_customprimarycolorPrimaryValue, <int, Color>{
  50: Color(0xFFE8F9F6),
  100: Color(0xFFC6F1E8),
  200: Color(0xFFA1E8D9),
  300: Color(0xFF7BDFC9),
  400: Color(0xFF5ED8BE),
  500: Color(_customprimarycolorPrimaryValue),
  600: Color(0xFF3CCCAB),
  700: Color(0xFF33C6A2),
  800: Color(0xFF2BC099),
  900: Color(0xFF1DB58A),
});
const int _customprimarycolorPrimaryValue = 0xFF42D1B2;
const MaterialColor customprimarycolorAccent =
    MaterialColor(_customprimarycolorAccentValue, <int, Color>{
  100: Color(0xFFECFFF9),
  200: Color(_customprimarycolorAccentValue),
  400: Color(0xFF86FFDA),
  700: Color(0xFF6DFFD2),
});
const int _customprimarycolorAccentValue = 0xFFB9FFEA;
