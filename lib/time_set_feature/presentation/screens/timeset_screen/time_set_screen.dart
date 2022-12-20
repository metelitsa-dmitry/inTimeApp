import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../dialogs_screen/save_set_dialog.dart';
import 'bloc_time_set/bloc_time_set_bloc.dart';
import 'widgets/drawer_time_set_widget.dart';
import 'widgets/fab_menu.dart';
import 'widgets/list_of_items.dart';


class TimeSetScreen extends StatefulWidget {
  const TimeSetScreen({Key? key}) : super(key: key);

  @override
  State<TimeSetScreen> createState() => _TimeSetScreenState();
}

class _TimeSetScreenState extends State<TimeSetScreen> {


  @override
  Widget build(BuildContext context) {
    final fabVisible = true;
    final state = context.watch<TimeSetBloc>().state;

    return Scaffold(
      appBar: AppBar(
        title:
        state.when(
            initial: () => const Text(''),
            loading: () => const Text('Loading...'),
            loadedTimeSet: (timeSet) => Text(timeSet.title))
            // return const SizedBox.shrink();
          ,
        actions: listOfActionButtons(context),
      ),
      drawer: const DrawerTimeSetScreen(),
      body: const ListOfItems(),
      floatingActionButton: fabVisible ? const MenuFab() : null,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

List<Widget> listOfActionButtons(BuildContext context) {
  final blocTimeSet = context.read<TimeSetBloc>();
  return [
    IconButton(
        onPressed: () async{
          var result = await showDialogSaveTimeSetAs(context);
          blocTimeSet.add(SaveAsTimeSetEvent(id: result));
        },
        icon: const Icon(Icons.save)),
    IconButton(
      onPressed: () {},
      icon: const Icon(Icons.settings),
    ),
    IconButton(
      onPressed: () {
        showDialogDeleteAll(context);
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

Future<void> showDialogDeleteAll(BuildContext context) {
  return showDialog(
    context: context,
    builder: (BuildContext context) =>
        AlertDialog(
          title: Text('Удалить'),
          content: Text('Вы хотите удалить?'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Отмена'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Ok'),
            ),
          ],
        ),
  );
}
