import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color.fromARGB(255, 163, 205, 228),
      appBar: AppBar(
        title:const  Text("settng page"),
      ),
      body: 
       const Center(child: Text("setting page")),
    );
  }
}