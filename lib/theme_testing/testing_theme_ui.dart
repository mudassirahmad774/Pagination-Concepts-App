import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pagination_app/theme_testing/theme_testing_provider.dart';
import 'package:provider/provider.dart';

class TestingThemeUi extends StatefulWidget {
  const TestingThemeUi({super.key});

  @override
  State<TestingThemeUi> createState() => _TestingThemeUiState();
}

class _TestingThemeUiState extends State<TestingThemeUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        title: Text('App Theme'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 500,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                Center(
                  child: Container(
                    height: 300,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: GestureDetector(
                          onTap: () {
                            Provider.of<ThemeTestingProvider>(context,
                                    listen: false)
                                .toggleTheme();
                          },
                          child: Text('Tap!!',
                              style: TextStyle(
                                fontSize: 22,
                                color: Theme.of(context).colorScheme.secondary,
                              ))),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
