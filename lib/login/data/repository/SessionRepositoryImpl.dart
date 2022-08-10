import 'package:auth_wall/login/domain/repository/SessionRepository.dart';

class SessionRepositoryImpl extends SessionRepository {
  SessionStatus sessionStatus = SessionStatus.loggedOut;

  @override
  Future<SessionStatus> getSessionStatus() async => sessionStatus;

  @override
  Future<void> setSessionStatus(SessionStatus sessionStatus) async =>
      this.sessionStatus = sessionStatus;
}
