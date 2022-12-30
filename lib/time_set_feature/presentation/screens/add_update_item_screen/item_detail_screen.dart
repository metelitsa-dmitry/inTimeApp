import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:in_time/time_set_feature/domain/entities/item_of_set_entity.dart';

import '../../../../di/di.dart';
import '../../../domain/entities/time_set_entity.dart';
import 'add_update_item_screen.dart';
import 'bloc_add_update_item/bloc_add_update_item_bloc.dart';

class ItemDetailScreen extends StatelessWidget {
   const ItemDetailScreen({Key? key,
     required this.timeSet,
      this.itemOfSet
   }) : super(key: key);
  final ItemOfSetEntity? itemOfSet;
    final TimeSetEntity timeSet;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => sl<AddUpdateItemBloc>()
      ..add((ItemInitialEvent(itemOfSet: itemOfSet, timeSet: timeSet ))),
        child: const AddUpdateItemBody());
  }
}
