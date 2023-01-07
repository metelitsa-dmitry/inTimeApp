import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:in_time/time_set_feature/domain/entities/item_of_set_entity.dart';
import 'package:in_time/time_set_feature/domain/entities/time_set_entity.dart';
import 'package:in_time/time_set_feature/domain/usecases/add_update_item_in_set_use_case.dart';

part 'bloc_add_update_item_event.dart';
part 'bloc_add_update_item_state.dart';
part 'bloc_add_update_item_bloc.freezed.dart';

class AddUpdateItemBloc extends Bloc<AddUpdateItemEvent, AddUpdateItemState> {
 final AddUpdateItemInSetUseCase _addUpdateItemInSet;


  late TimeSetEntity _currentTimeSet;
  ItemOfSetEntity? _currentItem;
  int index = 0;
  bool isVerse = false;
  bool isPicture = false;
  bool isTable = false;
  String titleItem = '';
  List<String> listItemChips = [];

  AddUpdateItemBloc(this._addUpdateItemInSet)
      : super(const AddUpdateItemState.initial()) {
    on<ItemInitialEvent>((event, emit) {
      index = event.index;
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

    on<AddNumberChipsEvent>((event, emit) {
      listItemChips = _currentItem?.chipsItem?.toList() ?? [];
      listItemChips.add(event.numberChip);
      _currentItem = _currentItem?.copyWith(chipsItem: listItemChips);
      emit(ItemInitialState(
        timeSet: _currentTimeSet,
        itemOfSet: _currentItem,
      ));
    });

    on<RemoveNumberChipsEvent>((event, emit) {
      listItemChips = _currentItem?.chipsItem?.toList() ?? [];
      listItemChips.remove(event.numberChip);
      _currentItem = _currentItem?.copyWith(chipsItem: listItemChips);
      emit(ItemInitialState(
        timeSet: _currentTimeSet,
        itemOfSet: _currentItem,
      ));
    });
///TODO saveChangeItem
    on<SaveItemEvent>((event, emit) {
      _currentItem = _currentItem ?? ItemOfSetEntity(
          durationHourOfItemSet: 1,
          durationMinutesOfItemSet: 0,
          durationSecondsOfItemSet: 0,
          startItemOfSet: DateTime.now());

      _addUpdateItemInSet(index, _currentTimeSet, _currentItem!);


    });

  }
}
