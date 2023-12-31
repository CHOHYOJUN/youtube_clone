import 'package:flutter/material.dart';

import 'layout/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '유투브',
      darkTheme: ThemeData(
          brightness: Brightness.dark,
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.resolveWith((states) => Colors.indigo),
          ))),
      themeMode: ThemeMode.dark,
      home: const MainScreen(),
    );
  }
}
