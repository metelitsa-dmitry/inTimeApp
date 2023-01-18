
import '../../../data/data_sources/local_value_data_source.dart';


class GetDefaultNumberItemsUseCase{
  final LocalValueDataSource<int> _localIntDaraSourceRepositoryImpl;
  final id = 'number_items';

  GetDefaultNumberItemsUseCase(this._localIntDaraSourceRepositoryImpl);

  Future<int?> call() async {
    return await _localIntDaraSourceRepositoryImpl.getValue(id);
  }

}