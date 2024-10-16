import 'package:flutter/material.dart';
import 'package:theome_fury_app/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Color.fromRGBO(197, 59, 59, 1),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              //logo
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Image.asset(
                  'lib/images/logotheo.png',
                    height:200, 
                  ),
            
                  
              ),
              const SizedBox(height:48),
              //title
              const Text(
                "Theome: Explore Christian Faith",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                ),
                //subtitle
                 const Text(
                "A new user friendly mobile app for those who are eager to explore christianity Everything you need:",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  
                ),
                textAlign: TextAlign.center,
                ),
              //start journey

              GestureDetector(
                onTap: () => Navigator.push(
                  context, 
                  MaterialPageRoute(
                  builder: (context)=> const HomePage(),
                  )
                  ),
                child: Container(
                  decoration:BoxDecoration(
                    color:Colors.grey[800],
                    borderRadius:BorderRadius.circular(12),
                  ),
                    padding: const EdgeInsets.all(25),
                    child:  const Text(
                      "Start Your Journey",
                       style:TextStyle(
                        color:Colors.white,
                        fontWeight:FontWeight.bold,
                        fontSize:16,
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