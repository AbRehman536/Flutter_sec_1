import 'package:flutter/material.dart';

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          leading: Icon(Icons.arrow_back_ios),
          title: Text("Tab Bar"),
          centerTitle: true,
          bottom: TabBar(
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white70,
              indicatorColor: Colors.black,
              tabs: [
            Text("Home"),
            Text("Profile"),
            Text("Setting"),
          ]),
          actions: [
            Icon(Icons.insert_emoticon_sharp),
          ],
        ),
        body: TabBarView(children: [
          Center(child: Text("Home"),),
          Center(child: Text("Profile"),),
          Center(child: Text("Settings"),),
        ]),
      ),
    );
  }
}
