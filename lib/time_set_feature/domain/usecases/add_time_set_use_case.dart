import 'package:in_time/time_set_feature/data/models/time_set_dto.dart';
import 'package:in_time/time_set_feature/domain/entities/time_set_entity.dart';
import 'package:in_time/time_set_feature/domain/repositories/time_set_repository.dart';

class AddTimeSetUseCase {
  final TimeSetRepository _timeSetRepository;

  AddTimeSetUseCase(this._timeSetRepository);

  void call(String id, TimeSetEntity timeSet){

   final  timeSetDto = TimeSetDto.fromDomain(timeSet);
    _timeSetRepository.saveTimeSetAs(id, timeSetDto);
  }
}