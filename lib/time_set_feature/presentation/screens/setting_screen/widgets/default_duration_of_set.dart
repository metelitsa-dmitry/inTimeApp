
part of '../setting_screen.dart';

class DefaultDurationOfSet extends StatelessWidget {
  const DefaultDurationOfSet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SizedBox(height: 16),
      Text('Продолжительность по умолчанию: '),
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
                    // setState(() {
                    //   resultDialog = resultDialog.copyWith(counter: max(1, resultDialog.counter -1));
                    // });
                  },
                ),
                SizedBox(
                  width: 63.0,
                  child: TextField(
                    //controller: _controllerCounter,
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
