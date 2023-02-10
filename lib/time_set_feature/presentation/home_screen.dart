
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:in_time/core/theme.dart';
import 'package:in_time/time_set_feature/presentation/bloc_theme_changer/bloc_theme_changer_bloc.dart';
import 'package:in_time/time_set_feature/presentation/screens/setting_screen/bloc_settings/bloc_settings_bloc.dart';
import 'package:in_time/time_set_feature/presentation/screens/time_set_screen/bloc_fab_visibility/bloc_fab_visibility_bloc.dart';
import 'package:in_time/time_set_feature/presentation/screens/time_set_screen/bloc_list_time_sets/bloc_list_time_sets_bloc.dart';
import 'package:in_time/time_set_feature/presentation/screens/time_set_screen/bloc_time_set/bloc_time_set_bloc.dart';
import 'package:in_time/time_set_feature/presentation/screens/time_set_screen/time_set_screen.dart';
import '../../di/di.dart';
import '../../l10n/l10n.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeChangerBloc, ThemeChangerState>(
  builder: (context, state) {
    final themeChangerState = context.watch<ThemeChangerBloc>().state;
    return MaterialApp(
      title: 'inTimeApp',
      theme: themeChangerState.when(initial: () => CustomTheme.lightTheme, changed: (newTheme) => newTheme),
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
  },
);
  }
}
