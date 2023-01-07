import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/entities/time_set_entity.dart';
import '../../../../domain/usecases/delete_time_set_use_case.dart';
import '../../../../domain/usecases/get_all_time_sets.dart';

part 'bloc_list_time_sets_event.dart';
part 'bloc_list_time_sets_state.dart';
part 'bloc_list_time_sets_bloc.freezed.dart';

class ListTimeSetsBloc extends Bloc<ListTimeSetsEvent, ListTimeSetsState> {
  final GetAllTimeSetsUseCase _getAllTimeSets;
  final DeleteTimeSetUseCase _deleteTimeSetUseCase;
  List<TimeSetEntity> currentListTimeSets = const[];

  ListTimeSetsBloc(this._getAllTimeSets, this._deleteTimeSetUseCase) : super(const ListTimeSetsState.initial()) {
    on<Loaded>((event, emit) {
      emit(const ListTimeSetsState.loading());
      currentListTimeSets = _getAllTimeSets();
     emit(ListTimeSetsState.loaded(listTimeSets: currentListTimeSets));
    });

    on<Delete>((event, emit) {
      _deleteTimeSetUseCase(event.id);
      emit(ListTimeSetsState.loaded(listTimeSets: currentListTimeSets));
    });
  }
}
