import 'package:flutter/material.dart';
import 'package:flutter_sec_1/passing_parameters/screen_b.dart';

class ScreenA extends StatelessWidget {
  const ScreenA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen A"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> ScreenB(
            name: 'Abdullah',
            email: 'abdullah@gmail.com',
          )));
        }, child: Text("Show screen B")),
      ),
    );
  }
}
