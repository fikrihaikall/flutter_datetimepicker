import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class KeduaPage extends StatefulWidget {
  const KeduaPage({super.key});

  @override
  State<KeduaPage> createState() => _KeduaPageState();
}

class _KeduaPageState extends State<KeduaPage>{
  TimeOfDay?  picked_time, selectedTime=TimeOfDay.now();
  

  Future<Null> getTime(BuildContext context)  async {
    picked_time = await showTimePicker(
      context: context, 
      initialTime: selectedTime!, 
  
    );
    log(picked_time.toString() as num);
    if(picked_time != null && picked_time != selectedTime){
      setState(() {
        selectedTime = picked_time;
        log("testing"+picked_time.toString() as num);
      });
    }
  } 


  @override
  Widget build(BuildContext context) {
    return Center(
    child: Column(
      children: <Widget>[
        MaterialButton(
          onPressed: () {getTime(context);},
          child: Text("Coba Input Waktu"),
          ),
          Text("Waktu Yang dipilih : "+"${selectedTime.toString().substring(10, 15)}"),
        ],
      ),
  );
}
}