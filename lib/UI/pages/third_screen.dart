import 'package:flutter/material.dart';

import '../widgets/my_scaffold.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);
  static const String title = "Страница 3";

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      current_index: 2,
      title: title,
      body: buildBody(context),
    );
  }

  buildBody(BuildContext context) {
    return Center(
      child: Text(title),
    );
  }
}
