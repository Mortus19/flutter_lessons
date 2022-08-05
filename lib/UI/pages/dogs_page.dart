import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_lessons/UI/widgets/menu.dart';
import 'package:flutter_lessons/UI/widgets/pattern_page.dart';

class DogsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return get_pattern_page(context,
        namepage: "Псарня",
        title1: "Пес",
        title2: "Ещё Пес",
        URLpicture1: "assets/images/dogs/pes1.gif",
        Urlpicture2: "assets/images/dogs/pes2.gif");
  }
}
