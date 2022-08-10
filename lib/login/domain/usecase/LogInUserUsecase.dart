import 'package:auth_wall/login/domain/repository/SessionRepository.dart';

class LoginUserUsecase {

  final SessionRepository _sessionRepository;

  const LoginUserUsecase(this._sessionRepository);

  Future<bool> login(String username, String password) async {
    if (username == _VALID_USERNAME && password == _VALID_PASSWORD) {
      _sessionRepository.setSessionStatus(SessionStatus.loggedIn);
      return true;
    }

    return false;
  }
}


const _VALID_USERNAME = "demo";
const _VALID_PASSWORD = "demo";