import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:in_time/time_set_feature/domain/entities/item_of_set_entity.dart';
import 'package:in_time/time_set_feature/domain/entities/time_set_entity.dart';

part 'bloc_add_update_item_event.dart';
part 'bloc_add_update_item_state.dart';
part 'bloc_add_update_item_bloc.freezed.dart';

class AddUpdateItemBloc extends Bloc<AddUpdateItemEvent, AddUpdateItemState> {
  AddUpdateItemBloc() : super(const AddUpdateItemState.initial()) {
    on<ItemInitialEvent>((event, emit) {
      emit(ItemInitialState(
        timeSet: event.timeSet,
        itemOfSet: event.itemOfSet,
        // titleItem: event.titleItem, // text in item
        // chipsItem: event.chipsItem,
        // durationHourOfItemSet: event.durationHourOfItemSet,
        // durationMinutesOfItemSet: event.durationMinutesOfItemSet,
        // durationSecondsOfItemSet: event.durationSecondsOfItemSet,
        // startItemOfSet: event.startItemOfSet,
        // isPicture: event.isPicture,
        // isVerse: event.isVerse,
        // isTable: event.isTable,
      ));
    });

  }
}
