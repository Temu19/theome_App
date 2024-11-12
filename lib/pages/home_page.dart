import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:theome_fury_app/components/mydrawer.dart';
import 'package:theome_fury_app/pages/denominations.dart';
//import 'package:theome_fury_app/pages/login_page.dart';
import 'package:theome_fury_app/pages/objection_page.dart';
import 'package:theome_fury_app/pages/resource_page.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});
  


  @override
  State<HomePage> createState() => _HomePageState();
}

final user = FirebaseAuth.instance.currentUser!;

class _HomePageState extends State<HomePage> {
 
Future<void> signUserOut(BuildContext context) async {
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
    
     await  FirebaseAuth.instance.signOut();
     // ignore: use_build_context_synchronously
     Navigator.pop(context);
      // ignore: use_build_context_synchronously
      // Navigator.of(context).pushReplacement(
      //   MaterialPageRoute(
     ////this is my error this is my error this is my errror this is my error
     /////what if i dont need to go back to login page after logout use it for that time and when they get back they will not login   builder:(context) => LogInPage(  onTap: togglePages)),
       
        
       // );
      // ignore: use_build_context_synchronously
     // 
    
  }

  void showErrorMessage(String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.deepPurple,
          title: Center(
            child: Text(
              message,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        
        toolbarHeight: 70,
        title: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            "Theome: Explore Christianity",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(255, 255, 255, 0.984),
            ),
          ),
        ),
        leading: Builder(builder: (context) {
          return IconButton(
            icon: const Icon(
              Icons.menu,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        }),
        /////////////actions\\\\\\\\\\\\\\\\\
        // actions: [
        //   IconButton(
        //       onPressed: () => {
        //         signUserOut(context),
        //       },
        //       icon: const Icon(Icons.logout))
        // ],
        backgroundColor: Color(0XFF4F6D7A),
      ),
      drawer: const MyDrawer(),

      // body:Center(
      //   child:
      //   Text(
      //     "Logged in as ${user.email}",
      //      style: const  TextStyle(fontSize:20),
      //      ),
      //      ),

      body: ListView(
        children: [
          //first tile
          GestureDetector(
            onTap: () {
               Navigator.push(
                  context, 
                  MaterialPageRoute(
                  builder: (context)=> const ObjectionPage()),
                  );
            },
            child: Container(
              margin: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 14,
              ),
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 108, 107, 107)
                          .withOpacity(1),
                      spreadRadius: 5,
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ],
                  image: DecorationImage(
                    image: const AssetImage('lib/images/pexebook.jpg'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.1),
                      BlendMode.darken,
                    ),
                  )),
              //inner padding
              //  child:const Padding(
              //   padding:EdgeInsets.symmetric(horizontal: 25),
              //  )
              child: Center(
                child: Text(
                  "Objection Addressing",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                            blurRadius: 10,
                            color: Colors.black.withOpacity(0.7),
                            offset: const Offset(0, 4))
                      ]),
                ),
              ),
            ),
          ),



          //second tile
          GestureDetector(
             
            onTap: () {
               Navigator.push(
                  context, 
                  MaterialPageRoute(
                  builder: (context)=> const ResourcePage()),
                  );
            },
            child: Container(
              margin: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 14,
              ),
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 108, 107, 107)
                          .withOpacity(0.9),
                      spreadRadius: 5,
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ],
                  image: DecorationImage(
                    image: const AssetImage('lib/images/pexereso.jpg'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.1),
                      BlendMode.darken,
                    ),
                  )),
              //inner padding
              //  child:const Padding(
              //   padding:EdgeInsets.symmetric(horizontal: 25),
              //  )
              child: Center(
                child: Text(
                  "Resource Suggestions",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                            blurRadius: 10,
                            color: Colors.black.withOpacity(0.7),
                            offset: const Offset(0, 4))
                      ]),
                ),
              ),
            ),
          ),





          //third tile
          GestureDetector(
              
            onTap: () {
               Navigator.push(
                  context, 
                  MaterialPageRoute(
                  builder: (context)=>  Denominations()),
                  );
            },
            child: Container(
              margin: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 14,
              ),
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 108, 107, 107)
                          .withOpacity(0.9),
                      spreadRadius: 5,
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ],
                  image: DecorationImage(
                    image: const AssetImage('lib/images/denomination.jpg'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.1),
                      BlendMode.darken,
                    ),
                  )),
              //inner padding
              //  child:const Padding(
              //   padding:EdgeInsets.symmetric(horizontal: 25),
              //  )
              // child: Center(
              //   child: Text(
              //     "Understanding Denominations",
            
              //     style: TextStyle(
              //       fontSize: 24,
              //       fontWeight: FontWeight.bold,
              //       color: Color.fromARGB(255, 10, 232, 2),
              //       shadows: [
              //         Shadow(
              //           blurRadius: 10,
              //           color: Colors.black.withOpacity(0.1),
              //           offset:const Offset(0, 4)
              //         )
              //]
              // ),
              //),
            ),
          ),
          //  ),




          //fourth tile
          GestureDetector(
              onTap: () {
               Navigator.push(
                  context, 
                  MaterialPageRoute(
                  builder: (context)=> const HomePage()),
                  );
            },
            child: Container(
              margin: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 14,
              ),
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 108, 107, 107)
                          .withOpacity(0.9),
                      spreadRadius: 5,
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ],
                  image: DecorationImage(
                    image: const AssetImage('lib/images/community.webp'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.1),
                      BlendMode.darken,
                    ),
                  )),
              //inner padding
              //  child:const Padding(
              //   padding:EdgeInsets.symmetric(horizontal: 25),
              //  )
              child: Center(
                child: Text(
                  "Chat With Community",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                            blurRadius: 10,
                            color: Colors.black.withOpacity(0.7),
                            offset: const Offset(0, 4))
                      ]),
                ),
              ),
            ),
          ),






          //fifth tile
          GestureDetector(
              onTap: () {
               Navigator.push(
                  context, 
                  MaterialPageRoute(
                  builder: (context)=> const HomePage()),
                  );
            },
            child: Container(
              margin: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 14,
              ),
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 108, 107, 107)
                          .withOpacity(0.9),
                      spreadRadius: 5,
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ],
                  image: DecorationImage(
                    image: const AssetImage('lib/images/metaa.webp'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.1),
                      BlendMode.darken,
                    ),
                  )),
              //inner padding
              //  child:const Padding(
              //   padding:EdgeInsets.symmetric(horizontal: 25),
              //  )
              child: Center(
                child: Text(
                  "coming soon MetaPhysics",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                            blurRadius: 10,
                            color: Colors.black.withOpacity(0.9),
                            offset: const Offset(0, 8))
                      ]),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
