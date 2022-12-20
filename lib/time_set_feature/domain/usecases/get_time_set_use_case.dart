
import 'package:equatable/equatable.dart';
import 'package:in_time/time_set_feature/domain/repositories/time_set_repository.dart';
import '../entities/time_set_entity.dart';

class GetTimeSetUseCase{
  final TimeSetRepository _timeSetRepository;
  GetTimeSetUseCase(this._timeSetRepository);

  Future<TimeSetEntity> call(String id) async {
      final timeSetDto = await _timeSetRepository.getTimeSet(id);
      final timeSet = timeSetDto.toDomain();
      return timeSet;
  }
  }


class IdTimeSetParam extends Equatable {
  final String id;
  const IdTimeSetParam({required this.id});

  @override
  List<Object?> get props => [id];
}

