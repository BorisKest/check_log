import 'package:chek_me/src/view/common/text_card.dart';
import 'package:flutter/material.dart';

class ImageScreen extends StatefulWidget {
  const ImageScreen({super.key});

  @override
  State<ImageScreen> createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
  late TextEditingController titleTextController;
  late TextEditingController dateTextController;
  late TextEditingController discriptionTextController;
  late TextEditingController totalTextController;

  @override
  void initState() {
    super.initState();
    titleTextController = TextEditingController();
    dateTextController = TextEditingController();
    discriptionTextController = TextEditingController();
    totalTextController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.done),
          ),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: SizedBox(
            height: size.height + size.height * 0.5,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(size.height * 0.01),
                  child: const Text('Image'),
                ),
                Padding(
                  padding: EdgeInsets.all(size.height * 0.003),
                  child: SizedBox(
                    height: size.height * 0.5,
                    width: size.height * 0.5,
                    child: const Card(
                      color: Colors.blueGrey,
                      child: Center(
                        child: Icon(Icons.image),
                      ),
                    ),
                  ),
                ),
                TextFieldCard(
                  size: size,
                  text: 'title',
                  textController: titleTextController,
                ),
                TextFieldCard(
                  size: size,
                  text: 'date',
                  textController: dateTextController,
                ),
                TextFieldCard(
                  size: size,
                  text: 'discription',
                  textController: discriptionTextController,
                ),
                TextFieldCard(
                  size: size,
                  text: 'total',
                  textController: totalTextController,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
