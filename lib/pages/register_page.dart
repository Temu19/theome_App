import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:theome_fury_app/components/mybutton.dart';
import 'package:theome_fury_app/components/mytextfield.dart';
import 'package:theome_fury_app/components/squaretiles.dart';
import 'package:theome_fury_app/pages/intro_page.dart';
import 'package:theome_fury_app/services/auth_services.dart';

class RegisterPage extends StatefulWidget {
  final Function()? onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmpasswordController = TextEditingController();
  final usernameController = TextEditingController();
  final denominationController = TextEditingController();

  void signUserUp() async {
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );

    if (passwordController.text != confirmpasswordController.text) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Passwords do not match!")),
      );
      Navigator.pop(context);
      return;
    }

    // Create user
    try {
      UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );

      // Add user details to Firestore
      await addUserDetails(
        usernameController.text,
        denominationController.text,
        emailController.text,
      );

      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const IntroPage()),
      );

    } on FirebaseAuthException catch (e) {
      Navigator.pop(context);
      showErrorMessage(e.code);
    }
  }

  Future addUserDetails(String username, String denomination, String email) async {
    // Get the current user from FirebaseAuth
    User? currentUser = FirebaseAuth.instance.currentUser;

    if (currentUser != null) {
      // Use the current user's UID to create or update their document
      await FirebaseFirestore.instance.collection("users").doc(currentUser.uid).set({
        'username': username,
        'denomination': denomination,
        'email': email,
        'bio': "Insert your bio..."
      });

      print("User details saved with UID: ${currentUser.uid}");
    } else {
      print("No user found to save details.");
    }
  }

  void showErrorMessage(String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.deepPurple,
          title: Text(
            message,
            style: const TextStyle(color: Colors.white),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: Color(0xFFD6C6B4),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              Image.asset('lib/images/logotheo.png', height: 150),
              Text("Let's get you registered", style: TextStyle(color: Colors.grey[800], fontSize: 16)),
              const SizedBox(height: 25),

              // User name
              TextFieldComponent(
                hintText: "Enter Your Name:",
                obsecureText: false,
                controller: usernameController,
              ),

              // Denomination
              const SizedBox(height: 15),
              TextFieldComponent(
                hintText: "Enter Your Denomination:",
                obsecureText: false,
                controller: denominationController,
              ),

              const SizedBox(height: 15),
              // Email text field
              TextFieldComponent(
                hintText: "Enter Your Email:",
                obsecureText: false,
                controller: emailController,
              ),
              const SizedBox(height: 15),

              // Password text field
              TextFieldComponent(
                hintText: "Enter Your Password:",
                obsecureText: true,
                controller: passwordController,
              ),
              const SizedBox(height: 15),

              // Confirm password
              TextFieldComponent(
                hintText: "Confirm Your Password:",
                obsecureText: true,
                controller: confirmpasswordController,
              ),
              const SizedBox(height: 20),

              // Sign up button
              MyButton(onTap: signUserUp, text: 'Sign UP'),
              const SizedBox(height: 15),

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

              // Google and Apple sign-in buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SquareTile(
                    imagePath: 'lib/images/google.png',
                    onTap: () => AuthService().signInWithGoogle(),
                  ),
                  const SizedBox(width: 30),
                  SquareTile(
                    imagePath: 'lib/images/appl.png',
                    onTap: () => {},
                  ),
                ],
              ),
              const SizedBox(height: 25),

              // Already registered link
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already Registered"),
                  const SizedBox(width: 4),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: const Text(
                      "Login Now",
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
