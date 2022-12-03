
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exceptions.freezed.dart';

@freezed
abstract class TimeSetAppException implements Exception, _$TimeSetAppException{
  factory TimeSetAppException.noRecords() = NoRecordsException;
  factory TimeSetAppException.empty(String message) = EmptyException;
  factory TimeSetAppException.failedToParse() = FailedToParseException;
}