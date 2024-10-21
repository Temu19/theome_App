import 'package:flutter/material.dart';
import 'package:theome_fury_app/pages/login_page.dart';
import 'package:theome_fury_app/pages/register_page.dart';

class LogInorRegisterPage extends StatefulWidget {
  const LogInorRegisterPage({super.key});

  @override
  State<LogInorRegisterPage> createState() => _LogInorRegisterPageState();
}

class _LogInorRegisterPageState extends State<LogInorRegisterPage> {
  
  bool showLoginPage = true;
  
  void togglePages(){
    setState((){
           showLoginPage = !showLoginPage;
    });
  }
  @override
  Widget build(BuildContext context) {
   if (showLoginPage){
    return LogInPage(
      onTap:togglePages,
    );
   }
   else{
    return RegisterPage(onTap: togglePages,);
   }
  }
}