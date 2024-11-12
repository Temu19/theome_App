import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theome_fury_app/pages/auth_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:theome_fury_app/themes/theme_provider.dart';
//import 'package:theome_fury_app/pages/intro_page.dart';
import 'firebase_options.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);

  runApp(
    
    ChangeNotifierProvider(
      
      create: (context) => ThemeProvider(),
      child: const MyApp(

   ),
  ));
}


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        debugShowCheckedModeBanner: false,
         home: const AuthPage(),
         theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}