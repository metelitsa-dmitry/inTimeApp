part of 'item_form_bloc.dart';

@freezed
class AddUpdateItemFormState with _$AddUpdateItemFormState {
  const AddUpdateItemFormState._();
  const factory AddUpdateItemFormState.initial({
    TimeSetEntity? timeSet,
    int? indexOfItem,
    String? titleItem, // text in item
    List<String>? chipsItem,
    int? durationHourOfItemSet,
    int? durationMinutesOfItemSet,
    int? durationSecondsOfItemSet,
    DateTime? startItemOfSet,
    bool? isPicture, // need to discuss picture
    bool? isVerse, // need to read verse
    bool? isTable,
  }) = ItemInitialFormState;
}
