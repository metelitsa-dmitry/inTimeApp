
import 'package:shared_preferences/shared_preferences.dart';

import '../data_sources/local_value_data_source.dart';

class LocalIntDaraSourceRepositoryImpl implements LocalValueDataSource<int>{
  final SharedPreferences sharedPreferences;

  LocalIntDaraSourceRepositoryImpl(this.sharedPreferences);

  @override
  Future<int> getValue(String id) {
    try{
      final value = sharedPreferences.getInt(id);
      return Future.value(value);
    } catch(e){
      rethrow;
    }
  }

  @override
  Future<bool> saveValue(String id, int value) {
    try{
      final savedValue= sharedPreferences.setInt(id, value);
      return Future.value(savedValue);
    } catch(e){
      rethrow;
    }
  }

}