import 'package:equatable/equatable.dart';

abstract class Error extends Equatable {
  @override
  List<Object?> get props => [];
}

class TimeSetError extends Error{
  final String errorMessage;

  TimeSetError({required this.errorMessage});

}
