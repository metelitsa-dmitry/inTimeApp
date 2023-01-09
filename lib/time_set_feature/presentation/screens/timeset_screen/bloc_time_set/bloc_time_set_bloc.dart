import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:in_time/core/time_calculator.dart';
import 'package:in_time/time_set_feature/domain/entities/item_of_set_entity.dart';
import 'package:in_time/time_set_feature/domain/entities/number_chips_data.dart';
import 'package:in_time/time_set_feature/domain/usecases/add_time_set_use_case.dart';
import 'package:in_time/time_set_feature/domain/usecases/get_last_session_use_case.dart';
import 'package:in_time/time_set_feature/domain/usecases/save_last_session_use_case.dart';

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
  final GetLastSessionUseCase _getLastSessionUseCase;
  final SaveLastSessionUseCase _saveLastSession;

  String lastSession = 'New';
  final _timeCalculator = TimeCalculator();

  TimeSetBloc(
      this._getAllTimeSets,
      this._getTimeSetUseCase,
      this._addTimeSetUseCase,
      this._recalculateItemOfSet,
      this._getLastSessionUseCase,
      this._saveLastSession)
      : super(const TimeSetState.initial()) {
    on<TimeSetInitialEvent>((event, emit) async {
      emit(const TimeSetState.loading());
      final listTimeSets = _getAllTimeSets();
      final timeSet = TimeSetEntity(
          title: 'New',
          startTimeSet: DateTime.now(),
          durationHourTimeSet: 1,
          durationMinutesTimeSet: 0,
          finishTimeSet: DateTime.now().add(const Duration(hours: 1)),
          dateTimeSaved: DateTime.now());
      if (listTimeSets.isEmpty) {
        _addTimeSetUseCase(timeSet.title, timeSet);
        _saveLastSession(timeSet.title);
      }
      lastSession = await _getLastSessionUseCase() ?? 'New';
      final currentTimeSet =
          await _getTimeSetUseCase(lastSession);
      emit(TimeSetState.loadedTimeSet(timeSet: currentTimeSet));
    });

    on<GetTimeSetEvent>((event, emit) async {
      emit(const TimeSetState.loading());
      final loadedTimeSet = await _getTimeSetUseCase(event.id);
      lastSession = loadedTimeSet.title;
      _saveLastSession(lastSession);
      emit(TimeSetState.loadedTimeSet(timeSet: loadedTimeSet));
    });

    on<SaveAsTimeSetEvent>((event, emit) {
      if (state is _LoadedTimeSet) {
        final currentState = state as _LoadedTimeSet;
        final savedTimeSet = currentState.timeSet
            .copyWith(title: event.id, dateTimeSaved: DateTime.now());
        _addTimeSetUseCase(savedTimeSet.title, savedTimeSet);
        lastSession = savedTimeSet.title;
        emit(TimeSetState.loadedTimeSet(timeSet: savedTimeSet));
      }
    });

    on<ChangeStartTimeSetEvent>((event, emit) async {
      if (state is _LoadedTimeSet) {
        final currentTimeSet = (state as _LoadedTimeSet).timeSet;
        final currentListItem = currentTimeSet.itemsOfSet?.toList() ?? [];
        var averageDuration = DateTime(0, 0, 0, 0, 1);
        final newDuration = Duration(
            hours: currentTimeSet.durationHourTimeSet,
            minutes: currentTimeSet.durationMinutesTimeSet);
        if (currentListItem.isNotEmpty) {
          averageDuration = _timeCalculator.calcAverageDurationOfItem(
              duration: newDuration, countOfItems: (currentListItem.length));
        }
        final newStart = event.newStatTime;
        final newFinish = newStart.add(Duration(
            hours: currentTimeSet.durationHourTimeSet,
            minutes: currentTimeSet.durationMinutesTimeSet));

        var updatedListItems = _recalculateItemOfSet(
                listOfItems: currentTimeSet.itemsOfSet ?? [],
                averageDuration: averageDuration,
                startOfTimeSet: event.newStatTime)
            .toList();
        final updatedTimeSet = currentTimeSet.copyWith(
            startTimeSet: event.newStatTime,
            finishTimeSet: newFinish,
            itemsOfSet: updatedListItems);
        _addTimeSetUseCase(updatedTimeSet.title, updatedTimeSet);

        emit(TimeSetState.loadedTimeSet(timeSet: updatedTimeSet));
      }
    });

    on<ChangeDurationTimeSetEvent>((event, emit) async {
      if (state is _LoadedTimeSet) {
        final currentTimeSet = (state as _LoadedTimeSet).timeSet;
        final currentListItem = currentTimeSet.itemsOfSet?.toList() ?? [];
        final newDuration = Duration(
            hours: event.newDuration.hour, minutes: event.newDuration.minute);
        final startTime = currentTimeSet.startTimeSet;
        var averageDuration = DateTime(0, 0, 0, 0, 1);
        if(currentListItem.isNotEmpty){
          averageDuration = _timeCalculator.calcAverageDurationOfItem(
              duration: newDuration, countOfItems: (currentListItem.length));
        }

        final newFinish = startTime.add(newDuration);

        final updatedListItem = _recalculateItemOfSet(
            listOfItems: currentListItem,
            averageDuration: averageDuration,
            startOfTimeSet: startTime);
        final updatedTimeSet = currentTimeSet.copyWith(
            startTimeSet: startTime,
            durationHourTimeSet: event.newDuration.hour,
            durationMinutesTimeSet: event.newDuration.minute,
            finishTimeSet: newFinish,
            itemsOfSet: updatedListItem);
        _addTimeSetUseCase(updatedTimeSet.title, updatedTimeSet);
        emit(TimeSetState.loadedTimeSet(timeSet: updatedTimeSet));
      }
    });

    on<ChangeFinishTimeSetEvent>((event, emit) async {
      if (state is _LoadedTimeSet) {
        final currentTimeSet = (state as _LoadedTimeSet).timeSet;
        final currentListItem = currentTimeSet.itemsOfSet?.toList() ?? [];
        var durationInHours = currentTimeSet.durationHourTimeSet;
        var durationInMinutes = currentTimeSet.durationMinutesTimeSet;
        var durationTimeSet = Duration(hours: durationInHours, minutes: durationInMinutes);
        var avrgDurationItem = DateTime(0, 0, 0, 0, 1);
        var startTime = currentTimeSet.startTimeSet;
        final newFinishTime = event.newFinishTime;
        //if finish less then start => change duration of Set
        if (newFinishTime.isAfter(startTime)){
          durationTimeSet = newFinishTime.difference(startTime);
          durationInHours = (durationTimeSet.inMinutes / 60).floor();
          durationInMinutes =
              (durationTimeSet.inMinutes).floor() - (durationInHours * 60);
        }
        // if finish equal or more then start => change start
        else{
          startTime = newFinishTime.subtract(durationTimeSet);
        }

        if(currentListItem.isNotEmpty){
          avrgDurationItem = _timeCalculator.calcAverageDurationOfItem(
              duration: durationTimeSet, countOfItems: (currentListItem.length));
        }

        final updatedListItem = _recalculateItemOfSet(
            listOfItems: currentListItem,
            averageDuration: avrgDurationItem,
            startOfTimeSet: startTime);
        final updatedTimeSet = currentTimeSet.copyWith(
            startTimeSet: startTime,
            durationHourTimeSet: durationInHours,
            durationMinutesTimeSet: durationInMinutes,
            finishTimeSet: newFinishTime,
            itemsOfSet: updatedListItem);
        _addTimeSetUseCase(updatedTimeSet.title, updatedTimeSet);
        emit(TimeSetState.loadedTimeSet(timeSet: updatedTimeSet));
      }
    });

    on<AddItemOfSetEvent>((event, emit) {
      if (state is _LoadedTimeSet) {
        final currentTimeSet = (state as _LoadedTimeSet).timeSet;
        final currentListItem = currentTimeSet.itemsOfSet?.toList() ?? [];
        var start = currentTimeSet.startTimeSet;
        final durationTimeSet = Duration(
            hours: currentTimeSet.durationHourTimeSet,
            minutes: currentTimeSet.durationMinutesTimeSet);
        final averageDuration = _timeCalculator.calcAverageDurationOfItem(
            duration: durationTimeSet,
            countOfItems: (currentListItem.length + 1));
        final itemOfSet = ItemOfSetEntity(
            durationHourOfItemSet: averageDuration.hour,
            durationMinutesOfItemSet: averageDuration.minute,
            durationSecondsOfItemSet: averageDuration.second,
            startItemOfSet: start);
        currentListItem.add(itemOfSet);

        final updatedListItem = _recalculateItemOfSet(
            listOfItems: currentListItem,
            averageDuration: averageDuration,
            startOfTimeSet: start);

        final updatedTimeSet =
            currentTimeSet.copyWith(itemsOfSet: updatedListItem);
        _addTimeSetUseCase(updatedTimeSet.title, updatedTimeSet);
        emit(TimeSetState.loadedTimeSet(timeSet: updatedTimeSet));
      }
    });

    on<AddSeveralItemOfSetEvent>((event, emit) {
      if (state is _LoadedTimeSet) {
        final currentTimeSet = (state as _LoadedTimeSet).timeSet;
        final currentListItem = currentTimeSet.itemsOfSet?.toList() ?? [];
        var averageDuration = DateTime(0, 0, 0, 1, 0);
        var start = currentTimeSet.startTimeSet;
        final durationTimeSet = Duration(
            hours: currentTimeSet.durationHourTimeSet,
            minutes: currentTimeSet.durationMinutesTimeSet);
        if (currentListItem.isNotEmpty) {
          averageDuration = _timeCalculator.calcAverageDurationOfItem(
              duration: durationTimeSet, countOfItems: currentListItem.length);
        }

        final itemOfSet = ItemOfSetEntity(
            durationHourOfItemSet: averageDuration.hour,
            durationMinutesOfItemSet: averageDuration.minute,
            durationSecondsOfItemSet: averageDuration.second,
            startItemOfSet: start);
        var startNumber = event.startNumber;
        var numberChips = currentTimeSet.numberChips?.toList() ?? [];

        for (int i = 0; i < event.count; i++) {
          currentListItem
              .add(itemOfSet.copyWith(chipsItem: [startNumber.toString()]));
          numberChips
              .add(NumberChipsData(number: startNumber, isSelected: false));
          startNumber++;
        }

        averageDuration = _timeCalculator.calcAverageDurationOfItem(
            duration: durationTimeSet, countOfItems: (currentListItem.length));
        final updatedListItem = _recalculateItemOfSet(
            listOfItems: currentListItem,
            averageDuration: averageDuration,
            startOfTimeSet: start);

        final updatedTimeSet = currentTimeSet.copyWith(
            itemsOfSet: updatedListItem, numberChips: numberChips);
        _addTimeSetUseCase(updatedTimeSet.title, updatedTimeSet);

        emit(TimeSetState.loadedTimeSet(timeSet: updatedTimeSet));
      }
    });

    on<InsertItemInSetEvent>((event, emit) {
      if (state is _LoadedTimeSet) {
        final index = event.index;
        final currentTimeSet = (state as _LoadedTimeSet).timeSet;
        final currentListItem = currentTimeSet.itemsOfSet?.toList() ?? [];
        var start = currentTimeSet.startTimeSet;
        final durationTimeSet = Duration(
            hours: currentTimeSet.durationHourTimeSet,
            minutes: currentTimeSet.durationMinutesTimeSet);
        final averageDuration = _timeCalculator.calcAverageDurationOfItem(
            duration: durationTimeSet,
            countOfItems: (currentListItem.length + 1));
        final itemOfSet = ItemOfSetEntity(
            durationHourOfItemSet: averageDuration.hour,
            durationMinutesOfItemSet: averageDuration.minute,
            durationSecondsOfItemSet: averageDuration.second,
            startItemOfSet: start);
        currentListItem.insert(index, itemOfSet);

        final updatedListItem = _recalculateItemOfSet(
            listOfItems: currentListItem,
            averageDuration: averageDuration,
            startOfTimeSet: start);

        final updatedTimeSet =
        currentTimeSet.copyWith(itemsOfSet: updatedListItem);
        _addTimeSetUseCase(updatedTimeSet.title, updatedTimeSet);
        emit(TimeSetState.loadedTimeSet(timeSet: updatedTimeSet));
      }
    });


    on<RemoveItemOfSetEvent>((event, emit) {
      if (state is _LoadedTimeSet) {
        final currentTimeSet = (state as _LoadedTimeSet).timeSet;
        var currentListItem = currentTimeSet.itemsOfSet?.toList() ?? [];
        var averageDuration = DateTime(0,0,0,0,0);
        final start = currentTimeSet.startTimeSet;
        final durationTimeSet = Duration(
            hours: currentTimeSet.durationHourTimeSet,
            minutes: currentTimeSet.durationMinutesTimeSet);

        currentListItem.removeAt(event.id);

        if (currentListItem.isNotEmpty) {
          averageDuration = _timeCalculator.calcAverageDurationOfItem(
              duration: durationTimeSet,
              countOfItems: (currentListItem.length));
        }
        currentListItem = _recalculateItemOfSet(
            listOfItems: currentListItem,
            averageDuration: averageDuration,
            startOfTimeSet: start);
        final updatedTimeSet =
        currentTimeSet.copyWith(itemsOfSet: currentListItem);
        _addTimeSetUseCase(updatedTimeSet.title, updatedTimeSet);
        emit(TimeSetState.loadedTimeSet(timeSet: updatedTimeSet));
      }
    });

    on<CleanListItemOfSetEvent>((event, emit) {
      if (state is _LoadedTimeSet) {
        final currentTimeSet = (state as _LoadedTimeSet).timeSet;
        final cleanListItem = <ItemOfSetEntity>[];
        final numberChips = <NumberChipsData>[];
        final updatedTimeSet = currentTimeSet.copyWith(
            itemsOfSet: cleanListItem, numberChips: numberChips);
        _addTimeSetUseCase(updatedTimeSet.title, updatedTimeSet);
        emit(TimeSetState.loadedTimeSet(timeSet: updatedTimeSet));
      }
    });

  }
}
