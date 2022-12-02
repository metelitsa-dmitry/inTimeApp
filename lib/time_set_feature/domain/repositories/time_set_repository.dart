import 'package:dartz/dartz.dart';
import 'package:in_time/time_set_feature/domain/entities/time_set_entity.dart';
import '../../../core/error/failure.dart';

abstract class TimeSetRepository{

  Future<Either<Failure,TimeSetEntity>> getTimeSet(String id);

  void putTimeSet(String id);

  Future<Either<Failure,List<TimeSetEntity>>> getListTimeSets();


}