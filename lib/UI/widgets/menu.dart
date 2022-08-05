import 'package:flutter/material.dart';

import 'my_scaffold.dart';

Widget buildMenu(BuildContext context, {width = 200}) {
  return Container(
    width: width,
    color: Colors.redAccent,
    child: Column(
      children: [
        SizedBox(
          height: 70,
        ),
        ListTile(
          title: Text("Страница1"),
          onTap: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (BuildContext context) {
              return pages[0];
            }));
          },
        ),
        ListTile(
          title: Text("Страница2"),
          onTap: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (BuildContext context) {
              return pages[1];
            }));
          },
        ),
        ListTile(
          title: Text("Страница3"),
          onTap: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (BuildContext context) {
              return pages[2];
            }));
          },
        ),
        ListTile(
          title: Text("Страница4"),
          onTap: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (BuildContext context) {
              return pages[3];
            }));
          },
        ),
      ],
    ),
  );
}
