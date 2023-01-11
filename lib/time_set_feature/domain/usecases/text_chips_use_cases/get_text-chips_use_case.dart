
import 'package:in_time/time_set_feature/data/models/text_chips_data_dto.dart';
import 'package:in_time/time_set_feature/domain/entities/text_chips_data.dart';

import '../../repositories/time_set_repository.dart';

class GetAllTextChipsUseCase{
  final TimeSetRepository<TextChoiceChipDataDto> _textChipsRepository;

  GetAllTextChipsUseCase(this._textChipsRepository);

  List<TextChoiceChipData> call() {
    try {
      final allTextChipsDto = _textChipsRepository.getAllTimeSets();
      return allTextChipsDto.map((textChipsDto) => textChipsDto.toDomain()).toList();
    } catch (err) {
      rethrow;
    }
  }
}