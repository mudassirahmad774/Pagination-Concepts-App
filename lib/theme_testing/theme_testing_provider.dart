  import 'package:flutter/foundation.dart';
  import 'package:flutter/material.dart';
  import 'package:pagination_app/theme_testing/theme.dart';

  class ThemeTestingProvider extends ChangeNotifier {
    ThemeData _themeData = lightModeTheme;

    ThemeData get themeData => _themeData;

    set setTheme(ThemeData themeData) {
      _themeData = themeData;
      notifyListeners();
    }

    // Theme toggle function

    void toggleTheme() {
      print('called function ------->');
      if (_themeData == lightModeTheme) {
        _themeData = darkModeTheme;
        print('_themeData set to dark ---------> $_themeData');
      } else {
        _themeData = lightModeTheme;
        print('_themeData set to light ---------> $_themeData');
      }
      notifyListeners(); // ✅ very important to notify UI to rebuild
    }

  }
