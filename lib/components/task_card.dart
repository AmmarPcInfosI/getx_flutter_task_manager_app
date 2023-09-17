import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  TaskCard(
      {super.key,
      required this.task,
      required this.date,
      required this.duration});
  String task;
  String date;
  String duration;

  @override
  Widget build(BuildContext context) {
    return Container(margin: EdgeInsets.symmetric(vertical: MediaQuery.sizeOf(context).height*0.005),
      height: MediaQuery.sizeOf(context).height * 0.15,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(colors: [
            Colors.deepOrange.shade800,
            Colors.deepOrangeAccent.shade100
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  task,
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
                Icon(
                  Icons.more_horiz,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(5),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      child: Icon(
                        Icons.calendar_today,
                        color: Colors.white,
                        size: 12,
                      ),
                      margin: EdgeInsets.symmetric(horizontal: 5),
                    ),
                    Text(
                      'JUN 11, 2022',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      child: Icon(
                        Icons.access_time,
                        color: Colors.white,
                        size: 12,
                      ),
                      margin: EdgeInsets.symmetric(horizontal: 5),
                    ),
                    Text(
                      '1:47 PM - 3:47 PM',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
