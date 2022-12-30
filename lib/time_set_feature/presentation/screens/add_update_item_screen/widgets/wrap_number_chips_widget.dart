import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc_add_update_item/bloc_add_update_item_bloc.dart';


class WrapNumberChipsWidget extends StatelessWidget {
  const WrapNumberChipsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<AddUpdateItemBloc>().state;
    final numberChips = state.timeSet?.numberChips ?? [];
    final itemNumberChips = state.itemOfSet?.chipsItem ?? [];


    return ListTile(
      title: SizedBox(
        height: 52,
        child: Scrollbar(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: numberChips.length,
            itemBuilder: (context, index) {
              return ChoiceChip(
                label: Text(numberChips[index].number.toString()),
                labelStyle: const TextStyle(fontSize: 16,
                    fontWeight: FontWeight.bold, color: Colors.white),
                selected:
                itemNumberChips.contains(numberChips[index].number.toString()),
                selectedColor: Colors.blueGrey,
                backgroundColor: Colors.blueGrey[200],
                onSelected: (isSelected) {
                  if (isSelected) {

                  } else {

                  }
                },
              );
            },
          ),
        ),
      ),
      // trailing: IconButton(
      //    onPressed:
      //    context.read<EditItemModel>().addNumberChips,
      //    icon: const Icon(Icons.add)),
    );
  }
}