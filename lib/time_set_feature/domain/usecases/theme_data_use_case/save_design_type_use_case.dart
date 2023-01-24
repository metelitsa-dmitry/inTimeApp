import '../../../data/data_sources/local_value_data_source.dart';

class SaveDesignTypeUseCase{
  final LocalValueDataSource<String> _localValueDataSource;
  final id = 'design_type';

  SaveDesignTypeUseCase(this._localValueDataSource);

  Future<void> call(String nameSession) async{
    await _localValueDataSource.saveValue(id, nameSession);
  }
}