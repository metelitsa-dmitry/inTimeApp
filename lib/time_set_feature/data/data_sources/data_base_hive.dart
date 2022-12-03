
import 'package:hive_flutter/hive_flutter.dart';
import 'package:in_time/core/error/exceptions.dart';
import 'package:in_time/time_set_feature/domain/data_base/data_base_domain.dart';

class DataBaseHiveImpl implements DataBase{

  final String database;

  DataBaseHiveImpl({required this.database});

  @override
  Box get box => Hive.box(database);

  @override
  Future addUpdate<T>(String id, T item) async {
    try {
      await box.put(id, item);
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
  T get<T>(String id) {
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
  List<T> getAll<T>() {
    try {
      final data = box.toMap().values;
      if (data.isEmpty) {
        throw  TimeSetAppException.noRecords();
      }
      return data.toList().cast<T>();
    } catch (_) {
      rethrow;
    }
  }


}