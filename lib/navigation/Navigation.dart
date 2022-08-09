import 'package:auth_wall/dashboard/DashboardPage.dart';
import 'package:auth_wall/home/HomePage.dart';
import 'package:auth_wall/login/LoginPage.dart';
import 'package:auth_wall/messaging/MessagingPage.dart';
import 'package:auto_route/annotations.dart';

import '../profile/ProfilePage.dart';

@AdaptiveAutoRouter(
    replaceInRouteName: 'Page,Route',
    routes: <AutoRoute>[
      AutoRoute(
        initial: true,
        page: DashboardPage,
        children: <AutoRoute>[
          AutoRoute(
              initial: true,
              page: HomePage
          ),
          AutoRoute(
              page: MessagingPage
          ),
          AutoRoute(
              page: ProfilePage
          )
        ]
      ),
      AutoRoute(
        page: LoginPage
      )
    ]
)
class $AppRouter {}
