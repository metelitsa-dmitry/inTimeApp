import '../repositories/session_repository.dart';

class SaveLastSessionUseCase{
  final SessionRepository _sessionRepository;

  SaveLastSessionUseCase(this._sessionRepository);

  Future<void> call(String nameSession) async{
    await _sessionRepository.saveSession(nameSession);
  }
}