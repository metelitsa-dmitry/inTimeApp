import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:in_time/time_set_feature/domain/entities/time_set_entity.dart';
import 'package:in_time/time_set_feature/presentation/screens/timeset_screen/bloc_time_set/bloc_time_set_bloc.dart';
import '../../../../../di/di.dart';
import '../../../../domain/data_source/data_base_domain.dart';
import '../bloc_list_time_sets/bloc_list_time_sets_bloc.dart';

class DrawerTimeSetScreen extends StatefulWidget {
  const DrawerTimeSetScreen({Key? key}) : super(key: key);

  @override
  State<DrawerTimeSetScreen> createState() => _DrawerTimeSetScreenState();
}

class _DrawerTimeSetScreenState extends State<DrawerTimeSetScreen> {
  @override
  Widget build(BuildContext context) {
    return const DrawerScreenBody();
  }
}

class DrawerScreenBody extends StatelessWidget {
  const DrawerScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<ListTimeSetsBloc>().state;
    return Drawer(
      child: ValueListenableBuilder(
        valueListenable: sl<DataBase>().box.listenable(),
        builder: (context, _, child) {
          context.read<ListTimeSetsBloc>().add(const Loaded());
          return child!;
        },
        child: state.when(
          initial: () => const Text('Загрузите'),
          loading: () => const Center(child: CircularProgressIndicator()),
          loaded: (listTimeSets) {
            return ListView.builder(
              itemCount: listTimeSets.length,
              itemBuilder: (context, index) {
                return TimeSetItem(timeSet: listTimeSets[index]);
              },
            );
          },
        ),
      ),
    );
  }
}

class TimeSetItem extends StatelessWidget {
  final TimeSetEntity timeSet;

  const TimeSetItem({Key? key, required this.timeSet}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final blocTimeSet = context.read<TimeSetBloc>();
    final blocListTimeSets = context.read<ListTimeSetsBloc>();

    return Container(
      color: Colors.blueGrey[100],
      child: ListTile(
        title: Text(timeSet.title),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Start: ${timeSet.startTimeSetFormat}'),
            Text('Duration: ${timeSet.durationFormat}'),
            Text('Saved: ${timeSet.dateTimeSavedFormat}')
          ],
        ),
        onTap: () {
          blocTimeSet.add(GetTimeSetEvent(id: timeSet.title));
         Navigator.pop(context);
        },
        trailing: IconButton(
          icon: const Icon(Icons.delete),
          onPressed: () {
            blocListTimeSets.add(Delete(id: timeSet.title));
          },
        ),
      ),
    );
  }
}
