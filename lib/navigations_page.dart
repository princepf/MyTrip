import 'package:flutter/material.dart';
import 'package:the_traveller/home_page.dart';

import 'explore_page.dart';
import 'profile_screen.dart';
import 'trips_page.dart';

class NavigationsPage extends StatefulWidget {
  @override
  _NavigationsPageState createState() => _NavigationsPageState();
}

class _NavigationsPageState extends State<NavigationsPage> {
  int _currentIndex = 0;
  List<Widget> screens = [
    HomePage(),
    ExplorePage(),
    TripsPage(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) => setState(() => _currentIndex = index),
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        selectedItemColor: Color(0xff0ccfb1),
        unselectedItemColor: Colors.black,
        selectedFontSize: 15,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Explore"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline), label: "Trips"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outlined), label: "Profile"),
        ],
      ),
      body: Center(child: screens.elementAt(_currentIndex)),
    );
  }

  // int _currentIndex = 0;

  // List<Widget> screen = [
  //   HomePage(),
  //   ProfileScreen(),
  // ];

  // @override
  // Widget build(BuildContext context) {
  //   return SafeArea(
  //     child: Scaffold(
  //       backgroundColor: Colors.white,
  //       body: Center(
  //         child: screen.elementAt(_currentIndex),
  //       ),

  //       //BottomNavigationBar
  //       bottomNavigationBar: BottomNavigationBar(
  //         onTap: (index) => setState(() {
  //           _currentIndex = index;
  //         }),
  //         currentIndex: _currentIndex,
  //         type: BottomNavigationBarType.fixed,
  //         showUnselectedLabels: false,
  //         selectedItemColor: Color(0xff0ccfb1),
  //         unselectedItemColor: Colors.black,
  //         selectedFontSize: 15,
  //         items: <BottomNavigationBarItem>[
  //           BottomNavigationBarItem(
  //               icon: Icon(Icons.home_outlined), label: "Home"),
  //           BottomNavigationBarItem(icon: Icon(Icons.search), label: "Explore"),
  //           BottomNavigationBarItem(
  //               icon: Icon(Icons.favorite_outline), label: "Trips"),
  //           BottomNavigationBarItem(
  //               icon: Icon(Icons.person_outlined), label: "Profile"),
  //         ],
  //       ),
  //     ),
  //   );
  // }
}
