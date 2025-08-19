import 'package:flutter/material.dart';
import 'package:flutter_sec_1/gridview.dart';
import 'package:flutter_sec_1/login.dart';
import 'package:flutter_sec_1/single_selection.dart';

class BottomBarDemo extends StatefulWidget {
  const BottomBarDemo({super.key});

  @override
  State<BottomBarDemo> createState() => _BottomBarDemoState();
}

class _BottomBarDemoState extends State<BottomBarDemo> {
  int selectedIndex = 0 ;
  List<Widget> screenList = [SingleSelectionDemo(), LoginView(), GridViewDemo()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenList.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: false,
        onTap: (val){
          selectedIndex = val ;
          setState(() {});
        },
          currentIndex: selectedIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Settings'),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile'),

          ]),
    );
  }
}
