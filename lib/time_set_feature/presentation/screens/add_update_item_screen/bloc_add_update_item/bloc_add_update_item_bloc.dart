import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:in_time/time_set_feature/domain/entities/item_of_set_entity.dart';
import 'package:in_time/time_set_feature/domain/entities/time_set_entity.dart';

import '../../../../domain/usecases/add_time_set_use_case.dart';

part 'bloc_add_update_item_event.dart';
part 'bloc_add_update_item_state.dart';
part 'bloc_add_update_item_bloc.freezed.dart';

class AddUpdateItemBloc extends Bloc<AddUpdateItemEvent, AddUpdateItemState> {
  final AddTimeSetUseCase _addTimeSetUseCase;

  TimeSetEntity? _currentTimeSet;
  ItemOfSetEntity? _currentItem;
  bool isVerse = false;
  bool isPicture = false;
  bool isTable = false;
  String titleItem = '';

  AddUpdateItemBloc(this._addTimeSetUseCase)
      : super(const AddUpdateItemState.initial()) {
    on<ItemInitialEvent>((event, emit) {
      _currentTimeSet = event.timeSet;
      _currentItem = event.itemOfSet ??
          ItemOfSetEntity(
              durationHourOfItemSet: 1,
              durationMinutesOfItemSet: 0,
              durationSecondsOfItemSet: 0,
              startItemOfSet: DateTime.now());

      emit(ItemInitialState(
        timeSet: event.timeSet,
        itemOfSet: event.itemOfSet,
      ));
    });

    on<ItemChangeIsVerseEvent>((event, emit) {
      isVerse = event.isVerse;
      _currentItem = _currentItem?.copyWith(isVerse: isVerse);
      emit(ItemInitialState(
        timeSet: _currentTimeSet,
        itemOfSet: _currentItem,
      ));
    });

    on<ItemChangeIsPictureEvent>((event, emit) {
      isPicture = event.isPicture;
      _currentItem = _currentItem?.copyWith(isPicture: isPicture);
      emit(ItemInitialState(
        timeSet: _currentTimeSet,
        itemOfSet: _currentItem,
      ));
    });

    on<ItemChangeIsTableEvent>((event, emit) {
      isTable = event.isTable;
      _currentItem = _currentItem?.copyWith(isTable: isTable);
      emit(ItemInitialState(
        timeSet: _currentTimeSet,
        itemOfSet: _currentItem,
      ));
    });

    on<ItemChangeTitleEvent>((event, emit) {
      titleItem = event.text;
      _currentItem = _currentItem?.copyWith(titleItem: titleItem);
      emit(ItemInitialState(
        timeSet: _currentTimeSet,
        itemOfSet: _currentItem,
      ));
    });
  }
}
