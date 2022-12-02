
import 'package:in_time/time_set_feature/domain/entities/time_set_entity.dart';

abstract class TimeSetLocalDataSource {
  TimeSetEntity getTimeSetFromLocalStore(String id);
  void putTimeSetToLocalStore(TimeSetEntity timeSet);
}
