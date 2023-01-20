part of 'bloc_add_numeral_items_bloc.dart';

@freezed
class AddNumeralItemsEvent with _$AddNumeralItemsEvent {
  const factory AddNumeralItemsEvent.started() = _StartedEvent;
  const factory AddNumeralItemsEvent.increaseCount() = _IncreaseCountEvent;
  const factory AddNumeralItemsEvent.decreaseCount() = _DecreaseCountEvent;
  const factory AddNumeralItemsEvent.increaseStartNumber() = _IncreaseStartNumberEvent;
  const factory AddNumeralItemsEvent.decreaseStartNumber() = _DecreaseStartNumberEvent;

}
