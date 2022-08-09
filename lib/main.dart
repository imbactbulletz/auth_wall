import 'package:auth_wall/AuthWallAppTheme.dart';
import 'package:auth_wall/home/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

import 'login/LoginPage.dart';

void main() {
  runApp(const AuthWallApp());
}

class AuthWallApp extends StatelessWidget {
  const AuthWallApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => PlatformApp(
        title: "Authwall example",
        home: PlatformScaffold(
          body: LoginPage(),
        ),
        material: (_, __) =>
            MaterialAppData(theme: AuthWallAppTheme().getMaterialThemeData()),
        cupertino: (_, __) =>
            CupertinoAppData(theme: AuthWallAppTheme().getCupertinoThemeData()),
      );
}
