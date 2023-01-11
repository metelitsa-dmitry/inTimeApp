import 'package:hive_flutter/hive_flutter.dart';
import 'package:in_time/core/error/exceptions.dart';
import '../../../core/constants.dart';
import '../../domain/data_source/data_base_domain.dart';
import '../models/text_chips_data_dto.dart';

class DataBaseTextChipsImpl implements DataBase<TextChoiceChipDataDto> {

  @override
  Box get box => Hive.box(constTextChipsBox);

  @override
  Future addUpdate(String id, TextChoiceChipDataDto textChoiceChipDto) async {
    try {
      await box.put(id, textChoiceChipDto);
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future delete(String id) async {
    try {
      await box.delete(id);
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future deleteAll(List<String> keys) async {
    try {
      await box.deleteAll(keys);
    } catch (_) {
      rethrow;
    }
  }

  @override
  TextChoiceChipDataDto get(String id) {
    try {
      final data = box.get(id);
      if (data == null) {
        throw TimeSetAppException.noRecords();
      }
      return data;
    } catch (_) {
      rethrow;
    }
  }

  @override
  List<TextChoiceChipDataDto> getAll() {
    final data = box.toMap().values;
    return data.toList().cast<TextChoiceChipDataDto>();
  }

}
