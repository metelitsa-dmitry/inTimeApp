import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../../domain/entities/result_add_dialog.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BodyMultipleItemDialog extends StatefulWidget {
  const BodyMultipleItemDialog({Key? key}) : super(key: key);

  @override
  State<BodyMultipleItemDialog> createState() => _BodyMultipleItemDialogState();
}

class _BodyMultipleItemDialogState extends State<BodyMultipleItemDialog> {
  final _controllerCounter = TextEditingController();
  final _controllerStartNumber = TextEditingController();
  final defaultNumberOfItem = 10;
  var resultDialog = ResultAddDialog(counter: 20, startNumber: 1);

  @override
  void dispose() {
    _controllerCounter.dispose();
    _controllerStartNumber.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _controllerCounter.text = defaultNumberOfItem.toString();
    _controllerStartNumber.text = resultDialog.startNumber.toString();

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
                      setState(() {
                       resultDialog = resultDialog.copyWith(counter: max(1, resultDialog.counter -1));
                      });
                    },
                  ),
                  SizedBox(
                    width: 63.0,
                    child: TextField(
                      controller: _controllerCounter,
                      readOnly: true,
                      // keyboardType: TextInputType.number,
                      // maxLines: 1,
                      //autofocus: true,
                      //inputFormatters: [MyInputTextFormatter()],
                      //scrollPadding: EdgeInsets.all(8),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        isCollapsed: true,
                        contentPadding: const EdgeInsets.all(8),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      // onChanged: (value) {
                      //   _modelRead.setCounter(value);
                      //   },
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.add),
                    onPressed: () {
                      setState(() {
                        resultDialog = resultDialog.copyWith(counter: resultDialog.counter +1);
                      });
                    },
                  ),
                ],
              ),
            ),
            const Divider(
              height: 16.0,
            ),
            Text(AppLocalizations.of(context).dlgAddMultipleItemsStartNumber),
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
                      setState(() {
                        resultDialog = resultDialog.copyWith(
                            startNumber: max(1, resultDialog.startNumber - 1));
                      });
                    },
                  ),
                  SizedBox(
                    width: 63.0,
                    child: TextField(
                      controller: _controllerStartNumber,
                      readOnly: true,
                      // keyboardType: TextInputType.number,
                      // maxLines: 1,
                      //autofocus: true,
                      //inputFormatters: [MyInputTextFormatter()],
                      //scrollPadding: EdgeInsets.all(8),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        isCollapsed: true,
                        contentPadding: const EdgeInsets.all(8),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      onChanged: (value) {
                        setState(() {

                        });
                      },
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.add),
                    onPressed: () {
                      setState(() {
                        resultDialog =
                            resultDialog.copyWith(startNumber: resultDialog.startNumber +1);
                      });
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
  }
}



class MyInputTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    var digitsOnly = newValue.text.replaceAll(RegExp(r'[^/d]+'), '');
    // TODO: implement formatEditUpdate
    return TextEditingValue(
      text: digitsOnly,
      selection: TextSelection.collapsed(offset: digitsOnly.length),
    );
  }
}
