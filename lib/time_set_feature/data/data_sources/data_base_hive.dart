import 'package:hive_flutter/hive_flutter.dart';
import 'package:in_time/core/error/exceptions.dart';
import 'package:in_time/time_set_feature/data/models/item_of_set_dto.dart';
import 'package:in_time/time_set_feature/data/models/time_set_dto.dart';
import 'package:in_time/time_set_feature/domain/entities/item_of_set_entity.dart';
import 'package:in_time/time_set_feature/domain/entities/time_set_entity.dart';

import '../../../core/constants.dart';
import '../../domain/data_source/data_base_domain.dart';

class DataBaseTimeSetImpl implements DataBase<TimeSetDto, ItemOfSetDto> {
  @override
  Box get box => Hive.box(constTimeSetsBox);

  @override
  Future addUpdate(String id, TimeSetDto timeSetDto) async {
    try {
      await box.put(id, timeSetDto);
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
  TimeSetDto get(String id) {
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
  List<TimeSetDto> getAll() {
    final data = box.toMap().values;
    return data.toList().cast<TimeSetDto>();
  }

  @override
  Future<void> addUpdateItemInSet(
      int index, TimeSetEntity timeSet, ItemOfSetEntity itemOfSetDto) async {
    var listItemsOfSet = timeSet.itemsOfSet?.toList() ?? [];
    listItemsOfSet.insert(index, itemOfSetDto);
    listItemsOfSet.removeAt(index + 1);
    var timeSetDto =
        TimeSetDto.fromDomain(timeSet.copyWith(itemsOfSet: listItemsOfSet));

    try {
      await box.put(timeSetDto.title, timeSetDto);
    } catch (_) {
      rethrow;
    }
  }
}
