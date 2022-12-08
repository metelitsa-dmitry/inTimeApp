import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:in_time/time_set_feature/presentation/screens/new_item_screen/new_item_screen.dart';
import 'item_widget.dart';
import 'time_setup_panel.dart';

class ListOfItems extends StatelessWidget {
  const ListOfItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = [];


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
          ListOfItemWidgets(),
        ],
      ),
    );
  }
}

class ListOfItemWidgets extends StatelessWidget {
   ListOfItemWidgets({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final listOfItems = [];

    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          final item = listOfItems[index];
          return GestureDetector(
            child: Dismissible(
                key: UniqueKey(),
                background: Container(
                  color: Colors.red,
                ),
                onDismissed: (direction) {
                  //context.read<TimeSetModule>().deleteItemFromList(index);
                },
                child: ItemWidget(
                    index: index)),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => NewItemScreen()));

            },
          );
        },
        childCount: listOfItems.length,
      ),
    );
  }
}
