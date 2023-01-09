part of 'add_update_item_bloc.dart';

@freezed
class AddUpdateItemEvent with _$AddUpdateItemEvent {
  const factory AddUpdateItemEvent.saveItem(
      {required TimeSetEntity timeSet,
      required ItemOfSetEntity itemOfSet,
      required int indexOfItem}) = SaveItemEvent;

}
