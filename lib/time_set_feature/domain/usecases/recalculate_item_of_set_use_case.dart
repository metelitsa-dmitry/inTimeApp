import 'package:in_time/time_set_feature/domain/entities/item_of_set_entity.dart';

class RecalculateItemOfSet {

  List<ItemOfSetEntity> call({required List<ItemOfSetEntity> listOfItems,
  required DateTime averageDuration,
    required DateTime startOfTimeSet}) {
    var start = startOfTimeSet;
    for(int i=0; i< listOfItems.length; i++){

      listOfItems[i] = listOfItems[i].copyWith(
          durationHourOfItemSet: averageDuration.hour,
          durationMinutesOfItemSet:  averageDuration.minute,
          durationSecondsOfItemSet: averageDuration.second,
          startItemOfSet: start);
      start = start.add(Duration(
          hours: averageDuration.hour,
          minutes: averageDuration.minute,
          seconds: averageDuration.second));
    }
    return listOfItems;
  }
}
