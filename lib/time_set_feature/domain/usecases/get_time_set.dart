import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:in_time/core/usecase/usecase.dart';
import 'package:in_time/time_set_feature/domain/repositories/time_set_repository.dart';

import '../../../core/error/failure.dart';
import '../entities/time_set_entity.dart';

class GetTimeSet extends UseCase<TimeSetEntity, IdTimeSetParam> {
  final TimeSetRepository timeSetRepository;
  GetTimeSet(this.timeSetRepository);

  @override
  Future<Either<Failure, TimeSetEntity>> call(IdTimeSetParam parameters) async {
    return timeSetRepository.getTimeSet(parameters.id);
  }
}


class IdTimeSetParam extends Equatable {
  final String id;
  const IdTimeSetParam({required this.id});

  @override
  List<Object?> get props => [id];
}
