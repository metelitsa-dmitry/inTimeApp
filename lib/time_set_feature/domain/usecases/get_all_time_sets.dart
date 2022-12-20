
import 'package:in_time/time_set_feature/domain/entities/time_set_entity.dart';
import 'package:in_time/time_set_feature/domain/repositories/time_set_repository.dart';

class GetAllTimeSetsUseCase{
  final TimeSetRepository _timeSetRepository;

  GetAllTimeSetsUseCase(this._timeSetRepository);

  List<TimeSetEntity> call() {
    try {
      final allTimeSetsDto = _timeSetRepository.getAllTimeSets();
      return allTimeSetsDto.map((timeSetDto) => timeSetDto.toDomain()).toList();
    } catch (err) {
      rethrow;
    }
  }
}
