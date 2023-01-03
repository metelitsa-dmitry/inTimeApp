import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:in_time/time_set_feature/presentation/screens/timeset_screen/bloc_fab_visibility/bloc_fab_visibility_bloc.dart';
import 'package:in_time/time_set_feature/presentation/screens/timeset_screen/widgets/time_set_body.dart';
import '../../../../di/di.dart';
import '../../../domain/data_source/data_base_domain.dart';
import '../dialogs_screen/save_set_dialog.dart';
import 'bloc_time_set/bloc_time_set_bloc.dart';
import 'widgets/drawer_time_set_widget.dart';
import 'widgets/fab_menu.dart';

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
            loading: () => const Text('Loading...'),
            loadedTimeSet: (timeSet) => Text(timeSet.title))
        // return const SizedBox.shrink();
        ,
        actions: listOfActionButtons(context),
      ),
      drawer: const DrawerTimeSetScreen(),
      body: ValueListenableBuilder(
        valueListenable: sl<DataBase>().box.listenable(),
        builder: (context, _, child) {
          context.read<TimeSetBloc>().add(const TimeSetInitialEvent());
          return child!;
        },
        child: BlocBuilder<TimeSetBloc, TimeSetState>(builder: (context, state){
          return state.when(
              initial: () => const Text(''),
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
              loadedTimeSet: (timeSet) => TimeSetBody(
                timeSet: timeSet,
              ));
        }),


      ),
      floatingActionButton: fabVisible ? const MenuFab() : null,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

List<Widget> listOfActionButtons(BuildContext context) {
  final blocTimeSet = context.read<TimeSetBloc>();
  return [
    IconButton(
        onPressed: () async {
          var result = await showDialogSaveTimeSetAs(context);
          blocTimeSet.add(SaveAsTimeSetEvent(id: result));
        },
        icon: const Icon(Icons.save)),
    IconButton(
      onPressed: () {},
      icon: const Icon(Icons.settings),
    ),
    IconButton(
      onPressed: () async {
        final isDelete = await showDialogDeleteAll(context) ?? false;
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

Future<bool?> showDialogDeleteAll(BuildContext context) {
  return showDialog(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      title: const Text('Удалить'),
      content: const Text('Вы хотите удалить?'),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Отмена'),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(true);
          },
          child: const Text('Ok'),
        ),
      ],
    ),
  );
}
