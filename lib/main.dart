import 'package:flutter/material.dart';
import 'package:pagination_app/pagination_screen.dart';
import 'package:pagination_app/testing_pagination.dart';
import 'package:pagination_app/theme/theme.dart';
import 'package:pagination_app/theme/theme_home_screen.dart';
import 'package:pagination_app/theme/theme_provider.dart';
import 'package:pagination_app/theme_testing/testing_theme_ui.dart';
import 'package:pagination_app/theme_testing/theme_testing_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeTestingProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const TestingThemeUi(),
      theme: Provider.of<ThemeTestingProvider>(context).themeData,
    );
  }
}
