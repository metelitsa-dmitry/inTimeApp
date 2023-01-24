import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:in_time/core/constants.dart';
import 'package:in_time/time_set_feature/data/models/item_of_set_dto.dart';
import 'package:in_time/time_set_feature/data/models/number_chips_data_dto.dart';
import 'package:in_time/time_set_feature/data/models/text_chips_data_dto.dart';
import 'package:in_time/time_set_feature/data/models/time_set_dto.dart';
import 'package:in_time/time_set_feature/presentation/bloc_theme_changer/bloc_theme_changer_bloc.dart';
import 'package:in_time/time_set_feature/presentation/home_screen.dart';
import 'package:in_time/di/di.dart' as di;
import 'di/di.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await di.init();

  //* hive local database setup
  await Hive.initFlutter();
  Hive.registerAdapter(TimeSetDtoAdapter());
  Hive.registerAdapter(ItemOfSetDtoAdapter());
  Hive.registerAdapter(NumberChipsDataDtoAdapter());
  Hive.registerAdapter(TextChoiceChipDataDtoAdapter());
  await Hive.openBox(constTimeSetsBox);
  await Hive.openBox(constTextChipsBox);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<ThemeChangerBloc>()..add(const ThemeChangerEvent.started()),
      child: const HomeScreen(),
    );
  }
}
