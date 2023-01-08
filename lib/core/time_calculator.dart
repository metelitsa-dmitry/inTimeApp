

class TimeCalculator {

  // DateTime addItemDuration({
  //   required ItemOfSetEntity item,
  //   required DateTime startTime,
  // }) {
  //   DateTime startTimeOfItem =
  //   DateTime(0, 1, 1, startTime.hour, startTime.minute, startTime.second);
  //   //конвертируем данные Item в Duration
  //   final durationOfItem = Duration(
  //       hours: item.durationHours,
  //       minutes: item.durationInMinutes,
  //       seconds: item.durationInSeconds);
  //   return startTimeOfItem = startTimeOfItem.add(durationOfItem);
  // }

  // void setItemStartTime({required Item item, required DateTime startTime}) {
  //   item.startTimeItemHours = startTime.hour;
  //   item.startTimeItemMinutes = startTime.minute;
  //   item.startTimeItemSeconds = startTime.second;
  // }

  DateTime calcAverageDurationOfItem({required Duration duration, required int countOfItems}) {

      final durationOfItemInMinutes = duration.inMinutes;
      final averageDurationOfItemInMinutes =
      (durationOfItemInMinutes / countOfItems);
      return _formatDurationToDateTime(averageDurationOfItemInMinutes);

  }

  DateTime _formatDurationToDateTime(double minutes) {

    final int durationOfItemHours = minutes~/60;
    final int durationOfItemMinutes = (minutes - (durationOfItemHours*60)).floor();
    final int durationOfItemSeconds =
    ((minutes * 60) - (durationOfItemHours * 3600) - (durationOfItemMinutes * 60)).floor();
    return DateTime(0, 1, 1, durationOfItemHours, durationOfItemMinutes,
        durationOfItemSeconds
    );
  }

}