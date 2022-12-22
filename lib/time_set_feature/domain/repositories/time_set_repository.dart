
import 'package:in_time/time_set_feature/data/models/time_set_dto.dart';



abstract class TimeSetRepository{
  List<TimeSetDto> getAllTimeSets();
  Future<TimeSetDto> getTimeSet(String id);
  void saveTimeSetAs(String id, TimeSetDto timeSetDto);
  Future deleteTimeSet(String id);






}