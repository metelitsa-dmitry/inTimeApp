part of 'bloc_time_set_bloc.dart';

@freezed
class TimeSetEvent with _$TimeSetEvent {
  const factory TimeSetEvent.initial() = TimeSetInitialEvent;
  const factory TimeSetEvent.getTimeSet({required String id}) = GetTimeSetEvent;
  const factory TimeSetEvent.saveAsTimeSet({required String id}) = SaveAsTimeSetEvent;

}
