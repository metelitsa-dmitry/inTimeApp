import 'package:in_time/time_set_feature/data/models/time_set_dto.dart';
import 'package:in_time/time_set_feature/domain/entities/time_set_entity.dart';

import '../repositories/time_set_repository.dart';

class ChangeStartTimeUseCase {
  final TimeSetRepository _timeSetRepository;

  ChangeStartTimeUseCase(this._timeSetRepository);

  Future<TimeSetEntity> call(DateTime newStartTime, TimeSetEntity timeSet) async{
    final updatedTimeSetDto = timeSet.copyWith(startTimeSet: newStartTime);
    final timeSetDto = TimeSetDto.fromDomain(updatedTimeSetDto);
    _timeSetRepository.saveTimeSetAs(timeSetDto.title, timeSetDto);
    final updatedTimeSet = (await _timeSetRepository.getTimeSet(timeSet.title)).toDomain();
    return updatedTimeSet ;
  }
}
