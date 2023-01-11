import 'package:in_time/time_set_feature/data/models/text_chips_data_dto.dart';
import 'package:in_time/time_set_feature/domain/entities/text_chips_data.dart';

import '../../repositories/time_set_repository.dart';

class AddTextChipsUseCase {
  final TimeSetRepository<TextChoiceChipDataDto> _timeSetRepository;
  AddTextChipsUseCase(this._timeSetRepository);

  void call({required String id, required TextChoiceChipData textChip}){
    final  timeSetDto = TextChoiceChipDataDto.fromDomain(textChip);
    _timeSetRepository.saveTimeSetAs(id, timeSetDto);
  }
}