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
                Tab(icon: Icon(Icons.home,color: Colors.white,), text: "Home",),
                Tab(icon: Icon(Icons.person,color: Colors.white,), text: "Profile",),
                Tab(icon: Icon(Icons.settings,color: Colors.white,), text: "Settings",),
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
