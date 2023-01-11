import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:in_time/time_set_feature/presentation/screens/add_update_item_screen/bloc_add_update_item/item_form_bloc.dart';
import '../../../../../di/di.dart';


class AddTextChipsDialog extends StatelessWidget {
  const AddTextChipsDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return BlocProvider(
      create: (context) => sl<AddUpdateItemFormBloc>(),
      child:
      AlertDialogBody(),
    );
  }
}

class AlertDialogBody extends StatefulWidget {
  const AlertDialogBody({Key? key}) : super(key: key);

  @override
  State<AlertDialogBody> createState() => _AlertDialogBodyState();
}

class _AlertDialogBodyState extends State<AlertDialogBody> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //final bloc = context.read<AddUpdateItemFormBloc>();
    return AlertDialog(
      title: const Text('Добавить тэг'),
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
            // bloc.add(
            //     AddTextChipsDataFormEvent(
            //         TextChoiceChipData(
            //             label: _controller.text, isSelected: false)));

            Navigator.pop(context, _controller.text);
          },
          child: const Text('Ok'),
        ),
      ],
    );
  }
}


