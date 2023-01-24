part of '../setting_screen.dart';

class _DefaultDurationOfSet extends StatelessWidget {
  const _DefaultDurationOfSet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.watch<SettingsBloc>();
    final defaultDurationSetHour =
        bloc.state.mapOrNull(loaded: (state) => state.defaultDurationSetHour) ??
            1;
    final defaultDurationSetMinute = bloc.state
            .mapOrNull(loaded: (state) => state.defaultDurationSetMinute) ??
        0;
    final controllerDuration = TextEditingController(
        text:
            '${defaultDurationSetHour.toString().padLeft(2, '0')}:${defaultDurationSetMinute.toString().padLeft(2, '0')}');
    return Column(
      children: [
        const SizedBox(height: 16),
        const Text('Default duration of set: '),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.hourglass_empty),
                    onPressed: ()  {

                    },
                  ),
                  SizedBox(
                    width: 90.0,
                    child: TextField(
                      controller: controllerDuration,
                      readOnly: true,
                      // keyboardType: TextInputType.number,
                      // maxLines: 1,
                      //autofocus: true,
                      //inputFormatters: [MyInputTextFormatter()],
                      //scrollPadding: EdgeInsets.all(8),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        isCollapsed: true,
                        contentPadding: const EdgeInsets.all(8),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      // onTap: ()async {
                      //   final currentDuration = TimeOfDay(
                      //       hour: defaultDurationSetHour,
                      //       minute: defaultDurationSetMinute);
                      //
                      //   final newTime = await _changeTime(
                      //       context: context, duration: currentDuration);
                      //   bloc.add(SettingsEvent.changeDuration(
                      //       newDefaultDurationTimeSet: newTime));
                      // },
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.chevron_right),
                    onPressed: () async{
                      final currentDuration = TimeOfDay(
                          hour: defaultDurationSetHour,
                          minute: defaultDurationSetMinute);

                      final newTime = await _changeTime(
                          context: context, duration: currentDuration);
                      bloc.add(SettingsEvent.changeDuration(
                          newDefaultDurationTimeSet: newTime));
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

Future<TimeOfDay> _changeTime(
    {required BuildContext context, required TimeOfDay duration}) async {
  final currentTime = duration;
  final TimeOfDay? newValue = await showTimePicker(
    context: context,
    initialTime: currentTime,
  );
  if (newValue == null) {
    return currentTime;
  } else {
    return newValue;
  }
}
