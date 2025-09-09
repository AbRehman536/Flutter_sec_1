import 'package:flutter/material.dart';
import 'package:flutter_sec_1/passing_parameters/screen_b.dart';
import 'package:flutter_sec_1/provider/screen_b_provider.dart';
import 'package:flutter_sec_1/provider/user.dart';
import 'package:provider/provider.dart';

class ScreenAProvider extends StatelessWidget {
  const ScreenAProvider({super.key});

  @override
  Widget build(BuildContext context) {
    var userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen A"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          userProvider.setName("Abdullah");
          userProvider.setEmail("abdullah@gmail.com");
          Navigator.push(context, MaterialPageRoute(builder: (context)=> ScreenBProvider()));
        }, child: Text("Show screen B")),
      ),
    );
  }
}
