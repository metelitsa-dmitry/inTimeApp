import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:in_time/core/constants.dart';
import 'package:in_time/time_set_feature/data/models/item_of_set_dto.dart';
import 'package:in_time/time_set_feature/data/models/time_set_dto.dart';
import 'package:in_time/time_set_feature/presentation/screens/timeset_screen/bloc_list_time_sets/bloc_list_time_sets_bloc.dart';
import 'package:in_time/time_set_feature/presentation/screens/timeset_screen/bloc_time_set/bloc_time_set_bloc.dart';
import 'package:in_time/time_set_feature/presentation/screens/timeset_screen/time_set_screen.dart';
import 'package:in_time/di/di.dart' as di;

import 'di/di.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await di.init();

  //* hive local database setup
  await Hive.initFlutter();
  Hive.registerAdapter(TimeSetDtoAdapter());
  Hive.registerAdapter(ItemOfSetDtoAdapter());
  await Hive.openBox(constTimeSetsBox);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) =>
                  sl<TimeSetBloc>()..add(const TimeSetInitialEvent())),
          BlocProvider(
              create: (context) => sl<ListTimeSetsBloc>()..add(const Loaded())),
        ],
        child: const TimeSetScreen(),
      ),
    );
  }
}
