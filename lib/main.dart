import 'package:auth_wall/AuthWallAppTheme.dart';
import 'package:auth_wall/di/locator.dart';
import 'package:auth_wall/navigation/Navigation.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

void main() {
  setUpServiceLocator();

  runApp(AuthWallApp());
}

class AuthWallApp extends StatelessWidget {
  final AppRouter _appRouter = AppRouter();

  AuthWallApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => PlatformApp.router(
        title: "Authwall example app",
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
        material: (_, __) => MaterialAppRouterData(
            theme: AuthWallAppTheme().getMaterialThemeData()
        ),
        cupertino: (_, __) => CupertinoAppRouterData(
            theme: AuthWallAppTheme().getCupertinoThemeData()
        ),
      );
}
