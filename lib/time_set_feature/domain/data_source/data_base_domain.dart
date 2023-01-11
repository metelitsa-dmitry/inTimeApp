import 'package:hive_flutter/hive_flutter.dart';


abstract class DataBase<T> {
  Box get box;
  T get(String id);
  List<T> getAll();
  Future delete(String id);
  Future deleteAll(List<String> keys);
  Future addUpdate(String id, T item);
}