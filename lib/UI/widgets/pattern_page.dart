import 'package:flutter/material.dart';
import 'package:flutter_lessons/UI/widgets/menu.dart';
import 'package:flutter_lessons/UI/widgets/my_widget.dart';


Widget get_pattern_page(BuildContext context,
    {String namepage = "",
    String title1 = "",
    String title2 = "",
    String URLpicture1 = "",
    String Urlpicture2 = ""}) {
  return Scaffold(
    backgroundColor: Colors.black,
    endDrawer: get_menu(context),
    appBar: AppBar(
      backgroundColor: Colors.blueGrey,
      title: Text(namepage),
      centerTitle: true,
    ),
    body: Center(
        child: Container(
            child: Column(
      children: [
        Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            title1,
            style: TextStyle(color: Colors.deepOrangeAccent, fontSize: 20),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(5),
          child: My_widget(URLpicture: URLpicture1),
        ),
        Padding(
          padding: EdgeInsets.all(5),
          child: Text(
            title2,
            style: TextStyle(color: Colors.deepOrangeAccent, fontSize: 20),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: My_widget(URLpicture: Urlpicture2),
        ),
        Padding(
            padding: EdgeInsets.all(10),
            child:
                ElevatedButton(onPressed: () {

                }
                    , child: Text("To Play Sounds")))
      ],
    ))),
  );
}
