part of 'bloc_settings_bloc.dart';

@freezed
class SettingsEvent with _$SettingsEvent {

  const factory SettingsEvent.initialize() = _Initialize;
  const factory SettingsEvent.increaseCount() = _IncreaseCountEvent;
  const factory SettingsEvent.decreaseCount() = _DecreaseCountEvent;
  const factory SettingsEvent.changeDuration(
      {required TimeOfDay newDefaultDurationTimeSet}) = _ChangeDurationEvent;



}
