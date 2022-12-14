import 'package:auth_wall/dashboard/DashboardPage.dart';
import 'package:auth_wall/guards/AuthGuard.dart';
import 'package:auth_wall/home/HomePage.dart';
import 'package:auth_wall/login/ui/LoginPage.dart';
import 'package:auth_wall/messaging/MessagingPage.dart';
import 'package:auto_route/auto_route.dart';

import '../profile/ProfilePage.dart';

@AdaptiveAutoRouter(
    replaceInRouteName: 'Page,Route',
    routes: <AutoRoute>[
      AutoRoute(
        initial: true,
        path: "",
        page: DashboardPage,
        children: <AutoRoute>[
          AutoRoute(
              initial: true,
              path: "home",
              page: HomePage
          ),
          AutoRoute(
              name: "MessagingRouter",
              path: "messages",
              page: EmptyRouterPage,
              guards: [AuthGuard],
              children: [
                AutoRoute(
                  initial: true,
                  page: MessagingPage
                )
              ]
          ),
          AutoRoute(
              path: "profile",
              page: ProfilePage
          )
        ]
      ),
      AutoRoute(
        path: "login",
        page: LoginPage
      )
    ]
)
class $AppRouter {}
