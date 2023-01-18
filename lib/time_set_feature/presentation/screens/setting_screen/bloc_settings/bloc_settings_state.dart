part of 'bloc_settings_bloc.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState.initial() = _Initial;
  const factory SettingsState.loading() = _Loading;
  const factory SettingsState.loaded({
                required int defaultNumberItems,
                required int defaultDurationSetHour,
                required int defaultDurationSetMinute,
  }) = _Loaded;
}
