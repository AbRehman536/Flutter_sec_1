import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: Icon(Icons.arrow_back_ios_new),
        title: Text("LOGIN"),
        centerTitle: true,
        actions: [
          Icon(Icons.bookmark),
          Icon(Icons.notifications),
        ],
      ),
      body: Column(children: [
        SizedBox(height: 10,),
        Text("LOGIN PAGE",style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),),
        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              label: Text("Email"),
              hintText: 'test@gmail.com',
              prefixIcon: Icon(Icons.email),
              suffix: Icon(Icons.person),
              border: OutlineInputBorder(
                borderSide: BorderSide(width: 5,color: Colors.blue),
              )
            ),
          ),
        ),
        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            keyboardType: TextInputType.visiblePassword,
            decoration: InputDecoration(
              label: Text("Password"),
              hintText: 'start with capital letter',
              prefixIcon: Icon(Icons.lock),
              suffixIcon: Icon(Icons.visibility),
              border: OutlineInputBorder(
                borderSide: BorderSide(width: 2),
                borderRadius: BorderRadius.circular(20),
              )
            ),
          ),
        ),
        SizedBox(height: 10,),
        ElevatedButton(onPressed: (){}, child: Text("Login")),
      ],),
    );
  }
}
