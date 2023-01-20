
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../domain/entities/result_add_dialog.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'bloc_add_numeral_items/bloc_add_numeral_items_bloc.dart';

class BodyMultipleItemDialog extends StatelessWidget {
  const BodyMultipleItemDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddNumeralItemsBloc, AddNumeralItemsState>(
      builder: (context, state) {
        final bloc = context.watch<AddNumeralItemsBloc>();
        final counter = state.mapOrNull(loaded: (state) => state.numberCount) ?? 20 ;
        final startNumber = state.mapOrNull(loaded: (state) => state.startNumber) ?? 1 ;
        var resultDialog = ResultAddDialog(counter: counter, startNumber: startNumber);
        return AlertDialog(
          title: Text(AppLocalizations.of(context).dlgAddMultipleItemsTitle),
          content: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(AppLocalizations.of(context).dlgAddMultipleItemsHowMany),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.remove),
                        onPressed: () {
                          bloc.add(const AddNumeralItemsEvent.decreaseCount());
                          resultDialog = resultDialog.copyWith(
                              counter: counter);
                        },
                      ),

                      Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(4),
                       // height: 32,
                        width: 63.0,
                        color: Colors.white,
                        child: Text(counter.toString(), style: const TextStyle(fontSize: 20),),
                      ),

                      IconButton(
                        icon: const Icon(Icons.add),
                        onPressed: () {
                          bloc.add(const AddNumeralItemsEvent.increaseCount());
                          resultDialog = resultDialog.copyWith(
                                     counter: counter);
                        },
                      ),
                    ],
                  ),
                ),
                const Divider(
                  height: 16.0,
                ),
                Text(AppLocalizations.of(context)
                    .dlgAddMultipleItemsStartNumber),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.remove),
                        onPressed: () {
                          bloc.add(const AddNumeralItemsEvent.decreaseStartNumber());
                          resultDialog = resultDialog.copyWith(startNumber: startNumber);
                        },
                      ),
                      Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(4),
                        // height: 32,
                        width: 63.0,
                        color: Colors.white,
                        child: Text(startNumber.toString(), style: const TextStyle(fontSize: 20),),
                      ),

                      IconButton(
                        icon: const Icon(Icons.add),
                        onPressed: () {
                          bloc.add(const AddNumeralItemsEvent.increaseStartNumber());
                          resultDialog = resultDialog.copyWith(startNumber: startNumber);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            MaterialButton(
              elevation: 5.0,
              child: Text(AppLocalizations.of(context).ok),
              onPressed: () {
                Navigator.of(context).pop(resultDialog);
              },
            ),
            MaterialButton(
              elevation: 5.0,
              child: Text(AppLocalizations.of(context).cancel),
              onPressed: () {
                resultDialog = ResultAddDialog(counter: 0, startNumber: 0);
                Navigator.of(context).pop(resultDialog);
              },
            ),
          ],
        );
      },
    );
  }
}
