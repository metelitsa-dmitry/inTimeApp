import '../../../data/data_sources/local_value_data_source.dart';

class GetDesignTypeUseCase{
  final LocalValueDataSource<String> _localValueDataSource;
  final id = 'design_type';

  GetDesignTypeUseCase(this._localValueDataSource);

  Future<String?> call() {
    final currentThemeData = _localValueDataSource.getValue(id);
    return  currentThemeData;
  }

}