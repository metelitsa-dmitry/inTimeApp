import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:in_time/time_set_feature/domain/entities/time_set_entity.dart';
import '../../../domain/entities/number_chips_data.dart';
import 'bloc_add_update_item/bloc_add_update_item_bloc.dart';
import 'widgets/add_update_item_widget.dart';
import 'widgets/list_switchers_widget.dart';
import 'widgets/text_input_field_widget.dart';
import 'widgets/wrap_number_chips_widget.dart';

class AddUpdateItemBody extends StatelessWidget {
  const AddUpdateItemBody({Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddUpdateItemBloc, AddUpdateItemState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text('AppLocalizations.of(context)!.editing_item'),
          ),
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                AddUpdateItemWidget(),
                TextInputFieldWidget(),
                ListOfSwitchersWidget(),
                WrapNumberChipsWidget(),
                //TextChoiceChipsWidget(),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              // context.read<EditItemModel>().saveItem(context);
              Navigator.pop(context);
            },
            child: const Icon(Icons.save),
          ),
        );
      },
    );
  }
}


// class AddUpdateItemScreen extends StatefulWidget {
//    const AddUpdateItemScreen({Key? key, this.itemOfSet, this.timeSet}) : super(key: key);
//    final ItemOfSetEntity? itemOfSet;
//    final TimeSetEntity? timeSet;
//
//   @override
//   State<AddUpdateItemScreen> createState() => _AddUpdateItemScreenState();
// }
//
// class _AddUpdateItemScreenState extends State<AddUpdateItemScreen> {
//
//
//   @override
//   void initState() {
//     super.initState();
//
//     context.read<AddUpdateItemBloc>().add(
//     ItemInitialEvent(
//       titleItem: widget.itemOfSet?.titleItem,
//       chipsItem: widget.itemOfSet?.chipsItem,
//       durationHourOfItemSet: widget.itemOfSet?.durationHourOfItemSet,
//       durationMinutesOfItemSet: widget.itemOfSet?.durationMinutesOfItemSet,
//       durationSecondsOfItemSet: widget.itemOfSet?.durationSecondsOfItemSet,
//       startItemOfSet: widget.itemOfSet?.startItemOfSet,
//       isPicture: widget.itemOfSet?.isPicture,
//       isVerse: widget.itemOfSet?.isVerse,
//       isTable: widget.itemOfSet?.isTable,
//       ),
//     );
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//     final state = context.read<AddUpdateItemBloc>().state;
//     return BlocBuilder<AddUpdateItemBloc, AddUpdateItemState>(
//   builder: (context, state) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('AppLocalizations.of(context)!.editing_item'),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             AddUpdateItemWidget(state: state),
//             TextInputFieldWidget(),
//             ListOfSwitchersWidget(),
//             WrapNumberChipsWidget(),
//             //TextChoiceChipsWidget(),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           // context.read<EditItemModel>().saveItem(context);
//           Navigator.pop(context);
//         },
//         child: const Icon(Icons.save),
//       ),
//     );
//   },
// );
//   }
// }



class WrapTextChoiceChips extends StatelessWidget {
  const WrapTextChoiceChips({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //var textChoiceChips = context.watch<NewItemModel>().textChoiceChips;
    var textChoiceChips = [];

    var itemChips = [];
    return Wrap(
      alignment: WrapAlignment.start,
      spacing: 4.0,
      //runSpacing: 2.0,
      children: textChoiceChips
          .map((choiceChip) => ChoiceChip(
              label: Text(choiceChip.label),
              labelStyle: const TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.white),
              //selected: choiceChip.isSelected,
          selected: itemChips.contains(choiceChip.label),
              selectedColor: Colors.green,
              backgroundColor: Colors.blue,
              onSelected: (isSelected) {}))
          .toList(),
    );
  }
}

class TextChoiceChips extends StatelessWidget {
  const TextChoiceChips({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Wrap(
        spacing: 8.0,
        children: [
          const WrapTextChoiceChips(),
          InputChip(
            label: SizedBox(
              width: 150,
              child: TextField(
                decoration: const InputDecoration(
                  isDense: true,
                  isCollapsed: true,
                  hintText: 'Добавить',
                  border: InputBorder.none,
                ),
                onSubmitted: (value) {                },
              ),
            ),
            onPressed: () {},
            onDeleted: () {},
          ),
        ],
      ),
    );
  }
}

class WrapNumberChips extends StatefulWidget {
  const WrapNumberChips({
    Key? key, this.timeSet,
  }) : super(key: key);
  final TimeSetEntity? timeSet;

  @override
  State<WrapNumberChips> createState() => _WrapNumberChipsState();
}

class _WrapNumberChipsState extends State<WrapNumberChips> {
  var numberChips = <NumberChipsData>[];

  @override
  void initState() {
    super.initState();
    numberChips = widget.timeSet?.numberChips ?? <NumberChipsData>[];
  }
  @override
  Widget build(BuildContext context) {

    return ListTile(
      title: Wrap(
        spacing: 2.0,
        runSpacing: 2.0,
        children: numberChips
            .map((value) => InputChip(
                label: Text('$value'),
                onPressed: () {}))
            .toList(),
      ),
      trailing: IconButton(
          onPressed: (){},
          icon: const Icon(Icons.add)),
    );
  }
}
