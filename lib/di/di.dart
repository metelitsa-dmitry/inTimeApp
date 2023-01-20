
import 'package:get_it/get_it.dart';
import 'package:in_time/time_set_feature/data/models/text_chips_data_dto.dart';
import 'package:in_time/time_set_feature/data/models/time_set_dto.dart';
import 'package:in_time/time_set_feature/data/repositories/local_int_data_source_repository.dart';
import 'package:in_time/time_set_feature/data/data_sources/local_value_data_source.dart';
import 'package:in_time/time_set_feature/domain/usecases/get_all_time_sets.dart';
import 'package:in_time/time_set_feature/domain/usecases/get_time_set_use_case.dart';
import 'package:in_time/time_set_feature/domain/usecases/text_chips_use_cases/add_text_chips_use_case.dart';
import 'package:in_time/time_set_feature/domain/usecases/text_chips_use_cases/delete_text_chip_use_case.dart';
import 'package:in_time/time_set_feature/domain/usecases/text_chips_use_cases/get_text-chips_use_case.dart';
import 'package:in_time/time_set_feature/presentation/screens/time_set_screen/bloc_time_set/bloc_time_set_bloc.dart';
import 'package:in_time/time_set_feature/presentation/screens/time_set_screen/bloc_fab_visibility/bloc_fab_visibility_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../time_set_feature/data/data_sources/data_base_hive.dart';
import '../time_set_feature/data/data_sources/text_chips_data_base_hive.dart';
import '../time_set_feature/data/repositories/local_string_data_source_repository.dart';
import '../time_set_feature/data/repositories/text_chips_repository.dart';
import '../time_set_feature/data/repositories/time_set_repository.dart';
import '../time_set_feature/domain/data_source/data_base_domain.dart';
import '../time_set_feature/domain/repositories/time_set_repository.dart';
import '../time_set_feature/domain/usecases/add_time_set_use_case.dart';
import '../time_set_feature/domain/usecases/add_update_item_in_set_use_case.dart';
import '../time_set_feature/domain/usecases/delete_time_set_use_case.dart';
import '../time_set_feature/domain/usecases/get_last_session_use_case.dart';
import '../time_set_feature/domain/usecases/recalculate_item_of_set_use_case.dart';
import '../time_set_feature/domain/usecases/save_last_session_use_case.dart';
import '../time_set_feature/domain/usecases/settings_use_cases/get_default_duration_time_set.dart';
import '../time_set_feature/domain/usecases/settings_use_cases/get_default_number_items.dart';
import '../time_set_feature/domain/usecases/settings_use_cases/save_default_duration_time_set.dart';
import '../time_set_feature/domain/usecases/settings_use_cases/save_default_number_items.dart';
import '../time_set_feature/presentation/screens/add_update_item_screen/bloc_add_update/add_update_item_bloc.dart';
import '../time_set_feature/presentation/screens/add_update_item_screen/bloc_item_form/item_form_bloc.dart';
import '../time_set_feature/presentation/screens/dialogs_screen/dlg_numeral_items/bloc_add_numeral_items/bloc_add_numeral_items_bloc.dart';
import '../time_set_feature/presentation/screens/setting_screen/bloc_settings/bloc_settings_bloc.dart';
import '../time_set_feature/presentation/screens/time_set_screen/bloc_list_time_sets/bloc_list_time_sets_bloc.dart';

final sl = GetIt.instance;

init() async {
  ///Bloc
  sl.registerFactory(() => TimeSetBloc(sl(), sl(), sl(), sl(), sl(), sl(), sl(), sl()));
  sl.registerFactory(() => ListTimeSetsBloc(sl(), sl()));
  sl.registerFactory(() => FabVisibilityBloc());
  sl.registerFactory(() => AddUpdateItemBloc(sl()));
  sl.registerFactory(() => AddUpdateItemFormBloc(sl(), sl(), sl(), sl()));
  sl.registerFactory(() => SettingsBloc(sl(), sl(), sl(), sl()));
  sl.registerFactory(() => AddNumeralItemsBloc(sl()));

  ///UseCases
  sl.registerLazySingleton(() => GetAllTimeSetsUseCase(sl()));
  sl.registerLazySingleton(() => GetTimeSetUseCase(sl(), sl()));
  sl.registerLazySingleton(() => AddTimeSetUseCase(sl()));
  sl.registerLazySingleton(() => DeleteTimeSetUseCase(sl()));
  sl.registerLazySingleton(() => RecalculateItemOfSet());
  sl.registerLazySingleton(() => GetLastSessionUseCase(sl()));
  sl.registerLazySingleton(() => AddUpdateItemInSetUseCase(sl()));
  sl.registerLazySingleton(() => SaveLastSessionUseCase(sl()));
  sl.registerLazySingleton(() => GetAllTextChipsUseCase(sl()));
  sl.registerLazySingleton(() => AddTextChipsUseCase(sl()));
  sl.registerLazySingleton(() => DeleteTextChipUseCase(sl()));
  sl.registerLazySingleton(() => GetDefaultNumberItemsUseCase(sl()));
  sl.registerLazySingleton(() => SaveDefaultNumberItems(sl()));
  sl.registerLazySingleton(() => GetDefaultDurationTimeSetUseCase(sl()));
  sl.registerLazySingleton(() => SaveDefaultDurationTimeSetUseCase(sl()));

  ///Repository
  sl.registerLazySingleton<TimeSetRepository<TimeSetDto>>(
      () => TimeSetRepositoryImpl(sl()));
  sl.registerLazySingleton<TimeSetRepository<TextChoiceChipDataDto>>(
          () => TextChipsRepositoryImpl(sl()));
   sl.registerLazySingleton<LocalValueDataSource<String>>(
           () => LocalStringDaraSourceRepositoryImpl(sl()));
  sl.registerLazySingleton<LocalValueDataSource<int>>(
          () => LocalIntDaraSourceRepositoryImpl(sl()));


  ///Core
  sl.registerLazySingleton<DataBase<TimeSetDto>>(() => DataBaseTimeSetImpl());
  sl.registerLazySingleton<DataBase<TextChoiceChipDataDto>>(() => DataBaseTextChipsImpl());


  ///External
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);

}
