import 'package:flutter/material.dart';
import 'package:mealplans/historypage.dart';
import 'package:mealplans/homepage.dart';
import 'package:mealplans/scorepage.dart';
import 'package:mealplans/userdetails.dart';

class BottomNavigatorapp extends StatefulWidget {
  // Widget Nav;
  BottomNavigatorapp({
    super.key,
  });

  @override
  State<BottomNavigatorapp> createState() => _BottomNavigatorappState();
}

int currentpage = 0;
List<dynamic> navigationbaritem = [
  HomePage(),
  score(),
 history(),
  UserDetails(),
];

class _BottomNavigatorappState extends State<BottomNavigatorapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          // selectedIconTheme: ,
          // unselectedIconTheme: ,
          selectedFontSize: 10,
          unselectedFontSize: 15,
          backgroundColor: Colors.yellow,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          currentIndex: currentpage,
          onTap: (value) {
            setState(() {
              currentpage = value;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: "Add",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.history), label: 'history'),
                BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.person),
            //   label: "profile",
            // ),
          ]),
      body: navigationbaritem[currentpage],
    );
  }
}
