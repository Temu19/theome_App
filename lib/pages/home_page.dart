import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
final user = FirebaseAuth.instance.currentUser!;

void signUserOut(){
  FirebaseAuth.instance.signOut();
}


class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  AppBar(
        actions:
        const [
            IconButton(
          onPressed:signUserOut,
           icon:  Icon(Icons.logout)
           )
           ]
      ),

      
              body:Center(
                child:
                Text(
                  "Logged in as ${user.email}",
                   style: const  TextStyle(fontSize:20),
                   ),
                   ),
    );
  }
}