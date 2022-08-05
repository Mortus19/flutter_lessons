
import 'package:flutter/material.dart';
import 'package:flutter_lessons/UI/pages/first_screen.dart';
import 'package:flutter_lessons/UI/pages/forsth_screen.dart';
import 'package:flutter_lessons/UI/pages/second_screen.dart';
import 'package:flutter_lessons/UI/pages/third_screen.dart';

import 'menu.dart';

final pages = [
  FirstScreen(),
  SecondPage(),
  ThirdPage(),
  FourthPage(),
];

class MyScaffold extends StatelessWidget {
  final String title;
  final Widget body;
  final int current_index;

  MyScaffold(
      {Key? key,
      this.title = "Заголовок",
      required this.body,
      required this.current_index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    if (width > 420) {
      return Scaffold(
        appBar: AppBar(
          title: Text(title),
          centerTitle: true,
        ),
        body: Row(
          children: [Expanded(child: body), buildMenu(context, width: 150)],
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(title: Text(title), centerTitle: true),
        drawerEdgeDragWidth: width * 0.7,
        endDrawer: buildMenu(context, width: width * 0.7),
        body: body,
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (BuildContext context) {
              return pages[index];
            }));
          },
          currentIndex: current_index,
          backgroundColor: Colors.purpleAccent,
          selectedItemColor: Colors.deepOrangeAccent,
          unselectedItemColor: Colors.blue,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.newspaper),
              label: "News",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.ac_unit),
              label: "Dogs",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_rounded),
              label: "Cats",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_alert),
              label: "Moose",
            ),
          ],
        ),
      );
    }
  }
}
