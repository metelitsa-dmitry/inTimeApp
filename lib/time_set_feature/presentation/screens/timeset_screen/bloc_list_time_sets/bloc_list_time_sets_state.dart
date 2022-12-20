part of 'bloc_list_time_sets_bloc.dart';

@freezed
class ListTimeSetsState with _$ListTimeSetsState {
  const factory ListTimeSetsState.initial() = _Initial;
  const factory ListTimeSetsState.loading() = _Loading;
  const factory ListTimeSetsState.loaded({required List<TimeSetEntity> listTimeSets}) = _Loaded;
}
