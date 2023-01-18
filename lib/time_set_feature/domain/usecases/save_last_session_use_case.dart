
import '../../data/data_sources/local_value_data_source.dart';

class SaveLastSessionUseCase{
  final LocalValueDataSource<String> _localValueDataSource;
  final id = 'last_session';

  SaveLastSessionUseCase(this._localValueDataSource);

  Future<void> call(String nameSession) async{
    await _localValueDataSource.saveValue(id, nameSession);
  }
}