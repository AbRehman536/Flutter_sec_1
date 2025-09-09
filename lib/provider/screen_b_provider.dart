import 'package:flutter/material.dart';
import 'package:flutter_sec_1/provider/user.dart';
import 'package:provider/provider.dart';

class ScreenBProvider extends StatelessWidget {
  const ScreenBProvider({super.key,});
  @override
  Widget build(BuildContext context) {
    var userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen B"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(child:
        Column(children: [
          Text(userProvider.getName(),style: TextStyle(fontSize: 30),),
          Text(userProvider.getEmail(),style: TextStyle(fontSize: 30),),
        ],),),
    );
  }
}
