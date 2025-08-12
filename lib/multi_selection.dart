import 'dart:developer';

import 'package:flutter/material.dart';

class MultipleSeletionDemo extends StatefulWidget {
  MultipleSeletionDemo({super.key});

  @override
  State<MultipleSeletionDemo> createState() => _MultipleSeletionDemoState();
}

class _MultipleSeletionDemoState extends State<MultipleSeletionDemo> {
  List<int> selectedIndex = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Multiple Selection Demo"),
      ),
      body: ListView.builder(itemBuilder: (context, i) {
        return ListTile(
          onTap: () {
            if (selectedIndex.contains(i)) {
              selectedIndex.remove(i);
            } else {
              selectedIndex.add(i);
            }

            setState(() {});
          },
          tileColor: selectedIndex.contains(i) ? Colors.blue : Colors.white,
          leading: Icon(Icons.notifications),
          title: Text("Selected Index: ${selectedIndex.toString()}"),
          subtitle: Text("Loop Index: $i"),
        );
      }),
    );
  }
}