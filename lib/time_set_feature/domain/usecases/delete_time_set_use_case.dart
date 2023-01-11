import '../../data/models/time_set_dto.dart';
import '../repositories/time_set_repository.dart';

class DeleteTimeSetUseCase{
  final TimeSetRepository<TimeSetDto> _timeSetRepository;

  DeleteTimeSetUseCase(this._timeSetRepository);

  void call(String id){
    _timeSetRepository.deleteTimeSet(id);
  }
}