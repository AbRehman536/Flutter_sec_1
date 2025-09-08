import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTimePickerDemo extends StatefulWidget {
  const DateTimePickerDemo({super.key});

  @override
  State<DateTimePickerDemo> createState() => _DateTimePickerDemoState();
}

class _DateTimePickerDemoState extends State<DateTimePickerDemo> {
  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.green,
        title: Text("Date & Time"),
      ),
      body: Column(children: [
        Text(
          DateFormat.yMMM().format(selectedDate),
          style: TextStyle(fontSize: 30),
        ),
        ElevatedButton(onPressed: (){
          showDatePicker(
              context: context,
              firstDate: DateTime(1970),
              lastDate: DateTime.now()).then((val){
                setState(() {
                  selectedDate = val!;
                });
          });
        }, child: Text("Show Date Picker")),

        Text(
          selectedTime.format(context).toString(),
          style: TextStyle(fontSize: 30),
        ),
        ElevatedButton(onPressed: (){
          showTimePicker(
              context: context,
              initialTime: TimeOfDay.now()).then((val){
                setState(() {
                selectedTime = val!;
              });});
        }, child: Text("Show Time Picker")),

      ],),
    );
  }
}
