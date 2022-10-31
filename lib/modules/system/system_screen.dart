import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resomy_client/core/helper/navigatable.dart';
import 'package:resomy_client/core/routes/routes.dart';
import 'package:resomy_client/modules/system/screens/categories_screen.dart';
import 'package:resomy_client/modules/system/screens/profile_screen.dart';
import 'package:resomy_client/modules/system/screens/home_screen.dart';

class SystemScreen extends StatefulWidget implements Navigatable {
  @override
  String getName() {
    return Routes.system;
  }

  @override
  _SystemScreenState createState() => _SystemScreenState();
}

class _SystemScreenState extends State<SystemScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        showSelectedLabels: false,
        onTap: (index) {
          setState(
            () {
              selectedIndex = index;
            },
          );
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book_rounded),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: "",
          ),
        ],
        selectedItemColor: Color.fromARGB(255, 247, 133, 133),
        currentIndex: selectedIndex,
      ),
    );
  }

  List<Widget> screens = [
    HomeScreen(),
    CategoriesScreen(),
    ProfileScreen(),
  ];

  int selectedIndex = 0;
}
