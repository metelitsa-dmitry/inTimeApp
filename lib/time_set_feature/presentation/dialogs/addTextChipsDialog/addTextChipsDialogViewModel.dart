
import 'package:flutter/widgets.dart';
import '../../../domain/entities/text_chips_data.dart';

class AddTextChipsDialogModel extends ChangeNotifier {

  //final _textChipsService = TextChipsService();

  void saveNewTextChoiceChips(String value) {
    final newTextChip = TextChoiceChipData(
      label: value,
      isSelected: false,
      //selectedColor: Colors.blue,
      //textColor: Colors.white,
    );
   // _textChipsService.addNewTextChip(newTextChip);
    notifyListeners();
  }
}