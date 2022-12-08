import 'package:flutter/material.dart';

import '../dialogs_screen/save_set_dialog.dart';
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
    final _titleTimeSet = 'New';

    return Scaffold(
      appBar: AppBar(
        title: Text(_titleTimeSet),
        actions: ListOfActionButtons(context),
      ),
      drawer: const DrawerTimeSetScreen(),
      body: ListOfItems(),
      floatingActionButton: fabVisible ? const MenuFab() : null,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

List<Widget> ListOfActionButtons(BuildContext context){
  return [
    IconButton(
        onPressed: () {
          showDialogSaveTimeSetAs(context);
        },
        icon: const Icon(Icons.save)),
    IconButton(
      onPressed: () { },
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


Future<void> showDialogSaveTimeSetAs(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) => const DialogSaveTimeSetAs(),
  );
}

Future<void> showDialogDeleteAll(BuildContext context) {
  return showDialog(
    context: context,
    builder: (BuildContext context) => AlertDialog(
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
