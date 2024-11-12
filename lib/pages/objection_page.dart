// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:theome_fury_app/components/my_sliver_app.dart';
//import 'package:theome_fury_app/components/mydrawer.dart';

class ObjectionPage extends StatelessWidget {
  const ObjectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
                  backgroundColor: Color(0xFFD6C6B4),

      body: SafeArea(
          child: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MySliverAppBar(
            child: Image.asset(
              "lib/images/1-peter.jpg",
              fit: BoxFit.fill,
              height: 50,
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 30,
            ),
          )
        ],
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: ListView(
            children: [
              Container(
                padding: const EdgeInsets.all(28),
                decoration: BoxDecoration(
                color:const  Color(0XFF4F6D7A),
                  border:
                      Border.all(color: const Color.fromARGB(255, 63, 62, 62)),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text(
                    " Deity of Christ",
                    style: GoogleFonts.cormorantInfant(
                      fontSize: 40,
                      // fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Container(
                padding: const EdgeInsets.all(28),
                decoration: BoxDecoration(
                color: Color(0XFF4F6D7A),
                  border:
                      Border.all(color: const Color.fromARGB(255, 63, 62, 62)),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text(
                    " About Trinity",
                    style: GoogleFonts.cormorantInfant(
                      fontSize: 40,
                      // fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.all(28),
                decoration: BoxDecoration(
                                 color: Color(0XFF4F6D7A),

                  border:
                      Border.all(color: const Color.fromARGB(255, 63, 62, 62)),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text(
                    "About Salvation",
                    style: GoogleFonts.cormorantInfant(
                      fontSize: 40,
                      // fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.all(28),
                decoration: BoxDecoration(
                                  color: Color(0XFF4F6D7A),

                  border:
                      Border.all(color: const Color.fromARGB(255, 63, 62, 62)),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text(
                    " About the Bible",
                    style: GoogleFonts.cormorantInfant(
                      fontSize: 40,
                      // fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.all(28),
                decoration: BoxDecoration(
                                 color: Color(0XFF4F6D7A),

                  border:
                      Border.all(color: const Color.fromARGB(255, 63, 62, 62)),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text(
                    "Filler Text ",
                    style: GoogleFonts.cormorantInfant(
                      fontSize: 40,
                      // fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      )),
    );
  }
}
