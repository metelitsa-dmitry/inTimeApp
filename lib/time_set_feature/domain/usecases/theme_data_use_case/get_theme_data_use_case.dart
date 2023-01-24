import '../../../data/data_sources/local_value_data_source.dart';

class GetThemeDataUseCase{
  final LocalValueDataSource<String> _localValueDataSource;
  final id = 'current_theme';

  GetThemeDataUseCase(this._localValueDataSource);

  Future<String?> call() {
    final currentThemeData = _localValueDataSource.getValue(id);
    return  currentThemeData;
  }
}