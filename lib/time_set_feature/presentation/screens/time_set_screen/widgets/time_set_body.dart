
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:in_time/time_set_feature/presentation/screens/time_set_screen/widgets/time_setup_panel.dart';
import '../../../../domain/entities/time_set_entity.dart';
import '../bloc_fab_visibility/bloc_fab_visibility_bloc.dart';
import 'list_of_items.dart';

class TimeSetBody extends StatelessWidget {
  const TimeSetBody({
    Key? key,
    required this.timeSet,
  }) : super(key: key);
  final TimeSetEntity timeSet;

  @override
  Widget build(BuildContext context) {
    final items = timeSet.itemsOfSet ?? [];
    final fabVisibility = context.read<FabVisibilityBloc>();

    return NotificationListener<UserScrollNotification>(
      onNotification: (notification) {
        if (notification.direction == ScrollDirection.forward) {
          fabVisibility.add(FabVisible());
        } else if (notification.direction == ScrollDirection.reverse &&
            items.isNotEmpty) {
          fabVisibility.add(FabInVisible());
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
          ListOfItemWidgets(items: items, timeSet: timeSet),
        ],
      ),
    );
  }
}