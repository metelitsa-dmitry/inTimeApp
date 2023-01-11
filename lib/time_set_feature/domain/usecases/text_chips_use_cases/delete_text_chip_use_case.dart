import 'package:in_time/time_set_feature/data/models/text_chips_data_dto.dart';

import '../../repositories/time_set_repository.dart';

class DeleteTextChipUseCase{
  final TimeSetRepository<TextChoiceChipDataDto> _timeSetRepository;

  DeleteTextChipUseCase(this._timeSetRepository);

  void call(String id){
    _timeSetRepository.deleteTimeSet(id);
  }
}