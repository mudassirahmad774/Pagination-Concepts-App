import 'package:flutter/material.dart';
import 'package:pagination_app/pagination_screen.dart';
import 'package:pagination_app/testing_pagination.dart';
import 'package:pagination_app/theme/theme_home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: TestingPagination(),
    );
  }
}
