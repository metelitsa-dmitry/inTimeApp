import 'package:freezed_annotation/freezed_annotation.dart';

part 'result_add_dialog.freezed.dart';

@freezed
class ResultAddDialog with _$ResultAddDialog {
  ResultAddDialog._();

  factory ResultAddDialog({required int counter, required int startNumber}) =
      _ResultAddDialog;
}
