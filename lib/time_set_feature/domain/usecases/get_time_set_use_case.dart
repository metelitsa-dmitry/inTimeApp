

import 'package:in_time/time_set_feature/domain/repositories/time_set_repository.dart';
import '../entities/time_set_entity.dart';
import '../repositories/session_repository.dart';

class GetTimeSetUseCase{
  final TimeSetRepository _timeSetRepository;
  final SessionRepository _sessionRepository;

  GetTimeSetUseCase(this._timeSetRepository, this._sessionRepository);

  Future<TimeSetEntity> call(String id) async {
      final timeSetDto = await _timeSetRepository.getTimeSet(id);
      final timeSet = timeSetDto.toDomain();
      _sessionRepository.saveSession(id);
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

