
import 'package:get_it/get_it.dart';
import 'package:in_time/time_set_feature/domain/usecases/get_all_time_sets.dart';
import 'package:in_time/time_set_feature/domain/usecases/get_time_set_use_case.dart';
import 'package:in_time/time_set_feature/presentation/screens/timeset_screen/bloc_time_set/bloc_time_set_bloc.dart';
import 'package:in_time/time_set_feature/presentation/screens/timeset_screen/bloc_fab_visibility/bloc_fab_visibility_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../time_set_feature/data/data_sources/data_base_hive.dart';
import '../time_set_feature/data/data_sources/session_local_repository.dart';
import '../time_set_feature/data/repositories/time_set_repository.dart';
import '../time_set_feature/domain/data_source/data_base_domain.dart';
import '../time_set_feature/domain/repositories/session_repository.dart';
import '../time_set_feature/domain/repositories/time_set_repository.dart';
import '../time_set_feature/domain/usecases/add_time_set_use_case.dart';
import '../time_set_feature/domain/usecases/add_update_item_in_set_use_case.dart';
import '../time_set_feature/domain/usecases/delete_time_set_use_case.dart';
import '../time_set_feature/domain/usecases/get_last_session_use_case.dart';
import '../time_set_feature/domain/usecases/recalculate_item_of_set_use_case.dart';
import '../time_set_feature/domain/usecases/save_last_session_use_case.dart';
import '../time_set_feature/presentation/screens/add_update_item_screen/bloc_add_update_item/bloc_add_update_item_bloc.dart';
import '../time_set_feature/presentation/screens/timeset_screen/bloc_list_time_sets/bloc_list_time_sets_bloc.dart';

final sl = GetIt.instance;

init() async {
  ///Bloc
  sl.registerFactory(() => TimeSetBloc(sl(), sl(), sl(), sl(), sl(), sl()));
  sl.registerFactory(() => ListTimeSetsBloc(sl(), sl()));
  sl.registerFactory(() => FabVisibilityBloc());
  sl.registerFactory(() => AddUpdateItemBloc(sl()));

  ///UseCases
  sl.registerLazySingleton(() => GetAllTimeSetsUseCase(sl()));
  sl.registerLazySingleton(() => GetTimeSetUseCase(sl(), sl()));
  sl.registerLazySingleton(() => AddTimeSetUseCase(sl()));
  sl.registerLazySingleton(() => DeleteTimeSetUseCase(sl()));
  sl.registerLazySingleton(() => RecalculateItemOfSet());
  sl.registerLazySingleton(() => GetLastSessionUseCase(sl()));
  sl.registerLazySingleton(() => AddUpdateItemInSetUseCase(sl()));
  sl.registerLazySingleton(() => SaveLastSessionUseCase(sl()));

  ///Repository
  sl.registerLazySingleton<TimeSetRepository>(
      () => TimeSetRepositoryImpl(sl()));
  sl.registerLazySingleton<SessionRepository>(
          () => SessionSessionRepositoryImpl(sharedPreferences: sl()));
  ///Core
  sl.registerLazySingleton<DataBase>(() => DataBaseTimeSetImpl());

  ///External
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);

}
