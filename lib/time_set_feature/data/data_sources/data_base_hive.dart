
import 'package:hive_flutter/hive_flutter.dart';
import 'package:in_time/core/error/exceptions.dart';

import '../../../core/constants.dart';
import '../../domain/data_source/data_base_domain.dart';

class DataBaseTimeSetImpl implements DataBase{


  @override
  Box get box => Hive.box(constTimeSetsBox);

  @override
  Future addUpdate<TimeSetDto>(String id, TimeSetDto timeSetDto) async {
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
  timeSetDto get<timeSetDto>(String id) {
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
  List<timeSetDto> getAll<timeSetDto>() {

      final data = box.toMap().values;
      return data.toList().cast<timeSetDto>();
     }


}