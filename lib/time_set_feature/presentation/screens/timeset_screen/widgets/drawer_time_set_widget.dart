import 'package:flutter/material.dart';


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
    var timeSetsCount = 3;

    return Drawer(
      child: ListView.builder(
        itemCount: timeSetsCount,
        itemBuilder: (context, index) {
          return TimeSetItem(indexInList: index);
        },
      ),
    );
  }
}

class TimeSetItem extends StatelessWidget {
  final int indexInList;
  const TimeSetItem({Key? key, required this.indexInList}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    final startTimeSet = TimeOfDay.now();

    return Container(
     color: Colors.blueGrey[100],
      child: ListTile(
        title: Text('New'),
        subtitle: Text(
            'Start: ${startTimeSet.format(context)}/'
                ' Duration: ${startTimeSet.format(context)}'),
        onTap: () {
          Navigator.pop(context);
        },
        trailing: IconButton(
          icon: const Icon(Icons.delete),
          onPressed: () {   },
        ),
      ),
    );
  }
}
