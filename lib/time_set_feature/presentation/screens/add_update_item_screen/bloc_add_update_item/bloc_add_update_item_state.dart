part of 'bloc_add_update_item_bloc.dart';

@freezed
class AddUpdateItemState with _$AddUpdateItemState {
  const factory AddUpdateItemState.initial({
    ItemOfSetEntity? itemOfSet,
    TimeSetEntity? timeSet,
    // String? titleItem, // text in item
    // List<String>? chipsItem,
    // int? durationHourOfItemSet,
    // int? durationMinutesOfItemSet,
    // int? durationSecondsOfItemSet,
    // DateTime? startItemOfSet,
    // bool? isPicture,
    // bool? isVerse,
    // bool? isTable,
  }) = ItemInitialState;
}
