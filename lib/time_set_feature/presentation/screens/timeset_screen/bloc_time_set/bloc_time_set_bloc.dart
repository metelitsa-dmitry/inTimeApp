import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:in_time/core/time_calculator.dart';
import 'package:in_time/time_set_feature/domain/entities/item_of_set_entity.dart';
import 'package:in_time/time_set_feature/domain/usecases/add_time_set_use_case.dart';

import '../../../../domain/entities/time_set_entity.dart';
import '../../../../domain/usecases/get_all_time_sets.dart';
import '../../../../domain/usecases/get_time_set_use_case.dart';
import '../../../../domain/usecases/recalculate_item_of_set_use_case.dart';

part 'bloc_time_set_event.dart';
part 'bloc_time_set_state.dart';
part 'bloc_time_set_bloc.freezed.dart';

class TimeSetBloc extends Bloc<TimeSetEvent, TimeSetState> {
  final GetAllTimeSetsUseCase _getAllTimeSets;
  final GetTimeSetUseCase _getTimeSetUseCase;
  final AddTimeSetUseCase _addTimeSetUseCase;
  final RecalculateItemOfSet _recalculateItemOfSet;
  final _timeCalculator = TimeCalculator();

  var _currentTimeSet = TimeSetEntity(
      title: 'New',
      startTimeSet: DateTime.now(),
      durationHourTimeSet: 1,
      durationMinutesTimeSet: 0,
      finishTimeSet: DateTime.now().add(const Duration(hours: 1)),
      dateTimeSaved: DateTime.now());
  var listItem = <ItemOfSetEntity>[];

  var averageDuration = DateTime(0, 0, 0, 1, 0);

  TimeSetBloc(
      this._getAllTimeSets,
      this._getTimeSetUseCase,
      this._addTimeSetUseCase,
      this._recalculateItemOfSet)
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
      final newFinish = newStart.add(Duration(
          hours: _currentTimeSet.durationHourTimeSet,
          minutes: _currentTimeSet.durationMinutesTimeSet));

      listItem = _recalculateItemOfSet(
          listOfItems: listItem,
          averageDuration: averageDuration,
          startOfTimeSet: event.newStatTime);
      _currentTimeSet = _currentTimeSet.copyWith(
          startTimeSet: event.newStatTime,
          finishTimeSet: newFinish,
          itemsOfSet: listItem);
      _addTimeSetUseCase(_currentTimeSet.title, _currentTimeSet);

