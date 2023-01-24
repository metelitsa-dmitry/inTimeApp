import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:in_time/time_set_feature/presentation/screens/setting_screen/bloc_settings/bloc_settings_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../bloc_theme_changer/bloc_theme_changer_bloc.dart';

part 'widgets/default_number_of_items.dart';
part 'widgets/default_duration_of_set.dart';
part 'widgets/theme_switcher.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {

  @override
  void initState() {
    super.initState();
    context.read<SettingsBloc>().add(const SettingsEvent.initialize());
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<SettingsBloc>().state;
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).settings),
      ),
      body: state.when(
          initial: ()=> const Text('Load the data'),
          loading: ()=> const Center(child: CircularProgressIndicator(),),
          loaded: (defaultNumberItems, durationHour, durationMinute) {
            return SingleChildScrollView(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: const [
                      _ThemeSwitcher(),
                      Divider(thickness: 2),
                      _DefaultNumbersOfItems(),
                      Divider(thickness: 2),
                      // _DefaultDurationOfSet(),
                      // Divider(thickness: 2),
                    ],
                  ),
                ),
              ),
            );
          }),
      );
  }
}


