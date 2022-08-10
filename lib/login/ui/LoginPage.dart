import 'package:auth_wall/login/ui/LoginCubit.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class LoginPage extends StatelessWidget {

  /// Full path of the page which is to be launched after authentication sucdeeds.
  final String destinationPath;

  const LoginPage({Key? key, required this.destinationPath}) : super(key: key);

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (_) => LoginCubit(),
        child: PlatformScaffold(
          body: BlocConsumer<LoginCubit, LoginPageState>(
            listener: (context, loginPageState) {
              if (loginPageState == LoginPageState.loggedIn) {
                AutoRouter.of(context).popUntilRoot();
                AutoRouter.of(context).navigateNamed(destinationPath);
              }
            },
            builder: (context, loginPageState) {
              if (loginPageState == LoginPageState.loggedOut) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      PlatformTextField(
                        hintText: "Username",
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.next,
                        onChanged: context.read<LoginCubit>().onUsernameEntered,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      PlatformTextField(
                        hintText: "Password",
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        onChanged: context.read<LoginCubit>().onPasswordEntered,
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      PlatformElevatedButton(
                        child: const Text("Login"),
                        onPressed: () => context.read<LoginCubit>().onLoginClicked()
                      )
                    ],
                  ),
                );
              } else {
                return PlatformCircularProgressIndicator();
              }
            },
          ),
        ),
      );
}
