import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:in_time/time_set_feature/domain/entities/item_of_set_entity.dart';
import 'package:in_time/time_set_feature/domain/entities/time_set_entity.dart';
import 'package:in_time/time_set_feature/presentation/screens/new_item_screen/new_item_screen.dart';
import 'package:in_time/time_set_feature/presentation/screens/timeset_screen/bloc_time_set/bloc_time_set_bloc.dart';
import 'item_widget.dart';
import 'time_setup_panel.dart';

class ListOfItems extends StatelessWidget {
  const ListOfItems({
    Key? key, required this.timeSet,
  }) : super(key: key);
  final TimeSetEntity timeSet;

  @override
  Widget build(BuildContext context) {
    final items = timeSet.itemsOfSet ?? [];


    return NotificationListener<UserScrollNotification>(
      onNotification: (notification) {
        if (notification.direction == ScrollDirection.forward) {
        //  bool visibility = true;
          //context.read<TimeSetModule>().changeFabVisible(visibility);
        } else if (notification.direction == ScrollDirection.reverse &&
            items.isNotEmpty) {
         //// bool visibility = false;
         // context.read<TimeSetModule>().changeFabVisible(visibility);
        }
        return true;
      },
      child: CustomScrollView(
        slivers: [
          const SliverAppBar(
            expandedHeight: 56.0,
            flexibleSpace: TimeSetupPanel(),
            backgroundColor: Colors.white,
            floating: true,
            snap: true,
          ),
          ListOfItemWidgets(items: items),
        ],
      ),
    );
  }
}

class ListOfItemWidgets extends StatelessWidget {
    ListOfItemWidgets({Key? key, required this.items,}) : super(key: key);
  final List<ItemOfSetEntity> items;

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
                child: ItemWidget(
                    item: item)) ?? Container(),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NewItemScreen()));
            },
          );
        },
        childCount: items.length,
      ),
    );



  }
}
