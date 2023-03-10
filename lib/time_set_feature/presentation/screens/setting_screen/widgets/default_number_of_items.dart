
part of '../setting_screen.dart';

class _DefaultNumbersOfItems extends StatefulWidget {


  const _DefaultNumbersOfItems({Key? key}) : super(key: key);

  @override
  State<_DefaultNumbersOfItems> createState() => _DefaultNumbersOfItemsState();
}

class _DefaultNumbersOfItemsState extends State<_DefaultNumbersOfItems> {
  late final TextEditingController _controllerNumberItems;
  @override
  initState(){
    super.initState();
    _controllerNumberItems = TextEditingController();

  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.watch<SettingsBloc>();
    final  defaultNumberItems = bloc.state.mapOrNull(loaded: (state) => state.defaultNumberItems);
    _controllerNumberItems.text = defaultNumberItems.toString();
    return Column(children: [
      const SizedBox(height: 16),
      Text('Количество пунктов по умолчанию: '),
      const SizedBox(height: 8),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: const Icon(Icons.remove),
                  onPressed: () {
                    bloc.add(const SettingsEvent.decreaseCount());
                    _controllerNumberItems.text = defaultNumberItems.toString();
                    // setState(() {
                    //   resultDialog = resultDialog.copyWith(counter: max(1, resultDialog.counter -1));
                    // });
                  },
                ),
                SizedBox(
                  width: 63.0,
                  child: TextField(
                    controller: _controllerNumberItems,
                    readOnly: true,
                    // keyboardType: TextInputType.number,
                    // maxLines: 1,
                    //autofocus: true,
                    //inputFormatters: [MyInputTextFormatter()],
                    //scrollPadding: EdgeInsets.all(8),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      isCollapsed: true,
                      contentPadding: const EdgeInsets.all(8),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    // onChanged: (value) {
                    //   _modelRead.setCounter(value);
                    //   },
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {
                    bloc.add(const SettingsEvent.increaseCount());
                    _controllerNumberItems.text = defaultNumberItems.toString();
                    // setState(() {
                    //   resultDialog = resultDialog.copyWith(counter: resultDialog.counter +1);
                    // });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    ],);
  }
}
