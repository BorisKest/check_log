import 'package:chek_me/src/view/calendar_screen.dart';
import 'package:chek_me/src/view/common/my_button.dart';
import 'package:chek_me/src/view/list_screen.dart';
import 'package:chek_me/src/view/image_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.all(size.height * 0.1),
              child: const Text(' Check - me !'),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MyButton(
                size: size,
                callback: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return const ImageScreen();
                      },
                    ),
                  );
                },
                icon: Icons.document_scanner_outlined,
                text: 'Scan',
              ),
              MyButton(
                size: size,
                callback: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const ListScreen()),
                  );
                },
                icon: Icons.backup_table_sharp,
                text: 'My checks',
              ),
              MyButton(
                size: size,
                callback: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => const CalendarScreen()),
                  );
                },
                icon: Icons.calendar_month,
                text: 'Calendar',
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              top: size.height * 0.1,
              left: size.height * 0.01,
              right: size.height * 0.01,
            ),
            child: SizedBox(
              height: size.height * 0.6,
              child: Card(
                color: Colors.blueGrey[100],
                child: Padding(
                  padding: EdgeInsets.all(size.height * 0.1),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView(),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
