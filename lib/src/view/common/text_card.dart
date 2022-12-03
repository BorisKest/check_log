import 'package:flutter/material.dart';

class TextFieldCard extends StatelessWidget {
  TextFieldCard({
    Key? key,
    required this.size,
    required this.text,
    required this.textController,
  }) : super(key: key);

  final Size size;
  final String text;
  TextEditingController textController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(size.height * 0.003),
      child: Card(
        color: Colors.grey,
        child: Column(children: [
          Padding(
            padding: EdgeInsets.all(size.height * 0.005),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('$text: '),
                SizedBox(
                  width: size.width * 0.6,
                  child: TextField(
                    controller: textController,
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
