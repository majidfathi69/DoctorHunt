import 'package:flutter/material.dart';

import 'color_schemes.g.dart';

final lightTheme = ThemeData(
  useMaterial3: true,
  colorScheme: lightColorScheme,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.resolveWith(
        (states) {
          if (states.contains(MaterialState.pressed)) {
            return lightColorScheme.tertiary;
          } else if (states.contains(MaterialState.disabled)) {
            return lightColorScheme.surfaceVariant;
          }
          return lightColorScheme.primary;
        },
      ),
    ),
  ),
);
