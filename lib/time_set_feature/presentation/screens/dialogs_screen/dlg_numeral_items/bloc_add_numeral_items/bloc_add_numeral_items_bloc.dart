import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bloc_add_numeral_items_event.dart';
part 'bloc_add_numeral_items_state.dart';
part 'bloc_add_numeral_items_bloc.freezed.dart';

class AddNumeralItemsBloc extends Bloc<AddNumeralItemsEvent, AddNumeralItemsState> {
  AddNumeralItemsBloc() : super(const AddNumeralItemsState.initial()) {
    on<AddNumeralItemsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
