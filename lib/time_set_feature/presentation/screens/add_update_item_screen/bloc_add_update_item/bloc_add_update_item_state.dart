part of 'bloc_add_update_item_bloc.dart';

@freezed
class AddUpdateItemState with _$AddUpdateItemState {
  const factory AddUpdateItemState.initial({
    ItemOfSetEntity? itemOfSet,
    TimeSetEntity? timeSet,
  }) = ItemInitialState;
}
