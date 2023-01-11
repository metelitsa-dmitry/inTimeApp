


abstract class TimeSetRepository<T>{
  List<T> getAllTimeSets();
  Future<T> getTimeSet(String id);
  void saveTimeSetAs(String id, T timeSetDto);
  Future deleteTimeSet(String id);
}