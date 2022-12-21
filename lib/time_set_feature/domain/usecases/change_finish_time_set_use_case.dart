import 'package:in_time/time_set_feature/domain/repositories/time_set_repository.dart';

import '../../data/models/time_set_dto.dart';
import '../entities/time_set_entity.dart';

class ChangeFinishTimeSetUseCase{
  final TimeSetRepository _timeSetRepository;

  ChangeFinishTimeSetUseCase(this._timeSetRepository);

  Future<TimeSetEntity> call(DateTime newFinishTime, TimeSetEntity timeSet) async{
    final updatedTimeSetDto = timeSet.copyWith(finishTimeSet: newFinishTime);
    final timeSetDto = TimeSetDto.fromDomain(updatedTimeSetDto);
    _timeSetRepository.saveTimeSetAs(timeSetDto.title, timeSetDto);
    final updatedTimeSet = (await _timeSetRepository.getTimeSet(timeSet.title)).toDomain();
    return updatedTimeSet ;
  }
}