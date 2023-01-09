import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:in_time/time_set_feature/domain/entities/item_of_set_entity.dart';
import 'package:in_time/time_set_feature/domain/entities/time_set_entity.dart';
import '../bloc_add_update/add_update_item_bloc.dart';
part 'item_form_event.dart';
part 'item_form_state.dart';
part 'item_form_bloc.freezed.dart';

class AddUpdateItemFormBloc
    extends Bloc<AddUpdateItemFormEvent, AddUpdateItemFormState> {
  final AddUpdateItemBloc _addUpdateItemBloc;
  AddUpdateItemFormBloc(
      this._addUpdateItemBloc)
      : super(const ItemInitialFormState()) {
    on<ItemInitialFormEvent>((event, emit) {
      emit(ItemInitialFormState(
        timeSet: event.timeSet,
        indexOfItem: event.index,
        titleItem: event.titleItem, // text in item
        chipsItem: event.chipsItem,
        durationHourOfItemSet: event.durationHourOfItemSet,
        durationMinutesOfItemSet: event.durationMinutesOfItemSet,
        durationSecondsOfItemSet: event.durationSecondsOfItemSet,
        startItemOfSet: event.startItemOfSet,
        isPicture: event.isPicture, // need to discuss picture
        isVerse: event.isVerse, // need to read verse
        isTable: event.isTable,
      ));
    });

    on<AddUpdateItemFormEvent>((event, emit) {
      if (event is ItemChangeTitleFormEvent) {
        emit(state.copyWith(titleItem: event.text));
      }
      if (event is ItemChangeIsVerseFormEvent) {
        emit(state.copyWith(isVerse: event.isVerse));
      }
      if (event is ItemChangeIsPictureFormEvent) {
        emit(state.copyWith(isPicture: event.isPicture));
      }
      if (event is ItemChangeIsTableFormEvent) {
        emit(state.copyWith(isTable: event.isTable));
      }
      if (event is AddNumberChipsFormEvent) {
        final chips = state.chipsItem?.toList() ?? [];
        chips.add(event.numberChip);
        emit(state.copyWith(chipsItem: chips));
      }
      if (event is RemoveNumberChipsFormEvent) {
        final chips = state.chipsItem?.toList() ?? [];
        chips.remove(event.numberChip);
        emit(state.copyWith(chipsItem: chips));
      }
    });

    on<SaveItemFormEvent>((event, emit) {
      final savedTimeSet = state.timeSet ?? TimeSetEntity(
          dateTimeSaved: DateTime.now(),
          title: 'New',
          startTimeSet: DateTime.now(),
          durationHourTimeSet: 0,
          durationMinutesTimeSet: 0,
          finishTimeSet: DateTime.now());

      final indexOfItem = state.indexOfItem ?? 0;
      final savedItemOfSet = ItemOfSetEntity(
        chipsItem: state.chipsItem,
        titleItem: state.titleItem,
        isPicture: state.isPicture,
        isTable: state.isTable,
        isVerse: state.isVerse,
        durationHourOfItemSet: state.durationHourOfItemSet ?? 0,
        durationMinutesOfItemSet: state.durationMinutesOfItemSet ?? 0,
        durationSecondsOfItemSet: state.durationSecondsOfItemSet ?? 0,
        startItemOfSet: state.startItemOfSet ?? DateTime.now(),
      );

      _addUpdateItemBloc.add(SaveItemEvent(
          timeSet: savedTimeSet,
          indexOfItem: indexOfItem,
          itemOfSet: savedItemOfSet));
    });
  }
}
