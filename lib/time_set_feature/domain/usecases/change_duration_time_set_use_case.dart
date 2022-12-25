import '../../data/models/time_set_dto.dart';
import '../entities/time_set_entity.dart';
import '../repositories/time_set_repository.dart';

class ChangeDurationTimeUseCase {
  final TimeSetRepository _timeSetRepository;

  ChangeDurationTimeUseCase(this._timeSetRepository);

  Future<TimeSetEntity> call(
      DateTime newDuration, TimeSetEntity timeSet) async {
    final updatedTimeSetDto = timeSet.copyWith(
        durationHourTimeSet: newDuration.hour,
        durationMinutesTimeSet: newDuration.minute);
    final timeSetDto = TimeSetDto.fromDomain(updatedTimeSetDto);
    _timeSetRepository.saveTimeSetAs(timeSetDto.title, timeSetDto);
    final updatedTimeSet =
        (await _timeSetRepository.getTimeSet(timeSet.title)).toDomain();
    return updatedTimeSet;
  }
}
