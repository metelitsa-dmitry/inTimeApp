import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:in_time/core/usecase/usecase.dart';
import 'package:in_time/time_set_feature/data/models/time_set_dto.dart';
import 'package:in_time/time_set_feature/domain/repositories/time_set_repository.dart';

import '../../../core/error/exceptions.dart';
import '../../../core/error/failure.dart';
import '../entities/time_set_entity.dart';

class GetTimeSetUseCase extends UseCase<TimeSetEntity, IdTimeSetParam> {
  final TimeSetRepository _timeSetRepository;
  GetTimeSetUseCase(this._timeSetRepository);


  @override
  Future<Either<Error, TimeSetEntity>> call(IdTimeSetParam parameters) async {
    try{
      final timeSetDto = await _timeSetRepository.getTimeSet(parameters.id);
      final timeSet = timeSetDto.toDomain();
      return right(timeSet);
    }
    catch(e){
      if (e is NoRecordsException) {
        return left(TimeSetError(errorMessage: 'No matched record found.'));
      }
      return left(
        TimeSetError(errorMessage: 'Failed to load note, please try again.'),
      );
    }


  }

}


class IdTimeSetParam extends Equatable {
  final String id;
  const IdTimeSetParam({required this.id});

  @override
  List<Object?> get props => [id];
}

