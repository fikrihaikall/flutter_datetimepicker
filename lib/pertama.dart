import 'package:flutter/material.dart';

class PertamaPage extends StatefulWidget {
  const PertamaPage({super.key});

  @override
  State<PertamaPage> createState() => _PertamaPageState();
}

class _PertamaPageState extends State<PertamaPage>{


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Fikri Haikal"),
    );
  }
}