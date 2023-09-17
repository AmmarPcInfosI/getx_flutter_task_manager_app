import 'package:flutter/material.dart';

class DateCard extends StatelessWidget {
   DateCard(
      {super.key,
      required this.month,
      required this.day,
      required this.c1,
      required this.c2,
      required this.wday,
      required this.txtc
      });
  String month;
  String day;
  Color c1;
  Color c2;
  Color txtc;
  String wday;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.14,
      width: MediaQuery.sizeOf(context).width * 0.18,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
              colors: [c1, c2],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter)),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              month,
              style: TextStyle(color: txtc),
            ),
            Text(
              day,
              style: TextStyle(color: txtc),
            ),
            Text(
              wday,
              style: TextStyle(color: txtc),
            ),
          ],
        ),
      ),
    );
  }
}
