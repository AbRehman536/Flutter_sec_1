import 'package:flutter/material.dart';

class SingleSelectionDemo extends StatefulWidget {
  const SingleSelectionDemo({super.key});

  @override
  State<SingleSelectionDemo> createState() => _SingleSelectionDemoState();
}

class _SingleSelectionDemoState extends State<SingleSelectionDemo> {
  int selectedindex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Single Selection"),),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, i){
          final isSelected = selectedindex == i;
          return ListTile(
            onTap: (){
              setState(() {
                selectedindex = isSelected ? -1 : i;
              });
            },
            tileColor: isSelected ? Colors.blue : Colors.white,
            iconColor: isSelected ? Colors.red : Colors.black,
            textColor: isSelected ? Colors.white : Colors.black,
            leading: Icon(Icons.add),
            title: Text("Single Selection"),
            subtitle: Text("Single Selection Demo"),
            trailing: Icon(Icons.arrow_forward_ios),
          );
        }
      ),
    );
  }
}
