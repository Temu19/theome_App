
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:theome_fury_app/components/mybutton.dart';
import 'package:theome_fury_app/components/mytextfield.dart';
import 'package:theome_fury_app/components/squaretiles.dart';

class RegisterPage extends StatefulWidget {
   final Function()? onTap;
   const RegisterPage({super.key,required this.onTap});

  @override
  State<RegisterPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<RegisterPage> {


         final emailController = TextEditingController();
         final passwordController = TextEditingController();
         final confirmpasswordController = TextEditingController();
  
void signUserUp()  async {

   showDialog(
    context: context,
    builder: (context){
      return const Center(
        child:CircularProgressIndicator(),
      );
    },
    );

    //create user
     try
     {
      if(confirmpasswordController.text == passwordController.text){

          await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: emailController.text, 
            password: passwordController.text,
            );

      }else{
        
        showErrorMessage("Passwords don't match!");
     

      }
       // ignore: use_build_context_synchronously
       Navigator.pop(context);
     }on FirebaseAuthException catch (e){
        // ignore: use_build_context_synchronously
        Navigator.pop(context);
        showErrorMessage(e.code);
     }

}
  //error message to user
     
  void showErrorMessage(String message){
  showDialog(
    context:context,
    builder:
      (context) {
      return  AlertDialog(
        backgroundColor: Colors.deepPurple,
      title:Text(
        message,
        style: const TextStyle(color: Colors.white),
        ),
      );
    },
    );
}



  

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      //  resizeToAvoidBottomInset:true,//handles overflow error
        backgroundColor: Colors.grey[300],
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
                        height:150, 
                      ),
             
                //welcome back enjoy your time with us
              Text(
                "Let's get you registered",
                 style: TextStyle(
                  color:Colors.grey[800],
                  fontSize: 16,
                 ),),
              const SizedBox(height: 25),
                //email textfield
                TextFieldComponent(
                hintText:"Enter Your Email:",
                obsecureText:false,
                controller:emailController,
              ),
              const SizedBox(height: 15),
               //password text field
                TextFieldComponent(
                hintText:"Enter Your Password:",
                obsecureText:true,
                controller:passwordController,
              ),
             const SizedBox(height: 15),
                //confirm password
                  TextFieldComponent(
                hintText:"Confirm Your Password:",
                obsecureText:true,
                controller:confirmpasswordController,
              ),
                //forgot password
     
            
               const SizedBox(height: 20),
                //sign in button
               MyButton(
               onTap: signUserUp,
               text:'Sign UP'
              ),
               const SizedBox(height: 25),
                //continue with 
               
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                        child:  Divider(
                    thickness: 0.7,
                    color: Colors.grey[600],
                  ), 
                  ),
                              
                                Padding(
                                 padding:  const EdgeInsets.symmetric(horizontal: 25.0),
                                 child:   Text(
                                  "Or continue with",
                                 style: TextStyle(
                                  color: Colors.grey[700]
                                  ),
                                  ),
                               ),
                 
                  Expanded(
                        child:  Divider(
                    thickness: 0.7,
                    color: Colors.grey[600],
                  )
                  ),          
                    ],
                  ),
                ),
                 const SizedBox(height: 25),
                //google and apple sign in button
           const     Row(
            mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    SquareTile(imagePath: 'lib/images/google.png'),
                    SizedBox(width: 30),
                    SquareTile(imagePath: 'lib/images/appl.png'),
             
               ],),
               const SizedBox(height: 25),
                //dont have account register here
                Row(
                mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                  const  Text("Already Registered"), 
                   const  SizedBox(width: 4),
                   GestureDetector(
                    onTap: widget.onTap,
                     child: const  Text(
                      "Login Now",
                     style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize:18,
                      
                     ),),
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