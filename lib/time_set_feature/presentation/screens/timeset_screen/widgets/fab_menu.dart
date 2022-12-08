
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';


class MenuFab extends StatelessWidget {
  const MenuFab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SpeedDial(
      animatedIcon: AnimatedIcons.menu_close,
      overlayOpacity: 0.5,
      overlayColor: Colors.grey,
      children: [
        SpeedDialChild(
          label: 'Один',
          onTap: () { },
        ),
        SpeedDialChild(
          label: 'Несколько',
          onTap: () {     },
        )
      ],
    );
  }
}
