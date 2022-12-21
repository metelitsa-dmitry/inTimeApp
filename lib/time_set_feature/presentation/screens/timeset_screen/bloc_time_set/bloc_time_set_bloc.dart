import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:in_time/time_set_feature/domain/usecases/add_time_set_use_case.dart';

import '../../../../domain/entities/time_set_entity.dart';
import '../../../../domain/usecases/change_duration_time_set_use_case.dart';
import '../../../../domain/usecases/change_finish_time_set_use_case.dart';
import '../../../../domain/usecases/change_start_time_use_case.dart';
import '../../../../domain/usecases/get_all_time_sets.dart';
import '../../../../domain/usecases/get_time_set_use_case.dart';

part 'bloc_time_set_event.dart';
part 'bloc_time_set_state.dart';
part 'bloc_time_set_bloc.freezed.dart';

class TimeSetBloc extends Bloc<TimeSetEvent, TimeSetState> {
  final GetAllTimeSetsUseCase _getAllTimeSets;
  final GetTimeSetUseCase _getTimeSetUseCase;
  final AddTimeSetUseCase _addTimeSetUseCase;
  final ChangeStartTimeUseCase _changeStartTimeUseCase;
  final ChangeDurationTimeUseCase _changeDurationTimeUseCase;
  final ChangeFinishTimeSetUseCase _changeFinishTimeSetUseCase;

  var _currentTimeSet = TimeSetEntity(
      title: 'New',
      startTimeSet: DateTime.now(),
      durationTimeSet: DateTime(0, 0, 0, 1, 0),
      finishTimeSet: DateTime.now().add(const Duration(hours: 1)),
      dateTimeSaved: DateTime.now());

  TimeSetBloc(
      this._getAllTimeSets,
      this._getTimeSetUseCase,
      this._addTimeSetUseCase,
      this._changeStartTimeUseCase,
      this._changeDurationTimeUseCase,
      this._changeFinishTimeSetUseCase)
      : super(const TimeSetState.initial()) {
    on<TimeSetInitialEvent>((event, emit) async {
      emit(const TimeSetState.loading());
      final list = _getAllTimeSets();
      if (list.isEmpty) {
        _addTimeSetUseCase(_currentTimeSet.title, _currentTimeSet);
      }
      _currentTimeSet = await _getTimeSetUseCase(_currentTimeSet.title);

      emit(TimeSetState.loadedTimeSet(timeSet: _currentTimeSet));
    });

    on<GetTimeSetEvent>((event, emit) async {
      emit(const TimeSetState.loading());
      _currentTimeSet = await _getTimeSetUseCase(event.id);
      emit(TimeSetState.loadedTimeSet(timeSet: _currentTimeSet));
    });

    on<SaveAsTimeSetEvent>((event, emit) {
      _currentTimeSet = _currentTimeSet.copyWith(
          title: event.id, dateTimeSaved: DateTime.now());
      _addTimeSetUseCase(_currentTimeSet.title, _currentTimeSet);
      emit(TimeSetState.loadedTimeSet(timeSet: _currentTimeSet));
    });

    on<ChangeStartTimeSetEvent>((event, emit) async {
      emit(const TimeSetState.loading());
      final newStart = event.newStatTime;
      final newFinish = newStart.add(Duration(hours: _currentTimeSet.durationTimeSet.hour,
          minutes: _currentTimeSet.durationTimeSet.minute));
      _currentTimeSet = await _changeFinishTimeSetUseCase(newFinish, _currentTimeSet);
      _currentTimeSet =
          await _changeStartTimeUseCase(event.newStatTime, _currentTimeSet);

      emit(TimeSetState.loadedTimeSet(timeSet: _currentTimeSet));
    });

    on<ChangeDurationTimeSetEvent>((event, emit) async {
      emit(const TimeSetState.loading());
      final newDuration = event.newDuration;
      final startTime = _currentTimeSet.startTimeSet;
      _currentTimeSet =
          await _changeDurationTimeUseCase(newDuration, _currentTimeSet);

      final newFinish = startTime.add(Duration(hours: _currentTimeSet.durationTimeSet.hour,
          minutes: _currentTimeSet.durationTimeSet.minute));
      _currentTimeSet = await _changeFinishTimeSetUseCase(newFinish, _currentTimeSet);
      emit(TimeSetState.loadedTimeSet(timeSet: _currentTimeSet));
    });

    on<ChangeFinishTimeSetEvent>((event, emit) async {
      emit(const TimeSetState.loading());
      final startTime = _currentTimeSet.startTimeSet;
      final newFinishTime = event.newFinishTime;
      _currentTimeSet =
          await _changeFinishTimeSetUseCase(newFinishTime, _currentTimeSet);

      final newDuration = newFinishTime.difference(startTime);
      final newDurationInHours = (newDuration.inMinutes/60).floor();
      final newDurationInMinutes = (newDuration.inMinutes).floor() - (newDurationInHours * 60);

      _currentTimeSet = await _changeDurationTimeUseCase(DateTime(0,0,0, newDurationInHours, newDurationInMinutes) , _currentTimeSet);

      emit(TimeSetState.loadedTimeSet(timeSet: _currentTimeSet));
    });
  }
}
