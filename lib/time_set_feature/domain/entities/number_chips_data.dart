
import 'package:equatable/equatable.dart';

class NumberChipsData extends Equatable{
  final int number;
  final bool isSelected;

  const NumberChipsData({ required this.number, required this.isSelected});

  @override
  List<Object?> get props => [number, isSelected];
}

