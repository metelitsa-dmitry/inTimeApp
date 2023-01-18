
abstract class LocalValueDataSource<T>{
  Future<T?> getValue(String id);
  Future<bool> saveValue(String id, T value);


}