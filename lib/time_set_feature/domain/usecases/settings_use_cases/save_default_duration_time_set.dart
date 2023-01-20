import 'package:flutter/material.dart';

import '../../../data/data_sources/local_value_data_source.dart';

class SaveDefaultDurationTimeSetUseCase{
  final LocalValueDataSource<int> _localIntDaraSourceRepositoryImpl;
  final String idHour = 'duration_set_hour';
  final String idMinutes = 'duration_set_minutes';

  SaveDefaultDurationTimeSetUseCase(this._localIntDaraSourceRepositoryImpl);

  Future<void> call(TimeOfDay defaultDuration) async {

    final hour = defaultDuration.hour;
    final minutes = defaultDuration.minute ;
    await _localIntDaraSourceRepositoryImpl.saveValue(idHour, hour);
    await _localIntDaraSourceRepositoryImpl.saveValue(idMinutes, minutes);
  }

}