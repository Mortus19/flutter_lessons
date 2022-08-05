import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/menu.dart';
import '../widgets/pattern_page.dart';

class MoosePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return get_pattern_page(context,
        namepage: "Лосярня",
        title1: "Лось",
        title2: "Ещё Лось",
        URLpicture1: "assets/images/moose/moose1.gif",
        Urlpicture2: "assets/images/moose/moose2.gif");
  }
}