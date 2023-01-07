import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter/material.dart';
import 'package:in_time/time_set_feature/presentation/screens/add_update_item_screen/bloc_add_update_item/bloc_add_update_item_bloc.dart';

class TextInputFieldWidget extends StatefulWidget {
  const TextInputFieldWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<TextInputFieldWidget> createState() => _TextInputFieldWidgetState();
}

class _TextInputFieldWidgetState extends State<TextInputFieldWidget> {

  TextEditingController _titleItemController = TextEditingController(text: '') ;

  @override
  void initState() {
    super.initState();
   final stateItem = context.read<AddUpdateItemBloc>().state.itemOfSet;
    _titleItemController =
        TextEditingController(text: stateItem?.titleItem);
  }
  @override
  Widget build(BuildContext context) {
    final itemBloc = context.watch<AddUpdateItemBloc>();

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text(
            'Описание:',
            style: const TextStyle(fontSize: 16),
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
              itemBloc.add(ItemChangeTitleEvent(value));
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
