
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:in_time/time_set_feature/presentation/screens/add_update_item_screen/bloc_add_update_item/bloc_add_update_item_bloc.dart';
import '../../../../domain/entities/item_of_set_entity.dart';



class ListOfSwitchersWidget extends StatelessWidget {
  const ListOfSwitchersWidget({Key? key, this.itemOfSet}) : super(key: key);
  final ItemOfSetEntity? itemOfSet;

  @override
  Widget build(BuildContext context){
    final itemBloc = context.watch<AddUpdateItemBloc>();
    final itemState = itemBloc.state.itemOfSet;

    return Column(
      children: [
        ListTile(
          leading: const Icon(Icons.menu_book_outlined),
          title: Text('Цитата: '),
          trailing: Switch(
              value: itemState?.isVerse  ?? false ,
              onChanged: (bool value) {
                  itemBloc.add( ItemChangeIsVerseEvent(value));
              }),
        ),
        ListTile(
          leading: const Icon(Icons.photo_size_select_actual_outlined),
          title: Text('Иллюстрация: '),
          trailing: Switch(
              value: itemState?.isPicture ?? false,
              onChanged: (bool value) {
                itemBloc.add( ItemChangeIsPictureEvent(value));
              }),
        ),
        ListTile(
          leading: const Icon(Icons.table_chart_outlined),
          title: Text('Рамка: '),
          trailing: Switch(
              value: itemState?.isTable ?? false,
              onChanged: (bool value) {
                itemBloc.add( ItemChangeIsTableEvent(value));
              }),
        ),
      ],
    );
  }

}