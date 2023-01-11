import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:in_time/time_set_feature/presentation/screens/add_update_item_screen/bloc_add_update_item/item_form_bloc.dart';
import '../../../../domain/entities/item_of_set_entity.dart';


class TextChoiceChipsWidget extends StatefulWidget {
   const TextChoiceChipsWidget({Key? key}) : super(key: key);

  @override
  State<TextChoiceChipsWidget> createState() => _TextChoiceChipsWidgetState();
}

class _TextChoiceChipsWidgetState extends State<TextChoiceChipsWidget> {
   final _controller = TextEditingController();

   @override
  void dispose() {
     _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final bloc = context.read<AddUpdateItemFormBloc>();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Wrap(
        spacing: 8.0,
        alignment: WrapAlignment.start,
        children: [
          const WrapTextChoiceChips(),
          Chip(
            side: const BorderSide(),
            //backgroundColor: Colors.white,
            avatar:const Icon(Icons.add),
            label: SizedBox(
                    width: 130,
                    child: TextField(
                      controller: _controller,
                      decoration: InputDecoration(
                        isDense: true,
                        isCollapsed: true,
                        hintText: 'Добавить...' ,
                        border: InputBorder.none,
                      ),
                      onSubmitted: (value) {
                        bloc.add(AddUpdateItemFormEvent.addTextChip(value));
                        _controller.clear();
                      },
                    ),
            ),
          ),
          // TextButton(
          //     onPressed: () async {
          //       final result = await showDialog(
          //         context: context,
          //         builder: (context) => const AddTextChipsDialog(),
          //       );
          //       bloc.add(AddUpdateItemFormEvent.addTextChip(result));
          //     },
          //     child: const Icon(Icons.add)),
        ],
      ),
    );
  }
}

class WrapTextChoiceChips extends StatelessWidget {
  const WrapTextChoiceChips({
    Key? key,
    this.itemOfSet,
  }) : super(key: key);
  final ItemOfSetEntity? itemOfSet;

  @override
  Widget build(BuildContext context) {
    final state = context.watch<AddUpdateItemFormBloc>().state;
    final textChoiceChips = state.listTextChipsData ?? [];
    // return ValueListenableBuilder(
    //   valueListenable: sl<DataBase<TextChoiceChipDataDto>>().box.listenable(),
    //   builder: (context, _, child) {
        return Wrap(
          alignment: WrapAlignment.start,
          spacing: 4.0,
          //runSpacing: 2.0,
          children: textChoiceChips
              .map((choiceChip) => InputChip(
                    label: Text(choiceChip.label),
                    labelStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                    selected: textChoiceChips.contains(choiceChip),
                    selectedColor: Colors.blueGrey,
                    backgroundColor: Colors.blueGrey[200],
                    onSelected: (isSelected) {
                      String value = choiceChip.label;
                      if (isSelected) {
                      } else {}
                    },
                    onDeleted: () {
                      context
                          .read<AddUpdateItemFormBloc>()
                          .add(RemoveTextChipsFormEvent(choiceChip));
                    },
                  ))
              .toList(),
        );
      }
  // ,);
  //}
}
