import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc_time_set/bloc_time_set_bloc.dart';

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
    final state = context.watch<TimeSetBloc>().state;
    final blocTimeSet = context.watch<TimeSetBloc>();
    return Flexible(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8.0, 0.0, 0.0, 0.0),
        child: GestureDetector(
          child: Row(
            children: [
              const Icon(Icons.hourglass_top),
          state.when(
              initial: () => const Text('--:--'),
              loading: () => const CircularProgressIndicator(),
              loadedTimeSet: (timeSet)=> Text(timeSet.startTimeSetFormat,
                style: const TextStyle(
                  fontSize: 16,),
                ),
              ),
            ],
          ),
          onTap: () async {
            final currentTime = state.whenOrNull(loadedTimeSet: (timeSet) => timeSet.startTimeSet) ?? DateTime.now();
            final newStartTime = await _changeTime(context: context, dateTime: currentTime );
            blocTimeSet.add(ChangeStartTimeSetEvent(newStatTime: newStartTime));
          },
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
    final state = context.watch<TimeSetBloc>().state;
    final blocTimeSet = context.watch<TimeSetBloc>();
    return Flexible(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(4.0, 0.0, 4.0, 0.0),
        child: GestureDetector(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.hourglass_empty),
              state.when(
                initial: () => const Text('--:--'),
                loading: () => const CircularProgressIndicator(),
                loadedTimeSet: (timeSet)=> Text('${timeSet.durationHourTimeSet}:${timeSet.durationMinutesTimeSet}',
                  style: const TextStyle(
                    fontSize: 16,),
                ),
              ),
            ],
          ),
          onTap: ()async {
            final currentTimeSet = state.whenOrNull(loadedTimeSet: (timeSet) => timeSet);
            final currentDuration = DateTime(0, 0, 0, currentTimeSet!.durationHourTimeSet, currentTimeSet.durationMinutesTimeSet);

            final newTime = await _changeTime(context: context, dateTime: currentDuration );
            blocTimeSet.add(ChangeDurationTimeSetEvent(newDuration: newTime));
          },
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
    final state = context.watch<TimeSetBloc>().state;
    final blocTimeSet = context.watch<TimeSetBloc>();

    return Flexible(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(4.0, 0.0, 8.0, 0.0),
        child: GestureDetector(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Icon(Icons.hourglass_bottom),
              state.when(
                initial: () => const Text('--:--'),
                loading: () => const CircularProgressIndicator(),
                loadedTimeSet: (timeSet)=> Text(timeSet.finishTimeSetFormat,
                  style: const TextStyle(
                    fontSize: 16,),
                ),
              ),
            ],
          ),
          onTap: () async{
            final currentTime = state.whenOrNull(loadedTimeSet: (timeSet) => timeSet.finishTimeSet) ?? DateTime.now();
            final newTime = await _changeTime(context: context, dateTime: currentTime );

            blocTimeSet.add(ChangeFinishTimeSetEvent(newFinishTime: newTime));
          },
        ),
      ),
    );
  }
}


Future<DateTime> _changeTime(
    {required BuildContext context, required DateTime dateTime}) async {
  final currentTime = TimeOfDay.fromDateTime(dateTime);
  final TimeOfDay? newValue = await showTimePicker(
    context: context,
    initialTime: currentTime,
  );
  if (newValue == null) {
    return DateTime(0,1,1, currentTime.hour, currentTime.minute);
  } else {
    return DateTime(0,1,1, newValue.hour, newValue.minute);
  }

}
