
import '../../../data/data_sources/local_value_data_source.dart';

class SaveDefaultNumberItems{
  final LocalValueDataSource<int> _localIntDaraSourceRepositoryImpl;
  final id = 'number_items';

  SaveDefaultNumberItems(this._localIntDaraSourceRepositoryImpl);

  Future<bool> call(int value) async {
    return await _localIntDaraSourceRepositoryImpl.saveValue(id, value);
  }

}