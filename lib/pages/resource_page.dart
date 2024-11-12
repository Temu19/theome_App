

import 'package:flutter/material.dart';
//import 'package:theome_fury_app/components/mydrawer.dart';
import 'package:theome_fury_app/components/square.dart';
import 'package:theome_fury_app/pages/books_to.dart';
import 'package:theome_fury_app/pages/videos_collection.dart';

class ResourcePage extends StatelessWidget {
  const ResourcePage({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
                  backgroundColor: Color(0xFFD6C6B4),

       appBar: AppBar(
        toolbarHeight: 70,
        title: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
         
          child: Text(
            "Theome: Discover Resources",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(255, 255, 255, 1),
            ),
          ),
        ),
        // leading: Builder(builder: (context) {
        //   return IconButton(
        //     icon: const Icon(
        //       Icons.menu,
        //       color: Colors.black,
        //     ),
        //     onPressed: () {
        //       Scaffold.of(context).openDrawer();
        //     },
        //   );
        // }),
        // actions: [
        //   IconButton(
        //       onPressed: () => {
        //         signUserOut(context),
        //       },
        //       icon: const Icon(Icons.logout))
        // ],
                      backgroundColor: Color(0XFF4F6D7A),

      ),
      //  drawer: const MyDrawer(),
     body:  SafeArea(
       child: SingleChildScrollView(
        
         
        child: Padding(
          padding: const EdgeInsets.all(20),
       
          child: Column(
         
          //video  https://lottie.host/a581a812-29c4-4c05-bfcf-ae40481c5592/T3htXnlXHw.json
          //podcast https://lottie.host/dadd4e2a-bc25-4c50-bd27-d921fd986b0d/yXpmoCFVoS.json
          children: [
                   
          GestureDetector(
              onTap: () {
               Navigator.push(
                  context, 
                  MaterialPageRoute(
                  builder: (context)=>  BooksPage()),
                  );
            },
            
            child:  const MySquare( 
              text: "Books to Check Out", 
              path:'lib/images/Bbooks.png',
              )
            ),
       
        const   SizedBox(height:40),
       
          GestureDetector(
             onTap: () {
               Navigator.push(
                  context, 
                  MaterialPageRoute(
                  builder: (context)=> const VideosPage()),
                  );
            },
            child: const MySquare(
              text: "Weekly Selected Videos", 
              path:'lib/images/videos.png'
              )
              ),
         const   SizedBox(height:40),
           
          GestureDetector(
            child: const MySquare(
              text:"Podcasts coming soon...",
               path:'lib/images/Aaudios.png'
               )
               )
       
          ],
               ),
        ),
           ),
     ),
    );
  }
}