
import 'package:in_time/time_set_feature/data/models/time_set_dto.dart';
import 'package:in_time/time_set_feature/domain/entities/item_of_set_entity.dart';
import 'package:in_time/time_set_feature/domain/entities/time_set_entity.dart';
import 'package:in_time/time_set_feature/domain/repositories/time_set_repository.dart';

import '../../domain/data_source/data_base_domain.dart';

class TimeSetRepositoryImpl implements TimeSetRepository{
  final DataBase _dataBase;

  TimeSetRepositoryImpl(this._dataBase);

  @override
  List<TimeSetDto> getAllTimeSets() {
    try {
      final listTimeSetDto =
      _dataBase.getAll().map((timeSet) => timeSet as TimeSetDto).toList();
      return listTimeSetDto;
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<TimeSetDto> getTimeSet(String id) async{
    try{
      final timeSetDto = await _dataBase.get(id) as TimeSetDto;
      return timeSetDto;
    } catch(_){
      rethrow;
    }
  }

  @override
  void saveTimeSetAs(String id, TimeSetDto timeSetDto) {
    try{
      _dataBase.addUpdate(id, timeSetDto);
    }
        catch(_){}
  }

  @override
  void addUpdateItemInSet(int index, TimeSetEntity timeSet, ItemOfSetEntity itemOfSet) {
    try{
      _dataBase.addUpdateItemInSet(index, timeSet, itemOfSet);
    }
    catch(_){}
  }

  @override
  Future deleteTimeSet(String id) async{
    try{
      await _dataBase.delete(id);
    }
        catch(_){
      rethrow;
        }
  }





}