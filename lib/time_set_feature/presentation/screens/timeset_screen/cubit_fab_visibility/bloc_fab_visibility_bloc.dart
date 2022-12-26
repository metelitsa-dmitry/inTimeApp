

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'bloc_fab_visibility_event.dart';


class FabVisibilityBloc extends Bloc<FabVisibilityEvent, bool> {


  FabVisibilityBloc() : super(true) {
    on<FabVisible>((event, emit)  =>  emit(true));

    on<FabInVisible>((event, emit) => emit(false));

  }
}
