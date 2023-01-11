import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../domain/entities/item_of_set_entity.dart';
import '../../../../domain/entities/time_set_entity.dart';
import '../../../../domain/usecases/add_update_item_in_set_use_case.dart';

part 'add_update_item_event.dart';
part 'add_update_item_state.dart';
part 'add_update_item_bloc.freezed.dart';

class AddUpdateItemBloc extends Bloc<AddUpdateItemEvent, AddUpdateItemState> {
  final AddUpdateItemInSetUseCase _addUpdateItemInSet;

  AddUpdateItemBloc(this._addUpdateItemInSet)
      : super(const AddUpdateItemState.initial()) {
    on<SaveItemEvent>((event, emit) async {
      emit(const _Saving());

      final failureOrSuccess = await _addUpdateItemInSet(
          timeSetEntity: event.timeSet,
          itemOfSetEntity: event.itemOfSet,
          indexOfItem: event.indexOfItem);

      failureOrSuccess.fold((failure) {
        emit(_Failed(message: failure.errorMessage));
      }, (_) {
        emit(const _Saved());
      });
    });
  }
}
