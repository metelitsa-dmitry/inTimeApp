import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
      title: Text(AppLocalizations.of(context).dlgSaveItemAs),
      content: TextField(
        controller: _controller,
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text(AppLocalizations.of(context).cancel),
        ),
        TextButton(
          onPressed: () {
            Navigator.pop(context, _controller.text);
          },
          child: Text(AppLocalizations.of(context).ok),
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
