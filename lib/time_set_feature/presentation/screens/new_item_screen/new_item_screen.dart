import 'package:flutter/material.dart';
import 'widgets/text_input_field_widget.dart';

class NewItemScreen extends StatelessWidget {
   const NewItemScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const NewItemBody();
  }
}

class NewItemBody extends StatelessWidget {
  const NewItemBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('New'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const TextInputFieldWidget(),
            // const WrapItemChips(),
            const TextChoiceChips(),
            const WrapNumberChips(),
            ListTile(
              leading: const Icon(Icons.menu_book_outlined),
              title: Text('зачитать цитату: '),
              trailing: Switch(
                  value: false,
                  onChanged: (bool value) {
                    value = true;
                  }),
            ),
            ListTile(
              leading: const Icon(Icons.photo_size_select_actual_outlined),
              title: Text('Обсудить иллюстрацию: '),
              trailing: Switch(
                  value: false,
                  onChanged: (bool value) {
                    value = true;
                  }),
            ),
            ListTile(
              leading: const Icon(Icons.table_chart_outlined),
              title: Text('Таблица: '),
              trailing: Switch(
                  value: false,
                  onChanged: (bool value) {
                    value =true;
                  }),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
         Navigator.pop(context);
        },
        child: const Icon(Icons.save),
      ),
    );
  }
}



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
                decoration: InputDecoration(
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

class WrapNumberChips extends StatelessWidget {
  const WrapNumberChips({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final numberChips = [];

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
