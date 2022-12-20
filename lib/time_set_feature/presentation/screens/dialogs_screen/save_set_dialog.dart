import 'package:flutter/material.dart';


class DialogSaveTimeSetAs extends StatefulWidget {
  const DialogSaveTimeSetAs({Key? key}) : super(key: key);
  @override
  State<DialogSaveTimeSetAs> createState() => _DialogSaveTimeSetAsState();
}

class _DialogSaveTimeSetAsState extends State<DialogSaveTimeSetAs> {
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Сохранить'),
      content: TextField(
        controller: _controller,
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
            Navigator.pop(context, _controller.text);
          },
          child: const Text('Ok'),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
