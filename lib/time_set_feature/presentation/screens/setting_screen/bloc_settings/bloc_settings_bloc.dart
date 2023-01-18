import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:in_time/time_set_feature/domain/usecases/settings_use_cases/get_default_number_items.dart';

import '../../../../../core/constants.dart';

part 'bloc_settings_event.dart';
part 'bloc_settings_state.dart';
part 'bloc_settings_bloc.freezed.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final GetDefaultNumberItemsUseCase _getDefaultNumberItems;

  SettingsBloc(this._getDefaultNumberItems) : super(const SettingsState.initial()) {

    on<_Initialize>((event, emit) async{
        emit(const SettingsState.loading());
        final defaultNumberItems = await _getDefaultNumberItems() ?? constDefaultNumberItems;
        final durationSetHour = 1;
        final durationSetMinute = 0;

        emit(SettingsState.loaded(
      defaultNumberItems: defaultNumberItems,
      defaultDurationSetHour: durationSetHour,
      defaultDurationSetMinute: durationSetMinute));
    });
  }
}
