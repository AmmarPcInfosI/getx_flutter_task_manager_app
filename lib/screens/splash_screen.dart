import 'package:flutter/material.dart';
import 'package:getx_flutter_task_manager_app/screens/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3)).then((value) {
     Navigator.push(context, MaterialPageRoute(builder: (context) => const LightHomeScreen(),)); 

    },);
    return Container(
      decoration: const BoxDecoration(gradient: LinearGradient(colors:[Colors.blue,Colors.blueAccent],begin: Alignment.topLeft,end: Alignment.bottomRight )),
      
      child:Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           const SizedBox(

           ),
           Image(image: const AssetImage("res/imgs/planning.png"),height: MediaQuery.sizeOf(context).width/3,width: MediaQuery.sizeOf(context).width/3),
           Container(margin: EdgeInsets.all(10),child: const Text('My Task Planner App',style: TextStyle(fontSize: 20,color: Colors.white,decoration: TextDecoration.none),))
          ],
        ),
      ),
    );
  }
}