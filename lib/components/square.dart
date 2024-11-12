import 'package:flutter/material.dart';
//import 'package:lottie/lottie.dart';

class MySquare extends StatelessWidget {

  final String text;
  final String path;
  const MySquare({super.key, required this.text, required this.path});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      
      padding:const  EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 3,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
         Image.asset(
               path,
               width:100,
               height:100,
         ),
          const SizedBox(width: 10), // Space between the Lottie animation and text
           Text(
              text,
            style: const  TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}