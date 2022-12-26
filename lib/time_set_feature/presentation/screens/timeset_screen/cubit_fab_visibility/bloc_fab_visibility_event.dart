part of 'bloc_fab_visibility_bloc.dart';

@immutable
abstract class FabVisibilityEvent {}

class FabVisible extends FabVisibilityEvent{}
class FabInVisible extends FabVisibilityEvent{
}