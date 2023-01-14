import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:in_time/time_set_feature/domain/entities/item_of_set_entity.dart';
import 'package:in_time/time_set_feature/domain/entities/text_chips_data.dart';
import 'package:in_time/time_set_feature/domain/entities/time_set_entity.dart';
import '../../../../domain/usecases/text_chips_use_cases/add_text_chips_use_case.dart';
import '../../../../domain/usecases/text_chips_use_cases/delete_text_chip_use_case.dart';
import '../../../../domain/usecases/text_chips_use_cases/get_text-chips_use_case.dart';
import '../bloc_add_update/add_update_item_bloc.dart';
part 'item_form_event.dart';
part 'item_form_state.dart';
part 'item_form_bloc.freezed.dart';

class AddUpdateItemFormBloc
    extends Bloc<AddUpdateItemFormEvent, AddUpdateItemFormState> {

  final AddUpdateItemBloc _addUpdateItemBloc;
  final AddTextChipsUseCase _addTextChipsUseCase;
  final GetAllTextChipsUseCase _getAllTextChipsUseCase;
  final DeleteTextChipUseCase _deleteTextChipUseCase;

  AddUpdateItemFormBloc(
      this._addUpdateItemBloc, this._getAllTextChipsUseCase, this._addTextChipsUseCase, this._deleteTextChipUseCase)
      : super(const ItemInitialFormState()) {

    on<ItemInitialFormEvent>((event, emit) {

      final textChipsData = _getAllTextChipsUseCase();

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
        listTextChipsData: textChipsData,
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
      if (event is AddTextChipsDataFormEvent) {
        final label = event.labelTextChip;
        final addedTextChip = TextChoiceChipData(label: label);
       _addTextChipsUseCase(id: addedTextChip.label, textChip: addedTextChip);
        emit(state.copyWith(listTextChipsData: _getAllTextChipsUseCase()));
      }

      if (event is SelectTextChipsFormEvent) {
        final currentChipsItem = state.chipsItem?.toList() ?? [];
        final addingChips = event.textChip.label;
        currentChipsItem.add(addingChips);
        final updatedChipsItem = currentChipsItem.toList() ;

        emit(state.copyWith(chipsItem: updatedChipsItem));
      }

      if (event is NotSelectTextChipsFormEvent) {
        final currentChipsItem = state.chipsItem?.toList() ?? [];
        final removingChips = event.textChip.label;
        currentChipsItem.removeWhere((chips) => removingChips == chips);
        final updatedChipsItem = currentChipsItem.toList() ;

        emit(state.copyWith(chipsItem: updatedChipsItem));
      }

      if (event is RemoveTextChipsFormEvent) {
        final textChip = event.textChip;
        _deleteTextChipUseCase(textChip.label);
        emit(state.copyWith(listTextChipsData: _getAllTextChipsUseCase()));
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
