part of 'add_update_item_bloc.dart';

@freezed
class AddUpdateItemState with _$AddUpdateItemState {
  const factory AddUpdateItemState.initial() = _Initial;
  const factory AddUpdateItemState.saved() = _Saved;
  const factory AddUpdateItemState.saving() = _Saving;
  const factory AddUpdateItemState.failed({String? message}) = _Failed;
}
