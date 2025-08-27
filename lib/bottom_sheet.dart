import 'package:flutter/material.dart';
import 'package:flutter_sec_1/login.dart';

class BottomSheetView extends StatelessWidget {
  const BottomSheetView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Sheet"),
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          showModalBottomSheet(
              context: context,
              builder: (context){
                return Container(
                  child: Column(children: [
                    ListTile(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginView()));
                      },
                      leading: Icon(Icons.login),
                      title: Text("Login"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    ListTile(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      leading: Icon(Icons.camera),
                      title: Text("Camera"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    ListTile(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      leading: Icon(Icons.phone),
                      title: Text("Phone"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    ListTile(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      leading: Icon(Icons.settings),
                      title: Text("Setting"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    ListTile(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      leading: Icon(Icons.chat),
                      title: Text("Chats"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    ListTile(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      leading: Icon(Icons.calendar_month),
                      title: Text("Date"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ],),
                );
              });
        }, child: Text("Show Bottom Sheet")),
      ),
    );
  }
}
