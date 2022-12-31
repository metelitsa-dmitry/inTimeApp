part of 'bloc_add_update_item_bloc.dart';

@freezed
class AddUpdateItemEvent with _$AddUpdateItemEvent {
  const factory AddUpdateItemEvent.initial({
    ItemOfSetEntity? itemOfSet,
    required TimeSetEntity timeSet,
  }) = ItemInitialEvent;

  const factory AddUpdateItemEvent.changeIsTable(bool isTable) = ItemChangeIsTableEvent;
  const factory AddUpdateItemEvent.changeIsVerse(bool isVerse) = ItemChangeIsVerseEvent;
  const factory AddUpdateItemEvent.changeIsPicture(bool isPicture) = ItemChangeIsPictureEvent;
  const factory AddUpdateItemEvent.changeTitle(String text) = ItemChangeTitleEvent;

}
