import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:in_time/core/constants.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:in_time/time_set_feature/data/models/item_of_set_dto.dart';
import 'package:in_time/time_set_feature/data/models/number_chips_data_dto.dart';
import 'package:in_time/time_set_feature/data/models/text_chips_data_dto.dart';
import 'package:in_time/time_set_feature/data/models/time_set_dto.dart';
import 'package:in_time/time_set_feature/presentation/screens/setting_screen/bloc_settings/bloc_settings_bloc.dart';
import 'package:in_time/time_set_feature/presentation/screens/time_set_screen/bloc_list_time_sets/bloc_list_time_sets_bloc.dart';
import 'package:in_time/time_set_feature/presentation/screens/time_set_screen/bloc_time_set/bloc_time_set_bloc.dart';
import 'package:in_time/time_set_feature/presentation/screens/time_set_screen/bloc_fab_visibility/bloc_fab_visibility_bloc.dart';
import 'package:in_time/time_set_feature/presentation/screens/time_set_screen/time_set_screen.dart';
import 'package:in_time/di/di.dart' as di;
import 'di/di.dart';
import 'l10n/l10n.dart';

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
    return MaterialApp(
      title: 'inTimeApp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      supportedLocales: L10n.all,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      home: MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) =>
                  sl<TimeSetBloc>()..add(const TimeSetInitialEvent())),
          BlocProvider(
              create: (context) => sl<ListTimeSetsBloc>()..add(const Loaded())),
          BlocProvider(create: (context) => sl<FabVisibilityBloc>()),
          BlocProvider(create: (context) => sl<SettingsBloc>()),
        ],
        child: const TimeSetScreen(),
      ),
    );
  }
}
