import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:in_time/time_set_feature/presentation/screens/add_update_item_screen/bloc_item_form/item_form_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ListOfSwitchersWidget extends StatelessWidget {
  const ListOfSwitchersWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final itemBloc = context.watch<AddUpdateItemFormBloc>();
    final itemState = itemBloc.state;

    return Column(
      children: [
        ListTile(
          leading: const Icon(Icons.menu_book_outlined),
          title: Text(AppLocalizations.of(context).quote),
          trailing: Switch(
              value: itemState.isVerse ?? false,
              onChanged: (bool value) {
                itemBloc.add(ItemChangeIsVerseFormEvent(value));
              }),
        ),
        ListTile(
          leading: const Icon(Icons.photo_size_select_actual_outlined),
          title: Text(AppLocalizations.of(context).illustration),
          trailing: Switch(
              value: itemState.isPicture ?? false,
              onChanged: (bool value) {
                itemBloc.add(ItemChangeIsPictureFormEvent(value));
              }),
        ),
        ListTile(
          leading: const Icon(Icons.table_chart_outlined),
          title: Text(AppLocalizations.of(context).table),
          trailing: Switch(
              value: itemState.isTable ?? false,
              onChanged: (bool value) {
                itemBloc.add(ItemChangeIsTableFormEvent(value));
              }),
        ),
      ],
    );
  }
}
