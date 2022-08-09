import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AuthWallAppTheme {
  static AuthWallAppTheme _instance = AuthWallAppTheme._internalConstructor();

  AuthWallAppTheme._internalConstructor() {
    _instance = this;
  }

  // Return the same instance of theme instead of creating a new instance
  factory AuthWallAppTheme() {
    return _instance;
  }

  final ColorScheme colorScheme =
      ColorScheme.fromSwatch(primarySwatch: Colors.orange);

  ThemeData getMaterialThemeData() => ThemeData(
        colorScheme: colorScheme,
      );

  CupertinoThemeData getCupertinoThemeData() =>
      MaterialBasedCupertinoThemeData(materialTheme: getMaterialThemeData())
          .copyWith(barBackgroundColor: Colors.orange);
}
