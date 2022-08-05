import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_lessons/UI/widgets/news.dart';

import '../widgets/my_scaffold.dart';
import '../widgets/news_widget.dart';

List<News> my_news= [
  News(title: "Песы",text: """ Песы КРУТЬ""" , id: "1" , photoURL: "images/dogs/pes1.gif"),
  News(title: "Коты",text: """ Коты КРУТЬ""" , id: "2" , photoURL: "images/cats/kot1.gif"),
  News(title: "Лосы",text: """ Лосы КРУТЬ""" , id: "3" , photoURL: "images/moose/moose1.gif"),
];

class FirstScreen extends StatelessWidget {
  static const String title = "Страница 1";

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      title: title,
      body: buildBody(context),
    );
  }

  buildBody(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(top:10.0),
      itemCount: my_news.length,
      itemBuilder:(BuildContext context, int index) {
        return NewsWidget(info_news: my_news[index]);
      },
    );
  }
}
