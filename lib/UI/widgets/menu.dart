import 'package:flutter/material.dart';
import 'package:flutter_lessons/UI/pages/dogs_page.dart';

import '../pages/main_page.dart';
import '../pages/cats_page.dart';
import '../pages/moose_page.dart';

Widget get_menu(BuildContext context) {
  double w = MediaQuery.of(context).size.width;
  double h = MediaQuery.of(context).size.height;
  return Container(
      width: w * 0.3,
      color: Colors.amber,
      child: Column(
        children: [
          ListTile(
            title: Text("Главная", textAlign: TextAlign.center),
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (BuildContext context) {
                return MainPage();
              }));
            },
            contentPadding: EdgeInsets.all(20),
          ),
          ListTile(
            title: Text("Идем в Псарню", textAlign: TextAlign.center),
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (BuildContext context) {
                return DogsPage();
              }));
            },
            contentPadding: EdgeInsets.all(20),
          ),
          ListTile(
            title: Text("Идем в Котарню", textAlign: TextAlign.center),
            onTap: () {

              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (BuildContext context) {
                return CatsPage();
              }));
            },
            contentPadding: EdgeInsets.all(20),
          ),
          ListTile(
            title: Text("Идем в Лосярню", textAlign: TextAlign.center),
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (BuildContext context) {
                return MoosePage();
              }));
            },
            contentPadding: EdgeInsets.all(20),
          ),
        ],
      ));
}
