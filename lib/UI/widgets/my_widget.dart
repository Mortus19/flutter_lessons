import 'package:flutter/material.dart';

class My_widget extends StatelessWidget {
  final String URLpicture;

  My_widget({Key? key, this.URLpicture = ""});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Container(
      width: w * 0.6,
      height: h * 0.3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.white,
          width: 5,
        ),
        //color: Colors.white,
      ),
      child: Center(
        child: Column(
          children: [
            Expanded(child: Image.asset(URLpicture)),
          ],
        ),
      ),
    );
  }
}
