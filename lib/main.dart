import 'package:flutter/material.dart';

import 'theme/color_schemes.g.dart';
import 'theme/light_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
      theme: lightTheme,
      darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
    );
  }
}
