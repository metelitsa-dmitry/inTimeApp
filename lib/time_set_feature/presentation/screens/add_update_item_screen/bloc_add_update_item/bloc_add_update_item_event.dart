part of 'bloc_add_update_item_bloc.dart';

@freezed
class AddUpdateItemEvent with _$AddUpdateItemEvent {
  const factory AddUpdateItemEvent.initial({
    ItemOfSetEntity? itemOfSet,
    required TimeSetEntity timeSet,
    // String? titleItem, // text in item
    // List<String>? chipsItem,
    // int? durationHourOfItemSet,
    // int? durationMinutesOfItemSet,
    // int? durationSecondsOfItemSet,
    // DateTime? startItemOfSet,
    // bool? isPicture,
    // bool? isVerse,
    // bool? isTable,
  }) = ItemInitialEvent;
}
