import 'package:hive_flutter/hive_flutter.dart';
import 'package:in_time/time_set_feature/domain/entities/item_of_set_entity.dart';
import 'package:in_time/time_set_feature/domain/entities/time_set_entity.dart';

abstract class DataBase<T, I> {
  Box get box;
  T get(String id);
  List<T> getAll();
  Future delete(String id);
  Future deleteAll(List<String> keys);
  Future addUpdate(String id, T item);
  Future<void> addUpdateItemInSet(int index, TimeSetEntity timeSet, ItemOfSetEntity item);
}