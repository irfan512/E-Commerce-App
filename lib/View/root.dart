import 'package:flutter/material.dart';
import 'package:students_project/View/add_to_cart.dart';

import 'HomeScreem/home.dart';
import 'ProfileScreen/person.dart';
import 'favorite_screen.dart';

int selectedindex = 0;

var screens = [
  Home(),
  AddToCart(),
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
      bottomNavigationBar: BottomBar(context),

      // Screens Routing
      body: screens[selectedindex],
    );
  }
}

Widget BottomBar(context) {
  return BottomNavigationBar(
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
      BottomNavigationBarItem(icon: Icon(Icons.explore), label: "Home"),
      BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Cart"),
      BottomNavigationBarItem(
          icon: Icon(Icons.favorite_border_outlined), label: "Favorite"),
      BottomNavigationBarItem(
        icon: Icon(Icons.person_outline),
        label: "Profile",
      ),
    ],
  );
}
