import '../repositories/time_set_repository.dart';

class DeleteTimeSetUseCase{
  final TimeSetRepository _timeSetRepository;

  DeleteTimeSetUseCase(this._timeSetRepository);

  void call(String id){
    _timeSetRepository.deleteTimeSet(id);
  }
}