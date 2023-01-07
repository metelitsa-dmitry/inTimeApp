import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc_add_update_item/bloc_add_update_item_bloc.dart';

class AddUpdateItemWidget extends StatelessWidget {
  const AddUpdateItemWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final stateItem = context.watch<AddUpdateItemBloc>().state.itemOfSet;
   final chipsItem = stateItem?.chipsItem ?? [];
   final isPicture = stateItem?.isPicture ?? false;
   final isVerse = stateItem?.isVerse ?? false;
   final isTable = stateItem?.isTable ?? false;

///TODO refactor
    return Container(
      margin:
          const EdgeInsets.only(left: 5.0, right: 5.0, bottom: 5.0, top: 5.0),
      decoration: BoxDecoration(
        color: Colors.blueGrey[200],
        borderRadius: const BorderRadius.all(
          Radius.circular(5.0),
        ),
      ),
      child: ListTile(
        leading: const StartTime(),
        title: Wrap(
          children: [
            Wrap(
              alignment: WrapAlignment.start,
              children: chipsItem
                  .map((value) => ChoiceChip(
                        label: Text(value),
                        labelStyle: const TextStyle(fontSize: 16, color: Colors.white),
                        selected: false,
                        disabledColor: Colors.blueGrey,
                        selectedColor: Colors.blueGrey,
                      ))
                  .toList(),
            ),
             if (isPicture) const IsPictureButton(),
            if (isVerse) const IsVerseButton(),
            if (isTable) const IsTableButton(),
          ],
        ),
        // subtitle: item.titleItem != '' ? ItemTitle(item: item) : null,
        //trailing: const DurationItem(),
      ),
    );
  }
}

class StartTime extends StatelessWidget {
  const StartTime({
    Key? key,
    //this.itemOfSet,
  }) : super(key: key);
  //final ItemOfSetEntity? itemOfSet;

  @override
  Widget build(BuildContext context) {
    final stateItem = context.watch<AddUpdateItemBloc>().state.itemOfSet;
    final startTime = stateItem?.startItemOfSet ?? DateTime(0,0,0,0,0,0);
    String formattedDate = TimeOfDay.fromDateTime(startTime).format(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          formattedDate,
          style: const TextStyle(fontSize: 18),
        ),
        const DurationItem(),
      ],
    );
  }
}

class DurationItem extends StatelessWidget {
  const DurationItem({
    Key? key,
    //this.itemOfSet,
  }) : super(key: key);
  //final ItemOfSetEntity? itemOfSet;

  @override
  Widget build(BuildContext context) {
    final stateItem = context.watch<AddUpdateItemBloc>().state.itemOfSet;
    final durationHourOfItem = stateItem?.durationHourOfItemSet.toString().padLeft(2,'0') ?? 0;
    final durationMinutesOfItem = stateItem?.durationMinutesOfItemSet.toString().padLeft(2,'0') ?? 0;
    //final durationSecondsOfItem= stateItem?.durationSecondsOfItemSet.toString().padLeft(2,'0') ?? 0;

    return Text('$durationHourOfItem:$durationMinutesOfItem',
        style: const TextStyle(fontSize: 14, color: Colors.black38));
    }


  }


class IsTableButton extends StatelessWidget {
  const IsTableButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.table_rows_outlined),
      color: Colors.blueGrey,
      onPressed: () {},
    );
  }
}

class IsVerseButton extends StatelessWidget {
  const IsVerseButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.menu_book),
      color: Colors.blueGrey,
      onPressed: () {},
    );
  }
}

class IsPictureButton extends StatelessWidget {
  const IsPictureButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.photo_size_select_actual_outlined),
      color: Colors.blueGrey,
      onPressed: () {},
    );
  }
}
