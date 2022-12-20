part of 'bloc_time_set_bloc.dart';

@freezed
class TimeSetState with _$TimeSetState {
  const factory TimeSetState.initial() = _Initial;
  const factory TimeSetState.loading()= _Loading;
  const factory TimeSetState.loadedTimeSet({
    required TimeSetEntity timeSet})= _LoadedTimeSet;
}
