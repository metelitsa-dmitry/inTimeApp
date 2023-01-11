
import 'package:in_time/time_set_feature/domain/repositories/time_set_repository.dart';

import '../../domain/data_source/data_base_domain.dart';
import '../models/text_chips_data_dto.dart';

class TextChipsRepositoryImpl implements TimeSetRepository<TextChoiceChipDataDto>{
  final DataBase<TextChoiceChipDataDto> _dataBase;

  TextChipsRepositoryImpl(this._dataBase);

  @override
  List<TextChoiceChipDataDto> getAllTimeSets() {
    try {
      final listTextChipsDto =
      _dataBase.getAll().map((textChips) => textChips).toList();
      return listTextChipsDto;
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<TextChoiceChipDataDto> getTimeSet(String id) async{
    try{
      final timeSetDto = _dataBase.get(id);
      return timeSetDto;
    } catch(_){
      rethrow;
    }
  }

  @override
  void saveTimeSetAs(String id, TextChoiceChipDataDto textChipsDto) {
    try{
      _dataBase.addUpdate(id, textChipsDto);
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