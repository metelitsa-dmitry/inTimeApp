
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:in_time/time_set_feature/domain/usecases/add_time_set_use_case.dart';

import '../../../../domain/entities/time_set_entity.dart';
import '../../../../domain/usecases/get_all_time_sets.dart';
import '../../../../domain/usecases/get_time_set_use_case.dart';

part 'bloc_time_set_event.dart';
part 'bloc_time_set_state.dart';
part 'bloc_time_set_bloc.freezed.dart';

class TimeSetBloc extends Bloc<TimeSetEvent, TimeSetState> {
  final GetAllTimeSetsUseCase _getAllTimeSets;
  final GetTimeSetUseCase _getTimeSetUseCase;
  final AddTimeSetUseCase _addTimeSetUseCase;
   //final IdTimeSetParam idTimeSet = const IdTimeSetParam(id: 'New');
   var _currentTimeSet = TimeSetEntity(
       title: 'New',
       startTimeSet: DateTime.now(),
       durationTimeSet: DateTime(0, 0,0, 1, 0),
       dateTimeSaved: DateTime.now());


  TimeSetBloc(this._getAllTimeSets, this._getTimeSetUseCase, this._addTimeSetUseCase)
      : super(const TimeSetState.initial()) {

    on<TimeSetInitialEvent>((event, emit) async{
      emit(const TimeSetState.loading());
       final list = _getAllTimeSets();
       if(list.isEmpty){ _addTimeSetUseCase(_currentTimeSet.title, _currentTimeSet);}
      _currentTimeSet = await _getTimeSetUseCase(_currentTimeSet.title);

       emit(TimeSetState.loadedTimeSet(timeSet: _currentTimeSet));
    }    );

    on<GetTimeSetEvent>((event, emit) async {
      emit(const TimeSetState.loading());
       _currentTimeSet = await _getTimeSetUseCase(event.id);
      emit(TimeSetState.loadedTimeSet(timeSet: _currentTimeSet));
    });

    on<SaveAsTimeSetEvent>((event, emit) {
      _currentTimeSet = _currentTimeSet.copyWith(title: event.id, dateTimeSaved: DateTime.now());
    _addTimeSetUseCase(_currentTimeSet.title, _currentTimeSet);
    emit(TimeSetState.loadedTimeSet(timeSet: _currentTimeSet));
    });

  }
}
