import 'package:auth_wall/di/locator.dart';
import 'package:auth_wall/login/domain/usecase/IsUserLoggedInUseCase.dart';
import 'package:auth_wall/navigation/Navigation.gr.dart';
import 'package:auto_route/auto_route.dart';

class AuthGuard extends AutoRouteGuard {

  final IsUserLoggedInUseCase isUserLoggedInUseCase = serviceLocator.get();

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    bool isUserLoggedIn = await isUserLoggedInUseCase.invoke();

    if (isUserLoggedIn) {
      resolver.next(true);
    } else {
      router.replaceAll(
          [LoginRoute(destinationPath: resolver.route.toPageRouteInfo().fullPath)]
      );

      resolver.next(false);
    }
  }

}