import 'package:auth_wall/navigation/Navigation.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

import '../AuthWallAppBottomNavBar.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => AutoTabsRouter(
      routes: const [
        HomeRoute(),
        MessagingRouter(),
        ProfileRoute()
      ],
      builder: (context, child, animation) {
        final tabsRouter = AutoTabsRouter.of(context);

        return PlatformScaffold(
            body: FadeTransition(
              opacity: animation,
              child: child,
            ),
            bottomNavBar: AuthWallAppBottomBar(
                context: context,
                selectedItemPosition: tabsRouter.activeIndex,
                onItemSelected: (position) => {
                  tabsRouter.setActiveIndex(position)
                })
        );
      },
  );

}