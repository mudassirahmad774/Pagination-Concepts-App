import 'package:flutter/material.dart';

class ThemeHomeScreen extends StatefulWidget {
  const ThemeHomeScreen({super.key});

  @override
  State<ThemeHomeScreen> createState() => _ThemeHomeScreenState();
}

class _ThemeHomeScreenState extends State<ThemeHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.deepPurple,
    );
  }
}
