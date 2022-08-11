import 'package:auth_wall/login/domain/repository/SessionRepository.dart';

class IsUserLoggedInUseCase {

  const IsUserLoggedInUseCase(this.sessionRepository);

  final SessionRepository sessionRepository;

  Future<bool> invoke() async {
    SessionStatus sessionStatus = await sessionRepository.getSessionStatus();
    return sessionStatus == SessionStatus.loggedIn;
  }
}