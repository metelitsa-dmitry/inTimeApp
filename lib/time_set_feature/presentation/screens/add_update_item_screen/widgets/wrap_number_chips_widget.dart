import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc_add_update_item/bloc_add_update_item_bloc.dart';


class WrapNumberChipsWidget extends StatelessWidget {
  const WrapNumberChipsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final itemBloc = context.watch<AddUpdateItemBloc>();
    final state = itemBloc.state;
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
              final number = numberChips[index].number.toString();
              return ChoiceChip(
                label: Text(number),
                labelStyle: const TextStyle(fontSize: 16,
                    fontWeight: FontWeight.bold, color: Colors.white),
                selected:
                itemNumberChips.contains(numberChips[index].number.toString()),
                selectedColor: Colors.blueGrey,
                backgroundColor: Colors.blueGrey[200],
                onSelected: (isSelected) {
                  if (isSelected) {
                    itemBloc.add(AddNumberChipsEvent(number));
                  } else {
                    itemBloc.add(RemoveNumberChipsEvent(number));
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