import 'package:in_time/core/error/failure.dart';
import 'package:in_time/time_set_feature/domain/entities/time_set_entity.dart';
import '../../data/models/time_set_dto.dart';
import '../entities/item_of_set_entity.dart';
import '../repositories/time_set_repository.dart';
import 'package:dartz/dartz.dart';

class AddUpdateItemInSetUseCase {
  final TimeSetRepository _timeSetRepository;

  AddUpdateItemInSetUseCase(this._timeSetRepository);

  Future<Either<TimeSetError, ItemOfSetEntity>> call(
      {required int indexOfItem,
      required TimeSetEntity timeSetEntity,
      required ItemOfSetEntity itemOfSetEntity}) async {
    try {
      final listItemsOfSet = timeSetEntity.itemsOfSet?.toList() ?? [];
      listItemsOfSet.insert(indexOfItem, itemOfSetEntity);
      listItemsOfSet.removeAt(indexOfItem + 1);
      var savedTimeSetDto =
      TimeSetDto.fromDomain(timeSetEntity.copyWith(itemsOfSet: listItemsOfSet));
      _timeSetRepository.saveTimeSetAs(savedTimeSetDto.title, savedTimeSetDto);
      return right(itemOfSetEntity);
    } catch (err) {
      return left(TimeSetError(errorMessage: "$err"));
    }
  }
}
