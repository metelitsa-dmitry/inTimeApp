part of 'bloc_time_set_bloc.dart';

@freezed
class TimeSetEvent with _$TimeSetEvent {
  const factory TimeSetEvent.initial() = TimeSetInitialEvent;
  const factory TimeSetEvent.getTimeSet({required String id}) = GetTimeSetEvent;
  const factory TimeSetEvent.saveAsTimeSet({required String id}) = SaveAsTimeSetEvent;
  const factory TimeSetEvent.changeStartTimeSet({required DateTime newStatTime}) = ChangeStartTimeSetEvent;
  const factory TimeSetEvent.changeDurationTimeSet({required DateTime newDuration}) = ChangeDurationTimeSetEvent;
  const factory TimeSetEvent.changeFinishTimeSet({required DateTime newFinishTime}) = ChangeFinishTimeSetEvent;
  const factory TimeSetEvent.addItemOfSet() = AddItemOfSetEvent;
  const factory TimeSetEvent.insertItemInSet({required int index}) = InsertItemInSetEvent;
  const factory TimeSetEvent.addSeveralItemOfSet({required int count, required int startNumber}) = AddSeveralItemOfSetEvent;
  const factory TimeSetEvent.removeItemOfSet({required int id}) = RemoveItemOfSetEvent;
  const factory TimeSetEvent.cleanListItemOfSet() = CleanListItemOfSetEvent;

}
