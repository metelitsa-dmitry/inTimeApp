part of 'bloc_list_time_sets_bloc.dart';

@freezed
class ListTimeSetsEvent with _$ListTimeSetsEvent {
  const factory ListTimeSetsEvent.initial() = Initial;
  const factory ListTimeSetsEvent.loaded() = Loaded;

}
