import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:in_time/time_set_feature/domain/entities/item_of_set_entity.dart';
import '../../../../di/di.dart';
import '../../../domain/entities/time_set_entity.dart';
import 'add_update_item_screen.dart';
import 'bloc_add_update/add_update_item_bloc.dart';
import 'bloc_item_form/item_form_bloc.dart';

class ItemDetailScreen extends StatelessWidget {
  const ItemDetailScreen(
      {Key? key,
      required this.timeSet,
      required this.itemOfSet,
      required this.index})
      : super(key: key);
  final ItemOfSetEntity itemOfSet;
  final TimeSetEntity timeSet;
  final int index;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => sl<AddUpdateItemBloc>()),
          BlocProvider(
              create: (context) => sl<AddUpdateItemFormBloc>()
                ..add((ItemInitialFormEvent(
                  timeSet: timeSet,
                  index: index,
                  titleItem: itemOfSet.titleItem,
                  chipsItem: itemOfSet.chipsItem,
                  durationHourOfItemSet: itemOfSet.durationHourOfItemSet,
                  durationMinutesOfItemSet: itemOfSet.durationMinutesOfItemSet,
                  durationSecondsOfItemSet: itemOfSet.durationSecondsOfItemSet,
                  startItemOfSet: itemOfSet.startItemOfSet,
                  isPicture: itemOfSet.isPicture,
                  isVerse: itemOfSet.isVerse,
                  isTable: itemOfSet.isTable,
                )))),
        ],
        child: AddUpdateItemBody(
          itemOfSet: itemOfSet,
        ));
  }
}
