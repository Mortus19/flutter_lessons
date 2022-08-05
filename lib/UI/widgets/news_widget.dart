import 'package:flutter/material.dart';

import 'news.dart';

class NewsWidget extends StatelessWidget {
  final News info_news;

  const NewsWidget({Key? key, required this.info_news}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Container(
      width: (width > 420) ? width * 0.5 : width * 0.9,
      height: 300,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
          border: Border.all(width: 1.2),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(info_news.title,textAlign: TextAlign.center,),
          Expanded(
              child: Card(
            child: Image.asset(info_news.photoURL),
          )),
          Text(info_news.text,textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
