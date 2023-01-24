import '../../../data/data_sources/local_value_data_source.dart';

class SaveThemeDataUseCase{
  final LocalValueDataSource<String> _localValueDataSource;
  final id = 'current_theme';

  SaveThemeDataUseCase(this._localValueDataSource);

  Future<void> call(String nameSession) async{
    await _localValueDataSource.saveValue(id, nameSession);
  }
}