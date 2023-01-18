

import 'package:in_time/time_set_feature/data/models/time_set_dto.dart';
import 'package:in_time/time_set_feature/domain/repositories/time_set_repository.dart';
import '../../data/data_sources/local_value_data_source.dart';
import '../entities/time_set_entity.dart';

class GetTimeSetUseCase{
  final TimeSetRepository<TimeSetDto> _timeSetRepository;
  final LocalValueDataSource<String> _localValueDataSource;

  GetTimeSetUseCase(this._timeSetRepository, this._localValueDataSource);

  Future<TimeSetEntity> call(String id) async {
      final timeSetDto = await _timeSetRepository.getTimeSet(id);
      final timeSet = timeSetDto.toDomain();
      _localValueDataSource.saveValue(id, id);
      return timeSet;
  }
  }


// class IdTimeSetParam extends Equatable {
//   final String id;
//   const IdTimeSetParam({required this.id});
//
//   @override
//   List<Object?> get props => [id];
// }

