
import 'package:flutter/material.dart';
import '../../../../domain/entities/item_of_set_entity.dart';



class ListOfSwitchersWidget extends StatelessWidget {
  const ListOfSwitchersWidget({Key? key, this.itemOfSet}) : super(key: key);
  final ItemOfSetEntity? itemOfSet;

  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        ListTile(
          leading: const Icon(Icons.menu_book_outlined),
          title: Text('AppLocalizations.of(context)!.read_a_quote}: '),
          trailing: Switch(
              value: itemOfSet?.isVerse ?? false,
              onChanged: (bool value) {

              }),
        ),
        ListTile(
          leading: const Icon(Icons.photo_size_select_actual_outlined),
          title: Text('AppLocalizations.of(context)!.discuss_illustration}: '),
          trailing: Switch(
              value: itemOfSet?.isPicture ?? false,
              onChanged: (bool value) {

              }),
        ),
        ListTile(
          leading: const Icon(Icons.table_chart_outlined),
          title: Text('AppLocalizations.of(context)!.discuss_frame}: '),
          trailing: Switch(
              value: itemOfSet?.isTable ?? false,
              onChanged: (bool value) {

              }),
        ),
      ],
    );
  }

}