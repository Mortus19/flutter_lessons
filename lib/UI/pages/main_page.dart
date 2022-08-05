import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_lessons/UI/widgets/menu.dart';

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainPage();
  }
}

class _MainPage extends State<MainPage> {
  double progress_bar = 0;
  String message = "Try to click";

  void Reset() {
    setState(() {
      progress_bar = 0;
    });
  }

  void Start() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        progress_bar += 0.1;
      });
      if (progress_bar >= 1) {
        setState(() {
          progress_bar = 1;
        });
        timer.cancel();
      }
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      endDrawer:get_menu(context),
      bottomNavigationBar: BackButton(onPressed: Reset),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("Главная Страница"),
        centerTitle: true,
      ),
      backgroundColor: Colors.grey,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: LinearProgressIndicator(value: progress_bar),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              "Progres : ${progress_bar * 100} %",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              message,
              style: const TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: Start,
        child: Icon(Icons.upload),
        tooltip: "Снос Кабины",
      ),
    );
  }
}
