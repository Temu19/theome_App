import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:theome_fury_app/components/mybutton.dart';
import 'package:theome_fury_app/components/mytextfield.dart';
import 'package:theome_fury_app/components/squaretiles.dart';
import 'package:theome_fury_app/pages/intro_page.dart';
import 'package:theome_fury_app/services/auth_services.dart';

class LogInPage extends StatefulWidget {
  final Function()? onTap;
  const LogInPage({super.key, required this.onTap});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn() async {
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      
       Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context)=> const IntroPage()),
              );
      // ignore: use_build_context_synchronously
  
    } on FirebaseAuthException catch (e) {
      // ignore: use_build_context_synchronously
      Navigator.pop(context);
      showErrorMessage(e.code);
    }
  }
  //error message to user

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
      //  resizeToAvoidBottomInset:true,//handles overflow error
            backgroundColor: Color(0xFFD6C6B4),
      //avoid touch with a notch area of the phone
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
              const SizedBox(height: 50),
              Image.asset(
                'lib/images/logotheo.png',
                height: 200,
              ),

              //welcome back enjoy your time with us
              Text(
                "Welcome Back Desciple of Christ",
                style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 25),
              //email textfield
              TextFieldComponent(
                hintText: "Enter Your Email:",
                obsecureText: false,
                controller: emailController,
              ),
              const SizedBox(height: 15),
              //password text field
              TextFieldComponent(
                hintText: "Enter Your Password:",
                obsecureText: true,
                controller: passwordController,
              ),

              //forgot password
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot Password?",
                      style: TextStyle(
                        color: Color.fromARGB(255, 122, 136, 240),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              //sign in button
              MyButton(
                onTap: signUserIn,
                text: "Sign IN",
              ),
              const SizedBox(height: 25),
              //continue with

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.7,
                        color: Colors.grey[600],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Text(
                        "Or continue with",
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                    Expanded(
                        child: Divider(
                      thickness: 0.7,
                      color: Colors.grey[600],
                    )),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              //google and apple sign in button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SquareTile(
                    imagePath: 'lib/images/google.png',
                    onTap: () => AuthService().signInWithGoogle(),
                  ),
                  const SizedBox(width: 30),
                  SquareTile(
                    onTap: () {},
                    imagePath: 'lib/images/apple.png',
                  ),
                ],
              ),
              const SizedBox(height: 25),
              //dont have account register here
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an Account"),
                  const SizedBox(width: 4),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: const Text(
                      "Regiter here",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
