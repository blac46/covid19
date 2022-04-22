import 'package:covid_19_app/Statistics.dart';
import 'package:covid_19_app/covid_19.dart';
import 'package:covid_19_app/get_Started.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentindex  = 0;
  List pages=[
    // GetStarted(),
    Covid19(),
    Statistics()
  ];

  void _onTap(int selectedItem){
    setState(() {
      currentindex = selectedItem;
    });
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: pages.length,
      child: Scaffold(
        body: pages[
        currentindex
        ],
        bottomNavigationBar:
        BottomNavigationBar(
          currentIndex: currentindex,
          selectedItemColor: Colors.indigo,
          unselectedItemColor: Colors.grey,
          onTap: _onTap,
          items: const [

            BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(Icons.home_filled)
            ),
            BottomNavigationBarItem(
                label: 'Statistics',
                icon: Icon(Icons.analytics_outlined)
            ),
          ],
        ) ,
      ),
    );
  }
}
