
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    Key? key,
    required this.size,
    required this.callback,
    required this.icon,
    required this.text,
  }) : super(key: key);

  final Size size;
  final VoidCallback callback;
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(size.height * 0.0011),
      child: Row(
        children: [
          MaterialButton(
            onPressed: callback,
            child: Padding(
              padding: EdgeInsets.all(size.height * 0.003),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(icon),
                  Text(text),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
