import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:in_time/time_set_feature/presentation/screens/timeset_screen/bloc_time_set/bloc_time_set_bloc.dart';

import '../../dialogs_screen/numeral_item_dialog.dart';

class MenuFab extends StatelessWidget {
  const MenuFab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final blocTimeSet = context.read<TimeSetBloc>();
    return SpeedDial(
      animatedIcon: AnimatedIcons.menu_close,
      overlayOpacity: 0.5,
      overlayColor: Colors.grey,
      children: [
        SpeedDialChild(
          label: 'Один',
          onTap: () {
            blocTimeSet.add(const AddItemOfSetEvent());
          },
        ),
        SpeedDialChild(
          label: 'Несколько',
          onTap: () async {
            final count = await showDialogAddNumeralItems(context);
            blocTimeSet.add(AddSeveralItemOfSetEvent(count: count));
          },
        )
      ],
    );
  }
}

Future<int> showDialogAddNumeralItems(BuildContext context) async {
  return await showDialog(
    context: context,
    builder: (context) {
      return const NumeralItemDialog();
    },
  );
}
