import 'package:flutter/material.dart';

class News {
  final String title;
  final String text;
  final String photoURL;
  final String id;

  const News(
      {this.title = "Заголовок",
      this.text = """      текст
      текст
      новость 
      супер новость
      """,
      this.photoURL = "",
      this.id = "01nn"});
}
