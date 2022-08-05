import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/menu.dart';
import '../widgets/pattern_page.dart';

class CatsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return get_pattern_page(context,
        namepage: "Котарня a.k.a Кошатник",
        title1: "Кот",
        title2: "Ещё Кот",
        URLpicture1: "assets/images/cats/kot1.gif",
        Urlpicture2: "assets/images/cats/kot2.gif");
  }
}