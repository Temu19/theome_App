
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:theome_fury_app/pages/home_page.dart';
import 'package:theome_fury_app/pages/intro_page.dart';
import 'package:theome_fury_app/pages/login_or_register.dart';
//import 'package:theome_fury_app/pages/login_page.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: StreamBuilder<User?>(
         stream:FirebaseAuth.instance.authStateChanges(),
         builder:(context, snapshot) {
           //user loggedin
             if(snapshot.hasData){
              return const IntroPage();
             }
               else{
                return  const LogInorRegisterPage();
               }
           //user not logged in
         },
      ),
    );
  }
}