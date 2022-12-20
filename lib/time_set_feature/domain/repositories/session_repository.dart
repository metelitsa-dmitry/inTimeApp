abstract class SessionRepository{

  Future<String?> getLastSession();
  Future<void> saveSession(String nameSession);
}