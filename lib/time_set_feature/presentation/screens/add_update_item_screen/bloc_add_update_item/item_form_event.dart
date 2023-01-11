part of 'item_form_bloc.dart';


@freezed
class AddUpdateItemFormEvent with _$AddUpdateItemFormEvent {
  const factory AddUpdateItemFormEvent.initial({
    int? index,
    TimeSetEntity? timeSet,
    String? titleItem, // text in item
    List<String>? chipsItem,
    int? durationHourOfItemSet,
    int? durationMinutesOfItemSet,
    int? durationSecondsOfItemSet,
    DateTime? startItemOfSet,
    bool? isPicture, // need to discuss picture
    bool? isVerse, // need to read verse
    bool? isTable,
    List<TextChoiceChipData>? listTextChipsData,
  }) = ItemInitialFormEvent;

  const factory AddUpdateItemFormEvent.changeIsTable(bool isTable) = ItemChangeIsTableFormEvent;
  const factory AddUpdateItemFormEvent.changeIsVerse(bool isVerse) = ItemChangeIsVerseFormEvent;
  const factory AddUpdateItemFormEvent.changeIsPicture(bool isPicture) = ItemChangeIsPictureFormEvent;
  const factory AddUpdateItemFormEvent.changeTitle(String text) = ItemChangeTitleFormEvent;
  const factory AddUpdateItemFormEvent.addNumberChips(String numberChip) = AddNumberChipsFormEvent;
  const factory AddUpdateItemFormEvent.removeNumberChips(String numberChip) = RemoveNumberChipsFormEvent;
  const factory AddUpdateItemFormEvent.saveItemForm() = SaveItemFormEvent;
  const factory AddUpdateItemFormEvent.addTextChip(String labelTextChip) =
  AddTextChipsDataFormEvent;
  const factory AddUpdateItemFormEvent.removeTextChip(TextChoiceChipData textChip) =
  RemoveTextChipsFormEvent;
  const factory AddUpdateItemFormEvent.selectTextChip(TextChoiceChipData textChip) =
  SelectTextChipsFormEvent;

}