      emit(TimeSetState.loadedTimeSet(timeSet: _currentTimeSet));
    });

    on<ChangeDurationTimeSetEvent>((event, emit) async {
      listItem = _currentTimeSet.itemsOfSet?.toList() ?? [];
      final newDuration = Duration(hours:event.newDuration.hour,
      minutes:event.newDuration.minute );
      final startTime = _currentTimeSet.startTimeSet;
      averageDuration = _timeCalculator.calcAverageDurationOfItem(
          duration: newDuration, countOfItems: (listItem.length));
      final newFinish = startTime.add(newDuration);

      listItem = _recalculateItemOfSet(
          listOfItems: listItem,
          averageDuration: averageDuration,
          startOfTimeSet: startTime);
      _currentTimeSet = _currentTimeSet.copyWith(
          startTimeSet: startTime,
          durationHourTimeSet: event.newDuration.hour,
          durationMinutesTimeSet:event.newDuration.minute ,
          finishTimeSet: newFinish,
          itemsOfSet: listItem);
      _addTimeSetUseCase(_currentTimeSet.title, _currentTimeSet);

      emit(TimeSetState.loadedTimeSet(timeSet: _currentTimeSet));
    });

    ///TODO fix recalculate
    on<ChangeFinishTimeSetEvent>((event, emit) async {
      listItem = _currentTimeSet.itemsOfSet?.toList() ?? [];

      final startTime = _currentTimeSet.startTimeSet;
      final newFinishTime = event.newFinishTime;
      // _currentTimeSet =
      //     await _changeFinishTimeSetUseCase(newFinishTime, _currentTimeSet);

      final newDuration = newFinishTime.difference(startTime);
      final newDurationInHours = (newDuration.inMinutes / 60).floor();
      final newDurationInMinutes =
          (newDuration.inMinutes).floor() - (newDurationInHours * 60);
      averageDuration = _timeCalculator.calcAverageDurationOfItem(
          duration: newDuration, countOfItems: listItem.length);

      listItem = _recalculateItemOfSet(
          listOfItems: listItem,
          averageDuration: averageDuration,
          startOfTimeSet: startTime);
      _currentTimeSet = _currentTimeSet.copyWith(
          startTimeSet: startTime,
          durationHourTimeSet: newDurationInHours,
          durationMinutesTimeSet:newDurationInMinutes ,
          finishTimeSet: newFinishTime,
          itemsOfSet: listItem);
      _addTimeSetUseCase(_currentTimeSet.title, _currentTimeSet);
      emit(TimeSetState.loadedTimeSet(timeSet: _currentTimeSet));
    });

    on<AddItemOfSetEvent>((event, emit) {
      listItem = _currentTimeSet.itemsOfSet?.toList() ?? [];
      var start = _currentTimeSet.startTimeSet;
      final durationTimeSet = Duration(
          hours: _currentTimeSet.durationHourTimeSet,
          minutes: _currentTimeSet.durationHourTimeSet);
      averageDuration = _timeCalculator.calcAverageDurationOfItem(
          duration: durationTimeSet, countOfItems: (listItem.length + 1));
      final itemOfSet = ItemOfSetEntity(
          durationHourOfItemSet: averageDuration.hour,
          durationMinutesOfItemSet: averageDuration.minute,
          durationSecondsOfItemSet: averageDuration.second,
          startItemOfSet: start);
      listItem.add(itemOfSet);

      listItem = _recalculateItemOfSet(
          listOfItems: listItem,
          averageDuration: averageDuration,
          startOfTimeSet: start);

      _currentTimeSet = _currentTimeSet.copyWith(itemsOfSet: listItem);
      _addTimeSetUseCase(_currentTimeSet.title, _currentTimeSet);
      emit(TimeSetState.loadedTimeSet(timeSet: _currentTimeSet));
    });

    on<addSeveralItemOfSetEvent>((event, emit) {
      listItem = _currentTimeSet.itemsOfSet?.toList() ?? [];
      var start = _currentTimeSet.startTimeSet;
      final durationTimeSet = Duration(
          hours: _currentTimeSet.durationHourTimeSet,
          minutes: _currentTimeSet.durationHourTimeSet);

      final itemOfSet = ItemOfSetEntity(
          durationHourOfItemSet: averageDuration.hour,
          durationMinutesOfItemSet: averageDuration.minute,
          durationSecondsOfItemSet: averageDuration.second,
          startItemOfSet: start);

      for (int i = 0; i < event.count; i++) {
        listItem.add(itemOfSet);
      }
      averageDuration = _timeCalculator.calcAverageDurationOfItem(
          duration: durationTimeSet,
          countOfItems: (listItem.length));
      listItem = _recalculateItemOfSet(
          listOfItems: listItem,
          averageDuration: averageDuration,
          startOfTimeSet: start);

      _currentTimeSet = _currentTimeSet.copyWith(itemsOfSet: listItem);
      _addTimeSetUseCase(_currentTimeSet.title, _currentTimeSet);

      emit(TimeSetState.loadedTimeSet(timeSet: _currentTimeSet));
    });

    on<RemoveItemOfSetEvent>((event, emit) {
      listItem = _currentTimeSet.itemsOfSet?.toList() ?? [];
      var start = _currentTimeSet.startTimeSet;
      final durationTimeSet = Duration(
          hours: _currentTimeSet.durationHourTimeSet,
          minutes: _currentTimeSet.durationHourTimeSet);
      listItem.removeAt(event.id);
      averageDuration = _timeCalculator.calcAverageDurationOfItem(
          duration: durationTimeSet,
          countOfItems: (listItem.length));
      listItem = _recalculateItemOfSet(
          listOfItems: listItem,
          averageDuration: averageDuration,
          startOfTimeSet: start);
      _currentTimeSet = _currentTimeSet.copyWith(itemsOfSet: listItem);
      _addTimeSetUseCase(_currentTimeSet.title, _currentTimeSet);
      emit(TimeSetState.loadedTimeSet(timeSet: _currentTimeSet));
    });
  }
}
