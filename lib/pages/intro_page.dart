// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:theome_fury_app/pages/home_page.dart';
import 'package:lottie/lottie.dart';
//import 'package:theome_fury_app/pages/auth_page.dart';
//import 'package:theome_fury_app/pages/first_page.dart';
//import 'package:theome_fury_app/pages/home_page.dart';
//import 'package:theome_fury_app/pages/login_page.dart';
//import 'package:theome_fury_app/pages/register_page.dart';
//
//
class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xFFBAC8EF),
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: [
              //////////////////////////page1\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
              Container(
                color: const Color(0xFFBAC8EF),
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Lottie.network(
                    //   "https://lottie.host/b4a74d4e-7851-48cd-bd98-45c605129cb7/BsjOJKU8dy.json",
                    //   width: 200,
                    //   height: 200,
                    // ),

                    //logo
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // padding: const EdgeInsets.all(25),
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top:70.0),
                          child: Row(
                            
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Lottie.network(
                                'https://lottie.host/a581a812-29c4-4c05-bfcf-ae40481c5592/T3htXnlXHw.json',
                                width: 150,
                                height: 150,
                              ),
                              const SizedBox(width: 10),
                              Lottie.network(
                                'https://lottie.host/dadd4e2a-bc25-4c50-bd27-d921fd986b0d/yXpmoCFVoS.json',
                                width: 200,
                                height: 200,
                              ),
                            ],
                          ),
                        ),
                        ///const SizedBox(height: 0),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 30.0),
                          child: Lottie.network(
                            'https://lottie.host/b4a74d4e-7851-48cd-bd98-45c605129cb7/BsjOJKU8dy.json',
                            width: 200,
                            height: 200,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 100),
                    //title
                    const Text(
                      "Check out Resources pinpointed",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 30),
                    //subtitle
                    const Text(
                      "Check out common objections that are risen on christianity and how they are addressed",
                      style: TextStyle(
                        color: Color.fromARGB(255, 57, 62, 65),
                        fontSize: 15,
                        //check out font family and assigning gont in your flutter app
                      ),
                      textAlign: TextAlign.center,
                    ),
                    //start journey
                  ],
                ),
              ),

              ////////////////////////////////////page2\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

              Container(
                color: const Color(0xFFBAC8EF),
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Lottie.network(
                    //   "https://lottie.host/b4a74d4e-7851-48cd-bd98-45c605129cb7/BsjOJKU8dy.json",
                    //   width: 200,
                    //   height: 200,
                    // ),

                    //logo
                    Padding(
                      padding: const EdgeInsets.all(25),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Lottie.network(
                          //color: const Color(0xFFBAC8EF),
                          'https://lottie.host/85dbf11f-80e6-408d-aba8-549d90f3cb09/d5RjhiNtLV.json',

                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 100),
                    //title
                    const Text(
                      "Objection Addressing",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 30),
                    //subtitle
                    const Text(
                      "Check out common objections that are risen on christianity and how they are addressed",
                      style: TextStyle(
                        color: Color.fromARGB(255, 57, 62, 65),
                        fontSize: 15,
                        //check out font family and assigning gont in your flutter app
                      ),
                      textAlign: TextAlign.center,
                    ),
                    //start journey
                  ],
                ),
              ),

/////////////////////////////////////page 3\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
               Container(
                color: const Color(0xFFBAC8EF),
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Lottie.network(
                    //   "https://lottie.host/b4a74d4e-7851-48cd-bd98-45c605129cb7/BsjOJKU8dy.json",
                    //   width: 200,
                    //   height: 200,
                    // ),

                    //logo
                    Padding(
                      padding: const EdgeInsets.all(25),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          
                          //color: const Color(0xFFBAC8EF),
                         "lib/images/denomination.jpg",
                            height:200,
                            width:500,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 300),
                    //title
                    const Text(
                      "Understanding Denominations",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 30),
                    //subtitle
                    const Text(
                      "Check out common objections that are risen on christianity and how they are addressed",
                      style: TextStyle(
                        color: Color.fromARGB(255, 57, 62, 65),
                        fontSize: 15,
                        //check out font family and assigning gont in your flutter app
                      ),
                      textAlign: TextAlign.center,
                    ),
                    //start journey
                  ],
                ),
              ),

/////////////////////////////////////last page\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
              Container(
                color: const Color(0xFFBAC8EF),
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Lottie.network(
                    //   "https://lottie.host/b4a74d4e-7851-48cd-bd98-45c605129cb7/BsjOJKU8dy.json",
                    //   width: 200,
                    //   height: 200,
                    // ),

                    //logo
                    Padding(
                      padding: const EdgeInsets.all(25),
                      child: Image.asset(
                        'lib/images/logotheo.png',
                        height: 400,
                      ),
                    ),
                    const SizedBox(height: 40),
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
                            builder: (context) => const HomePage(),
                          )),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 7, 42, 30),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: const EdgeInsets.all(25),
                        child: Center(
                          child: Text(
                            "Start Your Journey",
                            style: GoogleFonts.abel(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: const Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
              alignment: const Alignment(0, 0.95),
              child: SmoothPageIndicator(controller: _controller, count: 4, effect: ScaleEffect(),)),
        ],
      ),
    );
  }
}
