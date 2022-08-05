import 'package:flutter/material.dart';

import 'menu.dart';

class MyScaffold extends StatelessWidget {
  final String title;
  final Widget body;

  MyScaffold({Key? key, this.title = "Заголовок", required this.body})
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
      );
    }
  }
}
