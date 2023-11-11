import 'package:flutter/material.dart';

class KetigaPage extends StatefulWidget {
  const KetigaPage({super.key});

  @override
  State<KetigaPage> createState() => _KetigaPageState();
}

class _KetigaPageState extends State<KetigaPage>{
  DateTime? dateTimenow = DateTime.now(), dateTimeTomorrow, picked_date;
  var year;
  

  Future<Null> getDate(BuildContext context) async{
    picked_date = await  showDatePicker(
      context: context, 
      initialDate: dateTimenow!, 
      firstDate: DateTime(dateTimenow!.year - 10), 
      lastDate: DateTime(dateTimenow!.year + 10));

    if (picked_date !=null && picked_date != dateTimenow){
      setState(() {
        dateTimenow = picked_date;
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Center(
    child: Column(
      children: <Widget>[
        MaterialButton(
          onPressed: () {getDate(context);},
          child: Text("Coba Input Tanggal"),
          ),
          Text("Tanggal Yang dipilih: "+"${dateTimenow.toString().substring(0, 10)}"),
      ],
      ),
  );
}
}