import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/date_cards.dart';
import '../components/task_card.dart';

class LightHomeScreen extends StatefulWidget {
  const LightHomeScreen({super.key});

  @override
  State<LightHomeScreen> createState() => _LightHomeScreenState();
}

class _LightHomeScreenState extends State<LightHomeScreen> {
  void toggleTheme() {
    Get.isDarkMode ? Get.changeThemeMode(ThemeMode.light) : Get.changeThemeMode(ThemeMode.dark);
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Get.isDarkMode ? Colors.black : Colors.white,
        leading: Icon(
          Icons.menu,
          color: Get.isDarkMode ? Colors.white : Colors.black,
        ),
        bottomOpacity: 0.0,
        elevation: 0.0,
        title: Text(
          'My Events',
          style: TextStyle(
            color: Get.isDarkMode ? Colors.white : Colors.black,
          ),
        ),
        actions: [
          Icon(
            Icons.search,
            color: Get.isDarkMode ? Colors.white : Colors.black,
          ),
          IconButton(
            onPressed: toggleTheme,
            icon: Icon(Get.isDarkMode ? Icons.light_mode : Icons.dark_mode),
            color: Get.isDarkMode ? Colors.white : Colors.black,
          )
        ],
      ),
      backgroundColor: Get.isDarkMode ? Colors.black : Colors.white,
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('June 11, 2022',
                        style: TextStyle(
                            color:
                                Get.isDarkMode ? Colors.white : Colors.black)),
                    Text('Today',
                        style: TextStyle(
                            color:
                                Get.isDarkMode ? Colors.white : Colors.black))
                  ],
                ),
                Container(
                  height: MediaQuery.sizeOf(context).height * 0.07,
                  width: MediaQuery.sizeOf(context).width * 0.18,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      colors: [
                        Colors.deepOrange.shade800,
                        Colors.deepOrangeAccent.shade100
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'Add Event',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(
                vertical: MediaQuery.sizeOf(context).height * 0.02,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DateCard(
                    month: 'JUN',
                    day: '11',
                    c1: Colors.deepOrange.shade800,
                    c2: Colors.deepOrangeAccent.shade100,
                    wday: 'SAT',
                    txtc:Colors.white
                  ),
                  DateCard(
                    month: 'JUN',
                    day: '12',
                    c1: Get.isDarkMode ? Colors.black : Colors.white,
                    c2: Get.isDarkMode ? Colors.black : Colors.white,
                    wday: 'SUN',
                    txtc: Get.isDarkMode ? Colors.white : Colors.black,
                  ),
                  DateCard(
                    month: 'JUN',
                    day: '13',
                    c1: Get.isDarkMode ? Colors.black : Colors.white,
                    c2: Get.isDarkMode ? Colors.black : Colors.white,
                    wday: 'MON',
                    txtc: Get.isDarkMode ? Colors.white : Colors.black,
                  ),
                  DateCard(
                    month: 'JUN',
                    day: '14',
                    c1: Get.isDarkMode ? Colors.black : Colors.white,
                    c2: Get.isDarkMode ? Colors.black : Colors.white,
                    wday: 'TUE',
                    txtc: Get.isDarkMode ? Colors.white : Colors.black,
                  ),
                  DateCard(
                    month: 'JUN',
                    day: '15',
                    c1: Get.isDarkMode ? Colors.black : Colors.white,
                    c2: Get.isDarkMode ? Colors.black : Colors.white,
                    wday: 'WED',
                    txtc: Get.isDarkMode ? Colors.white : Colors.black,
                  ),
                ],
              ),
            ),
            TaskCard(
                task: 'watch youtube',
                date: 'JUN 11, 2022',
                duration: '1:47 PM - 3:47 PM'),
            TaskCard(
                task: 'go to gym 🎲',
                date: 'JUN 11, 2022',
                duration: '3:46 PM-6:00 PM'),
            TaskCard(
                task: 'go to football ⚽︎ ⚽︎ ⚽︎',
                date: 'JUN 11, 2022',
                duration: '9:45 PM-11:45 PM')
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(unselectedItemColor: Colors.red,fixedColor: Colors.redAccent,
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                Get.bottomSheet(
                  Container(decoration: BoxDecoration(
                    color: Get.isDarkMode ? Colors.black : Colors.white
                  ),
                    height: MediaQuery.sizeOf(context).height * 0.375,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: MediaQuery.sizeOf(context).width * 0.97,
                          height: MediaQuery.sizeOf(context).height * 0.11,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text('Done',
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.w800)),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25)),
                              backgroundColor:
                                   Colors.blue,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.sizeOf(context).width * 0.97,
                          height: MediaQuery.sizeOf(context).height * 0.11,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text('Archive',
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.w800)),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25)),
                              backgroundColor:
                                   Colors.grey,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.sizeOf(context).width * 0.97,
                          height: MediaQuery.sizeOf(context).height * 0.11,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'Cancel',
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w800),
                            ),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25)),
                              backgroundColor:
                                  Colors.red,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
              icon: Icon(Icons.menu),
            ),
            label: 'Events',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                Get.bottomSheet(
                  Container(decoration: BoxDecoration(
                    color: Get.isDarkMode ? Colors.black : Colors.white
                  ),
                    height: MediaQuery.sizeOf(context).height * 0.25,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: MediaQuery.sizeOf(context).width * 0.97,
                          height: MediaQuery.sizeOf(context).height * 0.11,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text('Archive',
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.w800)),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25)),
                              backgroundColor:
                                 Colors.grey,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.sizeOf(context).width * 0.97,
                          height: MediaQuery.sizeOf(context).height * 0.11,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'Cancel',
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w800),
                            ),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25)),
                              backgroundColor:
                                   Colors.red,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
              icon: Icon(Icons.done_rounded),
            ),
            label: 'Done',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {},
              icon: Icon(Icons.archive_outlined),
            ),
            label: 'Archive',
          )
        ],
      ),
    );
  }
}
