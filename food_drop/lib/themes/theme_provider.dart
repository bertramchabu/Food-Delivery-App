
import 'package:flutter/material.dart';
import 'package:food_drop/themes/dark_mode.dart';
import 'package:food_drop/themes/light_mode.dart';

class ThemeProvider with ChangeNotifier{
  
  ThemeData _themeData = lightMode;

  ThemeData get themeData => _themeData;

  bool get isDarkMode => _themeData == darkMode;

  
}