import 'package:auth_wall/navigation/Navigation.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import '../util/widgets/MaxSizedBox.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaxSizedBox(
          child: Center(
        child: Column(
          children: [
            PlatformAppBar(
              title: const Text("My Profile"),
            ),
            const Spacer(),
            IntrinsicWidth(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  PlatformElevatedButton(
                    child: const Text("Log in"),
                    onPressed: () => AutoRouter.of(context).push(const LoginRoute()),
                  ),
                  PlatformElevatedButton(
                    child: const Text("Register"),
                    onPressed: () => showFeatureNotImplementedDialog(context),
                  )
                ],
              ),
            ),
            const Spacer(),
          ],
        ),
      ));

  void showFeatureNotImplementedDialog(BuildContext context) =>
    showPlatformDialog(
        context: context,
        builder: (_) =>
            PlatformAlertDialog(
              title: const Text("Not implemented"),
              content: const Text("This feature is not implemented yet"),
              actions: [
                PlatformDialogAction(
                  child: const Text("Alright"),
                  onPressed: () => {
                    AutoRouter.of(context).pop()
                  },
                )
              ],
            )
    );
}