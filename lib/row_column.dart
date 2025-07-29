import 'package:flutter/material.dart';

class RowColumn extends StatelessWidget {
  const RowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.blue,
        leading: Icon(Icons.arrow_back_ios_new,color: Colors.white,size: 25,),
        title: Text("Column",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20,color: Colors.white),),
        centerTitle: true,
        actions: [
          Icon(Icons.notifications,color: Colors.white,size: 25,),
          Icon(Icons.bookmark_border_outlined,color: Colors.white,size: 25,),
          Icon(Icons.schedule,color: Colors.white,size: 25,),
        ],
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Lorem Ipsum",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 30),),
          Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
            SizedBox(height: 20,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.favorite_border),
            Column(children: [
              Icon(Icons.favorite_border),
              Icon(Icons.favorite_border),
              Icon(Icons.favorite_border),
            ],),
            Column(children: [
              Icon(Icons.favorite_border),
              Row(children: [
                Icon(Icons.favorite_border),
                Icon(Icons.favorite_border),
              ],),
              Row(children: [
                Icon(Icons.favorite_border),
                Icon(Icons.favorite_border),
                Icon(Icons.favorite_border),
              ],),
              Row(children: [
                Icon(Icons.favorite_border),
                Icon(Icons.favorite_border),
              ],),
              Icon(Icons.favorite_border),
            ],)
          ],
        )

        ],
      )
    );
  }
}
