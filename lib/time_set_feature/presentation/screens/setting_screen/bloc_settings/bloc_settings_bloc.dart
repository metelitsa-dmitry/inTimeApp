import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:in_time/time_set_feature/domain/usecases/settings_use_cases/get_default_number_items.dart';

import '../../../../../core/constants.dart';
import '../../../../domain/usecases/settings_use_cases/get_default_duration_time_set.dart';
import '../../../../domain/usecases/settings_use_cases/save_default_duration_time_set.dart';
import '../../../../domain/usecases/settings_use_cases/save_default_number_items.dart';

part 'bloc_settings_event.dart';
part 'bloc_settings_state.dart';
part 'bloc_settings_bloc.freezed.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final GetDefaultNumberItemsUseCase _getDefaultNumberItems;
  final SaveDefaultNumberItems _saveDefaultNumberItems;
  final GetDefaultDurationTimeSetUseCase _getDefaultDurationTimeSet;
  final SaveDefaultDurationTimeSetUseCase _saveDefaultDurationTimeSet;

  SettingsBloc(
      this._getDefaultNumberItems,
      this._saveDefaultNumberItems,
      this._getDefaultDurationTimeSet,
      this._saveDefaultDurationTimeSet) : super(const SettingsState.initial()) {

    on<_Initialize>((event, emit) async{
        emit(const SettingsState.loading());
        final defaultNumberItems = await _getDefaultNumberItems() ?? constDefaultNumberItems;
        final defaultDurationTimeSet = await _getDefaultDurationTimeSet();
        final durationSetHour = defaultDurationTimeSet.hour;
        final durationSetMinute = defaultDurationTimeSet.minute;
        emit(SettingsState.loaded(
      defaultNumberItems: defaultNumberItems,
      defaultDurationSetHour: durationSetHour,
      defaultDurationSetMinute: durationSetMinute));
    });

    on<SettingsEvent>((event, emit) async{
      if (state is _Loaded){
        final currentState = state as _Loaded;
        final defaultNumber = currentState.defaultNumberItems;

        if(event is _IncreaseCountEvent){
          final updatedDefaultNumber = defaultNumber + 1;
          await _saveDefaultNumberItems(updatedDefaultNumber);
         emit(currentState.copyWith(defaultNumberItems: updatedDefaultNumber));
        }

        if(event is _DecreaseCountEvent){
          final updatedDefaultNumber = max(1, defaultNumber - 1);
          await _saveDefaultNumberItems(updatedDefaultNumber);
          emit(currentState.copyWith(defaultNumberItems: updatedDefaultNumber));
        }

        if(event is _ChangeDurationEvent){
          final updatedDefaultDuration = event.newDefaultDurationTimeSet;
          final updatedDurationSetHour = updatedDefaultDuration.hour;
          final updatedDurationSetMinute = updatedDefaultDuration.minute;
          await _saveDefaultDurationTimeSet(updatedDefaultDuration);
          emit(currentState.copyWith(
              defaultDurationSetHour: updatedDurationSetHour,
              defaultDurationSetMinute: updatedDurationSetMinute));
        }
      }
    });

  }
}
