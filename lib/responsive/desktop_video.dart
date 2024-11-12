import 'package:flutter/material.dart';
import 'package:theome_fury_app/components/mydrawer.dart';

class DesktopVideo extends StatefulWidget {
  const DesktopVideo({super.key});

  @override
  State<DesktopVideo> createState() => _DesktopVideoState();
}

class _DesktopVideoState extends State<DesktopVideo> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.green,
        appBar: AppBar(
        toolbarHeight: 70,
        title: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            "Theome: Explore Christianity",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(5, 31, 73, 0.988),
            ),
          ),
        ),
        leading: Builder(builder: (context) {
          return IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        }),
      
        backgroundColor: Colors.white,
       
      ),
      body: const Row(
        children: [
           MyDrawer(),
        ],
      ),
    );
  }
}