
import 'package:shared_preferences/shared_preferences.dart';

import '../data_sources/local_value_data_source.dart';

class LocalStringDaraSourceRepositoryImpl implements LocalValueDataSource<String>{
  final SharedPreferences sharedPreferences;

  LocalStringDaraSourceRepositoryImpl(this.sharedPreferences);

  @override
  Future<String?> getValue(String id) {
    try{
      final value = sharedPreferences.getString(id);
      return Future.value(value);
    } catch(e){
      rethrow;
    }
  }

  @override
  Future<bool> saveValue(String id, String value) {
    try{
      final savedValue= sharedPreferences.setString(id, value);
      return Future.value(savedValue);
    } catch(e){
      rethrow;
    }
  }

}