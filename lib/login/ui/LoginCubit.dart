import 'package:auth_wall/di/locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../domain/usecase/LogInUserUsecase.dart';

class LoginCubit extends Cubit<LoginPageState> {

  final LoginUserUsecase _loginUserUsecase = serviceLocator.get<LoginUserUsecase>();

  String _username = "";
  String _password = "";

  LoginCubit(): super(LoginPageState.loggedOut);

  void onUsernameEntered(String username) {
    _username = username;
  }

  void onPasswordEntered(String password) {
    _password = password;
  }

  void onLoginClicked() async {
    bool isLoginSuccessful = await _loginUserUsecase.login(_username, _password);

    if(isLoginSuccessful) {
      emit(LoginPageState.loggedIn);
    } else {
      emit(LoginPageState.loggedOut);
    }
  }

}


enum LoginPageState {
  loggedIn,
  loggedOut
}