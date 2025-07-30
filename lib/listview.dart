import 'package:flutter/material.dart';

class ListViewDemo extends StatelessWidget {
  const ListViewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List View Demo"),),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, i){
          return Container(
            child: Card(
              color: Colors.blue,
              elevation: 20,
              child: ListTile(
                leading: Icon(Icons.account_circle),
                title: Text("List View Demo"),
                subtitle: Text("Flutter Class Demo"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
          );
        }
      ),
    );
  }
}
