import 'package:flutter/material.dart';

import '../widgets/my_scaffold.dart';

class FourthPage extends StatelessWidget {
  const FourthPage({Key? key}) : super(key: key);

  static const String title = "Страница 4";

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      current_index: 3,
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
