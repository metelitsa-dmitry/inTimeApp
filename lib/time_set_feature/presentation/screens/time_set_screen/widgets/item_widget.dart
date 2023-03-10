import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:in_time/time_set_feature/domain/entities/item_of_set_entity.dart';
import 'package:in_time/time_set_feature/presentation/screens/time_set_screen/bloc_time_set/bloc_time_set_bloc.dart';
import '../../../../domain/entities/time_set_entity.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({
    Key? key,
    required this.item,
    required this.timeSet,
    required this.index,
  }) : super(key: key);
  final ItemOfSetEntity item;
  final TimeSetEntity timeSet;
  final int index;

  @override
  Widget build(BuildContext context) {
    final itemChips = item.chipsItem ?? [];
    return Container(
        margin: const EdgeInsets.only(left: 5.0, right: 5.0, bottom: 5.0),
        // padding:
        //     const EdgeInsets.only(left: 5.0, right: 5.0, top: 5.0, bottom: 5.0),
        decoration: const BoxDecoration(
          color: Color(0xFF90A4AE),
          borderRadius: BorderRadius.all(
            Radius.circular(5.0),
          ),
        ),
        child: ListTile(
          leading: StartTime(item: item),
          title: Wrap(
            children: [
              Wrap(
                alignment: WrapAlignment.start,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: itemChips
                    .map((value) => InputChip(
                          label: Text(value),
                         // labelStyle:
                            //  const TextStyle(fontSize: 16, color: Colors.black),
                         // disabledColor: Colors.white,
                        ))
                    .toList(),
              ),
              if (item.isPicture ?? false) IsPictureButton(item: item),
              if (item.isVerse ?? false) IsVerseButton(item: item),
              if (item.isTable ?? false) IsTableButton(item: item),
            ],
          ),
          subtitle: item.titleItem != '' ? ItemTitle(item: item) : null,
          trailing: MyPopupMenuButton(index: index),
        ),
      );
  }
}

class MyPopupMenuButton extends StatelessWidget {
  const MyPopupMenuButton({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    final blocTimeSet = context.read<TimeSetBloc>();
    return PopupMenuButton(
        onSelected: (value) {
          switch (value) {
            case 1:
              blocTimeSet.add(InsertItemInSetEvent(index: index));
              break;
            case 2:
              blocTimeSet.add(InsertItemInSetEvent(index: index + 1));
              break;
            case 3:
              blocTimeSet.add(RemoveItemOfSetEvent(id: index));
              break;
          }
        },
        itemBuilder: (BuildContext context) => [
              PopupMenuItem(
                value: 1,
                child: Row(
                  children: [
                    const Icon(Icons.arrow_upward),
                    const SizedBox(width: 8),
                    Text(AppLocalizations.of(context).add),
                  ],
                ),
              ),
              PopupMenuItem(
                value: 2,
                child: Row(
                  children: [
                    const Icon(Icons.arrow_downward),
                    const SizedBox(width: 8),
                    Text(AppLocalizations.of(context).add),
                  ],
                ),
              ),
              PopupMenuItem(
                value: 3,
                child: Row(
                  children: [
                    const Icon(Icons.delete_forever),
                    const SizedBox(width: 8),
                    Text(AppLocalizations.of(context).delete),
                  ],
                ),
              ),
            ]);
  }
}

class StartTime extends StatelessWidget {
  const StartTime({
    Key? key,
    required this.item,
  }) : super(key: key);

  final ItemOfSetEntity item;

  @override
  Widget build(BuildContext context) {
    final startTime = TimeOfDay.fromDateTime(item.startItemOfSet).format(context);
    final durationHour = item.durationHourOfItemSet.toString().padLeft(2,'0');
    final durationMinutes = item.durationMinutesOfItemSet.toString().padLeft(2,'0');
   final durationSeconds = item.durationSecondsOfItemSet.toString().padLeft(2,'0');
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          startTime.toString(),
          style: const TextStyle(fontSize: 18),
        ),
        Text(
          '$durationHour:$durationMinutes:$durationSeconds',
          style: const TextStyle(fontSize: 14,
              //color: Colors.black38
          ),
        ),
      ],
    );
  }
}

class ItemTitle extends StatelessWidget {
  const ItemTitle({
    Key? key,
    required this.item,
  }) : super(key: key);

  final ItemOfSetEntity item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Text(
        item.titleItem ?? '',
        style: const TextStyle(
          fontSize: 16.0,
        ),
        textAlign: TextAlign.left,
      ),
    );
  }
}

class IsTableButton extends StatelessWidget {
  const IsTableButton({
    Key? key,
    required this.item,
  }) : super(key: key);

  final ItemOfSetEntity item;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.table_rows_outlined),
      //color: item.isTable ? Colors.black : Colors.grey,
      onPressed: () {
        //context.read<TimeSetModule>().changeIsTable(item);
      },
    );
  }
}

class IsVerseButton extends StatelessWidget {
  const IsVerseButton({
    Key? key,
    required this.item,
  }) : super(key: key);

  final ItemOfSetEntity item;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.menu_book_outlined),
      //color: item.isVerse ? Colors.black : Colors.grey,
      onPressed: () {
        // context.read<TimeSetModule>().changeIsVerse(item);
      },
    );
  }
}

class IsPictureButton extends StatelessWidget {
  const IsPictureButton({
    Key? key,
    required this.item,
  }) : super(key: key);

  final ItemOfSetEntity item;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.photo_album_outlined),
      //color: item.isPicture ? Colors.black : Colors.grey,
      onPressed: () {
        //context.read<TimeSetModule>().changeIsPicture(item);
      },
    );
  }
}
