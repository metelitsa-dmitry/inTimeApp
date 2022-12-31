import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../domain/entities/result_add_dialog.dart';

class NumeralItemDialog extends StatefulWidget {
  const NumeralItemDialog({Key? key}) : super(key: key);
  @override
  State<NumeralItemDialog> createState() => _NumeralItemDialogState();
}

class _NumeralItemDialogState extends State<NumeralItemDialog> {
  final _controllerCounter = TextEditingController();
  final _controllerStartNumber = TextEditingController();
  var resultDialog = ResultAddDialog(counter: 20, startNumber: 1);

  @override
  void dispose() {
    _controllerCounter.dispose();
    _controllerStartNumber.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _controllerCounter.text = resultDialog.counter.toString();
    _controllerStartNumber.text = resultDialog.startNumber.toString();

    return AlertDialog(
      // title: const Text('Добавить несколько'),
      content: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Сколько пунктов добавить?'),
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
            Text('Начальный номер пункта'),
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
          child: Text("Ok"),
          onPressed: () {
            Navigator.of(context).pop(resultDialog);
          },
        ),
        MaterialButton(
          elevation: 5.0,
          child: Text('Cancel'),
          onPressed: () {
            Navigator.of(context).pop();
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
