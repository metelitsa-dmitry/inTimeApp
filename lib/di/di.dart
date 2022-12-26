import 'package:get_it/get_it.dart';
import 'package:in_time/time_set_feature/domain/usecases/get_all_time_sets.dart';
import 'package:in_time/time_set_feature/domain/usecases/get_time_set_use_case.dart';
import 'package:in_time/time_set_feature/presentation/screens/timeset_screen/bloc_time_set/bloc_time_set_bloc.dart';



import '../time_set_feature/data/data_sources/data_base_hive.dart';
import '../time_set_feature/data/repositories/time_set_repository.dart';
import '../time_set_feature/domain/data_source/data_base_domain.dart';
import '../time_set_feature/domain/repositories/time_set_repository.dart';
import '../time_set_feature/domain/usecases/add_time_set_use_case.dart';
import '../time_set_feature/domain/usecases/delete_time_set_use_case.dart';
import '../time_set_feature/domain/usecases/recalculate_item_of_set_use_case.dart';
import '../time_set_feature/presentation/screens/timeset_screen/bloc_list_time_sets/bloc_list_time_sets_bloc.dart';


final sl = GetIt.instance;

init() async {
  ///Bloc
  sl.registerFactory(() => TimeSetBloc(sl(), sl(), sl(), sl()));
  sl.registerFactory(() => ListTimeSetsBloc(sl(), sl()));

  ///UseCases
  sl.registerLazySingleton(() => GetAllTimeSetsUseCase(sl()));
  sl.registerLazySingleton(() => GetTimeSetUseCase(sl()));
  sl.registerLazySingleton(() => AddTimeSetUseCase(sl()));
  sl.registerLazySingleton(() => DeleteTimeSetUseCase(sl()));
  sl.registerLazySingleton(() => RecalculateItemOfSet());


  ///Repository
  sl.registerLazySingleton<TimeSetRepository>(
      () => TimeSetRepositoryImpl(sl()));

  ///Core
  sl.registerLazySingleton<DataBase>(() => DataBaseTimeSetImpl());

  ///External
  // final sharedPreferences = await SharedPreferences.getInstance();
  // sl.registerLazySingleton(() => sharedPreferences);

}
