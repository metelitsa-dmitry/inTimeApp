// import 'package:dartz/dartz.dart';
// import 'package:in_time/core/error/exceptions.dart';
// import 'package:in_time/core/error/failure.dart';
// import 'package:in_time/core/usecase/usecase.dart';
// import 'package:in_time/time_set_feature/domain/entities/time_set_entity.dart';
// import 'package:in_time/time_set_feature/domain/repositories/time_set_repository.dart';
//
// class GetTimeSetUseCase extends UseCase<TimeSetEntity, String>{
//   final TimeSetRepository _timeSetRepository;
//   GetTimeSetUseCase(this._timeSetRepository);
//
//   @override
//   Future<Either<Error, TimeSetEntity>> call(String parameters) async{
//     try {
//       final timeSetDto = await _timeSetRepository.getTimeSet(parameters);
//       final timeSet = timeSetDto.toDomain();
//
//       return right(timeSet);
//     } catch (e) {
//       if (e is NoRecordsException) {
//         return left(TimeSetError(errorMessage: 'No matched note found.'));
//       }
//       return left(
//         TimeSetError(errorMessage: 'Failed to load note, please try again.'),
//       );
//     }
//   }
//
// }