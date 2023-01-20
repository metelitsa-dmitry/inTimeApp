import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../domain/usecases/settings_use_cases/get_default_number_items.dart';

part 'bloc_add_numeral_items_event.dart';
part 'bloc_add_numeral_items_state.dart';
part 'bloc_add_numeral_items_bloc.freezed.dart';

class AddNumeralItemsBloc extends Bloc<AddNumeralItemsEvent, AddNumeralItemsState> {
  final GetDefaultNumberItemsUseCase _getDefaultNumberItems;


  AddNumeralItemsBloc(this._getDefaultNumberItems) : super(const AddNumeralItemsState.initial()) {

    on<_StartedEvent>((event, emit) async{
        // emit(const AddNumeralItemsState.loading());
        final defaultNumber = await _getDefaultNumberItems() ?? 20;
        emit(AddNumeralItemsState.loaded(numberCount: defaultNumber, startNumber: 1));
    });

    on<AddNumeralItemsEvent>((event, emit) {
      if (state is _LoadedState){
        final currentState = (state as _LoadedState);
        final count = currentState.numberCount;
        final startNumber = currentState.startNumber;

        // to change numberCount
        if(event is _IncreaseCountEvent ){
          emit(currentState.copyWith(numberCount: count + 1));
        }
        if(event is _DecreaseCountEvent ){
          emit(currentState.copyWith(numberCount: max(1, count - 1)));
        }

        //to chang startNumber
        if(event is _IncreaseStartNumberEvent ){
          emit(currentState.copyWith(startNumber: startNumber + 1));
        }
        if(event is _DecreaseStartNumberEvent ){
          emit(currentState.copyWith(startNumber: max(1, startNumber - 1)));
        }
      }

    });

  }
}
