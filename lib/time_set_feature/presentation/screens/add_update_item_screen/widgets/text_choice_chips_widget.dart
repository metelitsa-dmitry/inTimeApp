import 'package:flutter/material.dart';
import '../../../../domain/entities/item_of_set_entity.dart';
import 'addTextChipsDialog.dart';


class TextChoiceChipsWidget extends StatelessWidget {
  const TextChoiceChipsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
          spacing: 8.0,
          alignment: WrapAlignment.start,
          children: [
            const WrapTextChoiceChips(),
            TextButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => const AddTextChipsDialog(),
                  );
                },
                child: Icon(Icons.add)),
            // InputChip(
            //   label: SizedBox(
            //     width: 150,
            //     child: TextField(
            //       decoration: InputDecoration(
            //         isDense: true,
            //         isCollapsed: true,
            //         hintText: AppLocalizations.of(context)!.add,
            //         border: InputBorder.none,
            //       ),
            //       onSubmitted: (value) {
            //         //context.read<EditItemModel>().saveNewTextChoiceChips(value);
            //       },
            //     ),
            //   ),
            //   // onPressed: () {},
            //   // onDeleted: () {},
            // ),
          ],
        );
      }
  }

class WrapTextChoiceChips extends StatelessWidget {
  const WrapTextChoiceChips({
    Key? key, this.itemOfSet,
  }) : super(key: key);
  final ItemOfSetEntity? itemOfSet;

  @override
  Widget build(BuildContext context) {
        final textChoiceChips = itemOfSet?.chipsItem ?? [];

    return Wrap(
          alignment: WrapAlignment.start,
          spacing: 4.0,
          //runSpacing: 2.0,
          children: textChoiceChips
              .map((choiceChip) => InputChip(
                    label: Text(choiceChip),
                    labelStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                    selected: textChoiceChips.contains(choiceChip),
                    selectedColor: Colors.blueGrey,
                    backgroundColor: Colors.blueGrey[200],
                    onSelected: (isSelected) {

                      String value = choiceChip;
                      if (isSelected) {

                      } else {

                      }
                    },
            onDeleted: (){

            },
                  ))
              .toList(),
        );
      }

  }

