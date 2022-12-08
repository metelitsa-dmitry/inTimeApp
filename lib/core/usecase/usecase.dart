import 'package:dartz/dartz.dart';
import 'package:in_time/core/error/failure.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Error, Type>> call(Params parameters);
}
