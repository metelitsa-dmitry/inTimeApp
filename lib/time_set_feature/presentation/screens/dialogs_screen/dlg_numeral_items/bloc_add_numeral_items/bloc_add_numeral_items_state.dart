part of 'bloc_add_numeral_items_bloc.dart';

@freezed
class AddNumeralItemsState with _$AddNumeralItemsState {
  const factory AddNumeralItemsState.initial() = _InitialState;
  const factory AddNumeralItemsState.loading() = _LoadingState;
  const factory AddNumeralItemsState.loaded({
    required int numberCount,
    required int startNumber,
}) = _LoadedState;

}
