import 'package:flutter/material.dart';
import 'package:theome_fury_app/pages/home_page.dart';
//import 'package:theome_fury_app/pages/auth_page.dart';
//import 'package:theome_fury_app/pages/first_page.dart';
//import 'package:theome_fury_app/pages/home_page.dart';
import 'package:theome_fury_app/pages/login_page.dart';
//import 'package:theome_fury_app/pages/register_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: const  Color(0xFFBAC8EF),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              //logo
              Padding(
                padding: const EdgeInsets.all(25),
                child: Image.asset(
                  'lib/images/logotheo.png',
                    height:400, 
                  ),
            
                  
              ),
              const SizedBox(height:40),
              //title
              const Text(
                "Theome: Explore Christian Faith",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                ),
                 const SizedBox(height: 30),
                //subtitle
                 const Text(
                "A new user friendly mobile app for those who are eager to explore christianity and theology, Everything you need to know is here!",
                style: TextStyle(
                  color: Color.fromARGB(255, 57, 62, 65),
                  fontSize: 15,
                  //check out font family and assigning gont in your flutter app
                  
                ),
                textAlign: TextAlign.center,
                ),
              //start journey
  const SizedBox(height: 40),
              GestureDetector(
                onTap: () => Navigator.push(
                  context, 
                  MaterialPageRoute(
                  builder: (context)=>     LogInPage(),
                  )
                  ),
                child: Container(
                  decoration:BoxDecoration(
                    color:Colors.grey[900],
                    borderRadius:BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.all(25),
                    child: const  Center(
                      child:  Text(
                        "Start Your Journey",
                         style:TextStyle(
                          color:Colors.white,
                          fontWeight:FontWeight.bold,
                          fontSize:16,
                         ),
                      
                      ),
                    ),
                  ),
              ),
              
            ],
            ),
          ),
        ),
    
    );
  }
}