import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/constants.dart';
import '../bloc_time_set/bloc_time_set_bloc.dart';

class TimeSetupPanel extends StatelessWidget {
  const TimeSetupPanel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: colorTimePanel,
        border: Border.symmetric(),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8.0), bottomRight: Radius.circular(8.0) )
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [StartTimeSet(), DurationTimeSet(), FinishTimeSet()],
        ),
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
    return FittedBox(
      fit: BoxFit.contain,
      //flex: 1,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8.0, 0.0, 0.0, 0.0),
        child: GestureDetector(
          child: Row(
            children: [
              const Icon(Icons.hourglass_top),
              state.when(
                  initial: () => const Text('--:--'),
                  loading: () => const CircularProgressIndicator(),
                  loadedTimeSet: (timeSet) {
                    final startTime =
                        TimeOfDay.fromDateTime(timeSet.startTimeSet)
                            .format(context);
                    return FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        startTime,
                        style: const TextStyle(
                          fontSize: fontSizeTextTimePanel,
                          fontWeight: fontWeightTextTimePanel,
                          color: colorFontTimePanel,
                        ),
                      ),
                    );
                  }),
            ],
          ),
          onTap: () async {
            final currentTime = state.whenOrNull(
                    loadedTimeSet: (timeSet) => timeSet.startTimeSet) ??
                DateTime.now();
            final newStartTime =
                await _changeTime(context: context, dateTime: currentTime);
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
    final blocTimeSet = context.watch<TimeSetBloc>();
    final state = blocTimeSet.state;

    return FittedBox(
      fit: BoxFit.contain,
      //flex: 1,
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
                  loadedTimeSet: (timeSet) {
                    final hours =
                        timeSet.durationHourTimeSet.toString().padLeft(2, '0');
                    final minutes = timeSet.durationMinutesTimeSet
                        .toString()
                        .padLeft(2, '0');
                    return FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        '$hours:$minutes',
                        style: const TextStyle(
                          fontSize: fontSizeTextTimePanel,
                          fontWeight: fontWeightTextTimePanel,
                          color: colorFontTimePanel,
                        ),
                      ),
                    );
                  }),
            ],
          ),
          onTap: () async {
            final currentTimeSet =
                state.whenOrNull(loadedTimeSet: (timeSet) => timeSet);
            final currentDuration = DateTime(
                0,
                0,
                0,
                currentTimeSet!.durationHourTimeSet,
                currentTimeSet.durationMinutesTimeSet);

            final newTime =
                await _changeTime(context: context, dateTime: currentDuration);
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

    return FittedBox(
      fit: BoxFit.contain,
      //flex: 1,
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
                  loadedTimeSet: (timeSet) {
                    final finishTime =
                        TimeOfDay.fromDateTime(timeSet.finishTimeSet)
                            .format(context);
                    return Text(
                      finishTime,
                      style: const TextStyle(
                        fontSize: fontSizeTextTimePanel,
                        fontWeight: fontWeightTextTimePanel,
                        color: colorFontTimePanel,
                      ),
                    );
                  }),
            ],
          ),
          onTap: () async {
            final currentTime = state.whenOrNull(
                    loadedTimeSet: (timeSet) => timeSet.finishTimeSet) ??
                DateTime.now();
            final newTime =
                await _changeTime(context: context, dateTime: currentTime);

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
    return DateTime(0, 0, 0, currentTime.hour, currentTime.minute);
  } else {
    return DateTime(0, 0, 0, newValue.hour, newValue.minute);
  }
}
