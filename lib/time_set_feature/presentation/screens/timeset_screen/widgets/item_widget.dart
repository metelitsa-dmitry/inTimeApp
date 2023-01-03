import 'package:flutter/material.dart';
import 'package:in_time/time_set_feature/domain/entities/item_of_set_entity.dart';
import '../../../../domain/entities/time_set_entity.dart';


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
        decoration: BoxDecoration(
          color: Colors.blueGrey[200],
          borderRadius: const BorderRadius.all(
            Radius.circular(5.0),
          ),
        ),
        child: ListTile(
          leading: StartTime(item: item),
          title: Wrap(
            children: [
              Wrap(
                alignment: WrapAlignment.start,
                children: itemChips
                    .map((value) => InputChip(
                          label: Text(value),
                          labelStyle:
                              const TextStyle(fontSize: 16, color: Colors.black),
                          disabledColor: Colors.white,
                        ))
                    .toList(),
              ),
              if (item.isPicture ?? false) IsPictureButton(item: item),
              if (item.isVerse ?? false) IsVerseButton(item: item),
              if (item.isTable ?? false) IsTableButton(item: item),
            ],
          ),
          subtitle: item.titleItem != '' ? ItemTitle(item: item) : null,
          trailing: MyPopupMenuButton(item: item),
        ),
      );
  }
}

class MyPopupMenuButton extends StatelessWidget {
  const MyPopupMenuButton({
    Key? key,
    required this.item,
  }) : super(key: key);

  final ItemOfSetEntity item;

  @override
  Widget build(BuildContext context) {
    // final _timeSet= context.watch<TimeModule>().timeSet;
    // final local = AppLocalizations.of(context)!;
    return PopupMenuButton(
        onSelected: (value) {
          switch (value) {
            case 1:
              // context.read<TimeSetModule>().insertItemAbove(index);
              break;
            case 2:
              // context.read<TimeSetModule>().insertItemUnder(index);
              break;
            case 3:
              // context.read<TimeSetModule>().deleteItemFromList(index);
              break;
            case 4:
              // context.read<TimeSetModule>().changeIsVerse(item);
              break;
            case 5:
              // context.read<TimeSetModule>().changeIsPicture(item);
              break;
            case 6:
              // context.read<TimeSetModule>().changeIsTable(item);
              break;
          }
        },
        itemBuilder: (BuildContext context) => [
              PopupMenuItem(
                value: 1,
                child: Row(
                  children: const [
                    Icon(Icons.arrow_upward),
                    SizedBox(width: 8),
                    Text('local.add'),
                  ],
                ),
              ),
              PopupMenuItem(
                value: 2,
                child: Row(
                  children: const [
                    Icon(Icons.arrow_downward),
                    SizedBox(width: 8),
                    Text('local.add'),
                  ],
                ),
              ),
              PopupMenuItem(
                value: 4,
                child: Row(
                  children: const [
                    Icon(Icons.menu_book),
                    SizedBox(width: 8),
                    Text('{local.quote} '),
                  ],
                ),
              ),
              PopupMenuItem(
                value: 5,
                child: Row(
                  children: const [
                    Icon(Icons.photo_album),
                    SizedBox(width: 8),
                    Text('{local.illustration} '),
                  ],
                ),
              ),
              PopupMenuItem(
                value: 6,
                child: Row(
                  children: const [
                    Icon(Icons.table_rows_outlined),
                    SizedBox(width: 8),
                    Text('{local.table} '),
                  ],
                ),
              ),
              PopupMenuItem(
                value: 3,
                child: Row(
                  children: const [
                    Icon(Icons.delete_forever),
                    SizedBox(width: 8),
                    Text('{local.delete} '),
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          item.startItemOfSetFormat,
          style: const TextStyle(fontSize: 18),
        ),
        Text(
          '${item.durationHourOfItemSet}:${item.durationMinutesOfItemSet}:${item.durationSecondsOfItemSet}',
          style: const TextStyle(fontSize: 14, color: Colors.black38),
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
