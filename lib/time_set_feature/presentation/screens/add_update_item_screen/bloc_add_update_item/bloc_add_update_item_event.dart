part of 'bloc_add_update_item_bloc.dart';

@freezed
class AddUpdateItemEvent with _$AddUpdateItemEvent {
  const factory AddUpdateItemEvent.initial({
    required int index,
    ItemOfSetEntity? itemOfSet,
    required TimeSetEntity timeSet,
  }) = ItemInitialEvent;

  const factory AddUpdateItemEvent.changeIsTable(bool isTable) = ItemChangeIsTableEvent;
  const factory AddUpdateItemEvent.changeIsVerse(bool isVerse) = ItemChangeIsVerseEvent;
  const factory AddUpdateItemEvent.changeIsPicture(bool isPicture) = ItemChangeIsPictureEvent;
  const factory AddUpdateItemEvent.changeTitle(String text) = ItemChangeTitleEvent;
  const factory AddUpdateItemEvent.addNumberChips(String numberChip) = AddNumberChipsEvent;
  const factory AddUpdateItemEvent.removeNumberChips(String numberChip) = RemoveNumberChipsEvent;
  const factory AddUpdateItemEvent.saveItem() = SaveItemEvent;

}
