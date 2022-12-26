import '../repositories/session_repository.dart';

class GetLastSessionUseCase{
  final SessionRepository _sessionRepository;

  GetLastSessionUseCase(this._sessionRepository);

  Future<String?> call() async{
    final lastSession = await _sessionRepository.getLastSession();
    return  lastSession;
  }
}