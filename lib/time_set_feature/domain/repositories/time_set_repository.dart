
import 'package:in_time/time_set_feature/data/models/time_set_dto.dart';
import 'package:in_time/time_set_feature/domain/entities/item_of_set_entity.dart';
import 'package:in_time/time_set_feature/domain/entities/time_set_entity.dart';




abstract class TimeSetRepository{
  List<TimeSetDto> getAllTimeSets();
  Future<TimeSetDto> getTimeSet(String id);
  void saveTimeSetAs(String id, TimeSetDto timeSetDto);
   void addUpdateItemInSet(int index, TimeSetEntity timeSetDto, ItemOfSetEntity itemOfSetDto);
  Future deleteTimeSet(String id);






}