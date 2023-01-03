import 'package:in_time/time_set_feature/domain/entities/time_set_entity.dart';
import '../entities/item_of_set_entity.dart';
import '../repositories/time_set_repository.dart';

class AddUpdateItemInSetUseCase {
  final TimeSetRepository _timeSetRepository;

  AddUpdateItemInSetUseCase(this._timeSetRepository);

  call(int index, TimeSetEntity timeSet, ItemOfSetEntity itemOfSet) {

    _timeSetRepository.addUpdateItemInSet(index, timeSet, itemOfSet);
  }
}
