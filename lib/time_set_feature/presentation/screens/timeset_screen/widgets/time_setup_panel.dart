import 'package:flutter/material.dart';

class TimeSetupPanel extends StatelessWidget {
  const TimeSetupPanel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          StartTimeSet(),
          DurationTimeSet(),
          FinishTimeSet()
        ],
      ),
    );
  }
}

class StartTimeSet extends StatelessWidget {
  const StartTimeSet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final startSet = TimeOfDay.now().format(context);
    return Flexible(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8.0, 0.0, 0.0, 0.0),
        child: GestureDetector(
          child: Row(
            children: [
              Icon(Icons.hourglass_top),
              Text(
                startSet,
                style: const TextStyle(
                  fontSize: 22,
                ),
              ),
            ],
          ),
          onTap: () { },
        ),
      ),
    );
  }
}

class DurationTimeSet extends StatelessWidget {
  const DurationTimeSet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Flexible(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(4.0, 0.0, 4.0, 0.0),
        child: GestureDetector(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.hourglass_empty),
              Text(
                '01:00',
                style: const TextStyle(
                  fontSize: 22,
                ),
              ),
            ],
          ),
          onTap: () { },
        ),
      ),
    );
  }
}

class FinishTimeSet extends StatelessWidget {
  const FinishTimeSet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final finishSet = TimeOfDay.now().format(context);
    return Flexible(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(4.0, 0.0, 8.0, 0.0),
        child: GestureDetector(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(Icons.hourglass_bottom),
          Text(
            finishSet,
            style: const TextStyle(
              fontSize: 22,
            ),
          ),
            ],
          ),
          onTap: () { },
        ),
      ),
    );
  }
}
