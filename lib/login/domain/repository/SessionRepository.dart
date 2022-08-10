abstract class SessionRepository {

  Future<SessionStatus> getSessionStatus();

  Future<void> setSessionStatus(SessionStatus sessionStatus);
}


enum SessionStatus {
  loggedIn,
  loggedOut
}