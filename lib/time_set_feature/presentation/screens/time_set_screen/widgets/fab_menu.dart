import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:in_time/time_set_feature/domain/entities/result_add_dialog.dart';
import 'package:in_time/time_set_feature/presentation/screens/time_set_screen/bloc_time_set/bloc_time_set_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../dialogs_screen/dlg_numeral_items/numeral_item_dialog.dart';

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
          label: AppLocalizations.of(context).fabAddSingleItem,
          onTap: () {
            blocTimeSet.add(const AddItemOfSetEvent());
          },
        ),
        SpeedDialChild(
          label: AppLocalizations.of(context).fabAddMultipleItems,
          onTap: () async {
            final resultAddMultipleItemDialog = await showDialogAddMultipleItems(context);
            if(resultAddMultipleItemDialog.counter != 0){ blocTimeSet.add(AddSeveralItemOfSetEvent(
                count: resultAddMultipleItemDialog.counter,
                startNumber: resultAddMultipleItemDialog.startNumber));}

          },
        )
      ],
    );
  }
}

Future<ResultAddDialog> showDialogAddMultipleItems(BuildContext context) async {
  return await showDialog(
    context: context,
    builder: (context) {
      return const BodyMultipleItemDialog();
    },
  );
}
