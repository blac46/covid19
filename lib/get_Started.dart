import 'package:covid_19_app/covid_19.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intro_slider/slide_object.dart';

import 'Statistics.dart';
import 'botton_nav.dart';



class GetStarted extends StatefulWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigoAccent,
      body: SafeArea(
        child: Column(
          children: [

            Padding(
              padding:  EdgeInsets.only(top: 50),
              child: Center(
                child: CircleAvatar(
                  radius: 150,
                  backgroundColor: Colors.indigoAccent,
                  backgroundImage: AssetImage(
                    "images/im5.png"
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Text(
              "STAY SAFE",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 40
              ),
            ),
            Text(
              "China's small businesses have struggled ",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20
              ),
            ),
            Text(
              "     As the pandemic enters its third  ",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20
              ),
            ),
            Text(
              "     pandemic in early 2020.  ",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20
              ),
            ),
            SizedBox(height: 160,),
            Container(
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.circle,
                  color:Colors.white,size: 20,),
                  Icon(Icons.circle,
                    color:Colors.white,size: 20,),
                  Icon(Icons.circle,
                    color:Colors.white,size: 20,),

                ],
              ),
            ),
            SizedBox(height: 30,),
            GestureDetector(
              onTap: (){
                Get.to(()=>BottomNav());
                print("good");
              },
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white
                ),
                child: Center(
                  child: Text(
                    "Get Started",
                    style: TextStyle(
                      color: Colors.indigo,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
            ),
            //_buildBottomNav(BuildContext, context)
          ],
        ),
      ),
    );
  }

  //
}










