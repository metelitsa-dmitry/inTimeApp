import 'package:equatable/equatable.dart';

class TextChoiceChipData extends Equatable {
  final String label;
  final bool isSelected;

  const TextChoiceChipData({
    required this.label,
    required this.isSelected,
  });

  @override
  List<Object?> get props => [label, isSelected];

}