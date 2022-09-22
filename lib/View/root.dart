import 'package:flutter/material.dart';
import 'package:students_project/View/profile_screen.dart';
import 'package:students_project/View/search_screen.dart';

import 'HomeScreem/home.dart';
import 'favorite_screen.dart';
import 'menu_screen.dart';

int selectedindex = 2;

var screens = [
  Menu(),
  Search(),
  Home(),
  Favorite(),
  Profile(),
];

class Root extends StatefulWidget {
  const Root({Key? key}) : super(key: key);

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.black,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: selectedindex,
        onTap: (index) {
          selectedindex = index;
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Root(),
              ));
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.list_alt), label: "List"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_outlined), label: "Menu"),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "Profile",
          ),
        ],
      ),

      // Screens Routing
      body: screens[selectedindex],
    );
  }
}
