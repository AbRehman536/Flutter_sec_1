import 'package:flutter/material.dart';

class GridViewDemo extends StatelessWidget {
  const GridViewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View"),
      ),
      body: GridView.builder(
        itemCount: 23,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5,
            crossAxisSpacing: 20,
           mainAxisSpacing: 30,
          ),
          itemBuilder: (context, i){
            return const FlutterLogo();
          }),
    );
  }
}
