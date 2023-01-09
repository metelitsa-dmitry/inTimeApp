import 'package:in_time/core/error/failure.dart';
import 'package:in_time/time_set_feature/domain/entities/time_set_entity.dart';
import '../entities/item_of_set_entity.dart';
import '../repositories/time_set_repository.dart';
import 'package:dartz/dartz.dart';

class AddUpdateItemInSetUseCase {
  final TimeSetRepository _timeSetRepository;

  AddUpdateItemInSetUseCase(this._timeSetRepository);

  Future<Either<TimeSetError, ItemOfSetEntity>> call(
      {required int indexOfItem,
      required TimeSetEntity timeSet,
      required ItemOfSetEntity itemOfSet}) async {
    try {
      _timeSetRepository.addUpdateItemInSet(indexOfItem, timeSet, itemOfSet);
      return right(itemOfSet);
    } catch (err) {
      return left(TimeSetError(errorMessage: "$err"));
    }
  }
}
