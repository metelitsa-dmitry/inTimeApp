import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:in_time/time_set_feature/presentation/screens/add_update_item_screen/bloc_add_update_item/item_form_bloc.dart';

import '../../../../domain/entities/item_of_set_entity.dart';

class TextInputFieldWidget extends StatefulWidget {
  const TextInputFieldWidget({
    Key? key, required this.itemOfSet,
  }) : super(key: key);
  final ItemOfSetEntity itemOfSet;

  @override
  State<TextInputFieldWidget> createState() => _TextInputFieldWidgetState();
}

class _TextInputFieldWidgetState extends State<TextInputFieldWidget> {
  late TextEditingController _titleItemController;

  @override
  void initState() {
    super.initState();
    // final title = context.read<AddUpdateItemFormBloc>().state.titleItem;
    _titleItemController = TextEditingController(text: widget.itemOfSet.titleItem);
  }

  @override
  Widget build(BuildContext context) {
    final itemBloc = context.watch<AddUpdateItemFormBloc>();

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Описание:',
            style: TextStyle(fontSize: 16),
          ),
          const Divider(
            height: 8.0,
          ),
          TextField(
            controller: _titleItemController,
            maxLines: null,
            //maxLength:100 ,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            onChanged: (value) {
              itemBloc.add(ItemChangeTitleFormEvent(value));
            },
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _titleItemController.dispose();
    super.dispose();
  }
}
