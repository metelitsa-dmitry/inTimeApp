
import '../../data/data_sources/local_value_data_source.dart';

class GetLastSessionUseCase{
  final LocalValueDataSource<String> _localValueDataSource;
  final id = 'last_session';

  GetLastSessionUseCase(this._localValueDataSource);

  Future<String?> call() {
    final lastSession = _localValueDataSource.getValue(id);
    return  lastSession;
  }
}