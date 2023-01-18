import 'package:flutter/material.dart';
import '../../../data/data_sources/local_value_data_source.dart';

class GetDefaultDurationTimeSetUseCase{
  final LocalValueDataSource<int> _localIntDaraSourceRepositoryImpl;
  final String idHour = 'duration_set_hour';
  final String idMinutes = 'duration_set_minutes';

  GetDefaultDurationTimeSetUseCase(this._localIntDaraSourceRepositoryImpl);

  Future<TimeOfDay> call() async {
    final hour = await _localIntDaraSourceRepositoryImpl.getValue(idHour) ?? 1;
    final minutes = await _localIntDaraSourceRepositoryImpl.getValue(idMinutes) ?? 0;

    return TimeOfDay(hour: hour, minute: minutes) ;
  }

}