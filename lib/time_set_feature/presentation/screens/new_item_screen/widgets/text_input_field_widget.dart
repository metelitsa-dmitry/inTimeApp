
import 'package:flutter/material.dart';


class TextInputFieldWidget extends StatelessWidget {
  const TextInputFieldWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text(
            'Описание:',
            style: const TextStyle(fontSize: 16),
          ),
          const Divider(
            height: 8.0,
          ),
          TextField(
            maxLines: null,
            //maxLength:100 ,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            onChanged: (value) { },
          ),
        ],
      ),
    );
  }
}
