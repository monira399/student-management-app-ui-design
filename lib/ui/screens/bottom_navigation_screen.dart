import 'package:flutter/material.dart';
import 'package:ui_design/ui/screens/profile_screen.dart';
import 'package:ui_design/ui/screens/report_screen.dart';

import 'home_screen.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {

  int selectedIndex = 0;


  final List<Widget> screens =[
    HomeScreen(),
    ReportScreen(),
    ProfileScreen(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (index){
            setState(() {
              selectedIndex = index;
            });
          },
          backgroundColor: Theme.of(context).bottomNavigationBarTheme.backgroundColor,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.report),
                label: 'Report'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile'),

          ]),


    );
  }
}
