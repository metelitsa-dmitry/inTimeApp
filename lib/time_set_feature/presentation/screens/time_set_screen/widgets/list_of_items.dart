import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:in_time/time_set_feature/domain/entities/item_of_set_entity.dart';
import 'package:in_time/time_set_feature/domain/entities/time_set_entity.dart';
import 'package:in_time/time_set_feature/presentation/screens/time_set_screen/bloc_time_set/bloc_time_set_bloc.dart';
import '../../add_update_item_screen/item_detail_screen.dart';
import 'item_widget.dart';

class ListOfItemWidgets extends StatelessWidget {
  const ListOfItemWidgets({
    Key? key,
    required this.items,
    required this.timeSet,
  }) : super(key: key);
  final List<ItemOfSetEntity> items;
  final TimeSetEntity timeSet;

  @override
  Widget build(BuildContext context) {
    final blocTimeSet = context.watch<TimeSetBloc>();
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          final item = items[index];
          return GestureDetector(
            child: Dismissible(
                key: UniqueKey(),
                background: Container(
                  color: Colors.red,
                ),
                onDismissed: (direction) {
                  blocTimeSet.add(RemoveItemOfSetEvent(id: index));
                },
                child: ItemWidget(item: item, timeSet: timeSet, index: index)),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          ItemDetailScreen(itemOfSet: item, timeSet: timeSet, index: index)))
                  .then((value) => blocTimeSet.add(const TimeSetInitialEvent()));
            },
          );
        },
        childCount: items.length,
      ),
    );
  }
}
