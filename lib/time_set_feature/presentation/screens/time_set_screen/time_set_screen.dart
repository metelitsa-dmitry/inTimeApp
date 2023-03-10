import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:in_time/time_set_feature/presentation/screens/setting_screen/bloc_settings/bloc_settings_bloc.dart';
import 'package:in_time/time_set_feature/presentation/screens/setting_screen/setting_screen.dart';
import 'package:in_time/time_set_feature/presentation/screens/time_set_screen/bloc_fab_visibility/bloc_fab_visibility_bloc.dart';
import 'package:in_time/time_set_feature/presentation/screens/time_set_screen/widgets/time_set_body.dart';
import '../dialogs_screen/save_set_dialog.dart';
import 'bloc_time_set/bloc_time_set_bloc.dart';
import 'widgets/drawer_time_set_widget.dart';
import 'widgets/fab_menu.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TimeSetScreen extends StatefulWidget {
  const TimeSetScreen({Key? key}) : super(key: key);

  @override
  State<TimeSetScreen> createState() => _TimeSetScreenState();
}

class _TimeSetScreenState extends State<TimeSetScreen> {
  @override
  Widget build(BuildContext context) {
    final fabVisible = context.watch<FabVisibilityBloc>().state;
    final state = context.watch<TimeSetBloc>().state;

    return Scaffold(
      appBar: AppBar(
        title: state.when(
            initial: () => const Text(''),
            loading: () => Text(AppLocalizations.of(context).loading),
            loadedTimeSet: (timeSet) => Text(timeSet.title)),
        actions: _listOfActionButtons(context),
      ),
      drawer: const DrawerTimeSetScreen(),
      body: state.when(
                  initial: () => const Text(''),
                  loading: () => const Center(
                      child: CircularProgressIndicator(),
                      ),
                  loadedTimeSet: (timeSet) => TimeSetBody(
                  timeSet: timeSet,
                )),
      floatingActionButton: fabVisible ? const MenuFab() : null,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

List<Widget> _listOfActionButtons(BuildContext context) {
  final blocTimeSet = context.read<TimeSetBloc>();
  final blocSettings = context.read<SettingsBloc>();
  return [
    IconButton(
        onPressed: () async {
          var result = await showDialogSaveTimeSetAs(context);
          blocTimeSet.add(SaveAsTimeSetEvent(id: result));
        },
        icon: const Icon(Icons.save)),
    IconButton(
      onPressed: () {

        Navigator.push(context,
            MaterialPageRoute(builder:
                (_) => BlocProvider.value(
                    value: blocSettings,
                child: const SettingScreen())));
      },
      icon: const Icon(Icons.settings),
    ),
    IconButton(
      onPressed: () async {
        final isDelete = await showDialogCleanListItems(context) ?? false;
        if (isDelete) {
          blocTimeSet.add(const CleanListItemOfSetEvent());
        }
        ;
      },
      icon: const Icon(Icons.delete),
    ),
  ];
}

Future<String> showDialogSaveTimeSetAs(BuildContext context) async {
  return await showDialog(
    context: context,
    builder: (context) => const DialogSaveTimeSetAs(),
  );
}

Future<bool?> showDialogCleanListItems(BuildContext context) {
  return showDialog(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      title: Text(AppLocalizations.of(context).showDialogCleanListItemsTitle),
      content: Text(AppLocalizations.of(context).showDialogCleanListItemsText),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text(AppLocalizations.of(context).cancel),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(true);
          },
          child: Text(AppLocalizations.of(context).ok),
        ),
      ],
    ),
  );
}
