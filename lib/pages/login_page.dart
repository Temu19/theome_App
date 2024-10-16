import 'package:flutter/material.dart';
import 'package:theome_fury_app/components/mybutton.dart';
import 'package:theome_fury_app/components/mytextfield.dart';
import 'package:theome_fury_app/components/squaretiles.dart';

class LogInPage extends StatelessWidget {
   LogInPage({super.key});


         final usernameController = TextEditingController();
         final passwordController = TextEditingController();
void signuserin(){
     
}

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        
        backgroundColor: Colors.grey[300],
        //avoid touch with a notch area of the phone
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
              const SizedBox(height: 50),
             Image.asset(
                    'lib/images/logotheo.png',
                      height:200, 
                    ),
           
              //welcome back enjoy your time with us
            Text(
              "Welcome Back Desciple of Christ",
               style: TextStyle(
                color:Colors.grey[700],
                fontSize: 16,
               ),),
            const SizedBox(height: 25),
              //username textfield
              TextFieldComponent(
              hintText:"Enter Your Name:",
              obsecureText:false,
              controller:usernameController,
            ),
            const SizedBox(height: 15),
             //password text field
              TextFieldComponent(
              hintText:"Enter Your Password:",
              obsecureText:true,
              controller:passwordController,
            ),

              //forgot password

           const  Padding(
              padding:  EdgeInsets.symmetric(horizontal: 25.0),
              child:    Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                     Text(
                      "Forgot Password?",
                       style: TextStyle(
                        color:Color.fromARGB(255, 184, 183, 180),
                       ),
                       ),
                  ],
                ),
            ),
             const SizedBox(height: 25),
              //sign in button
             MyButton(
             onTap: signuserin,
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
                  color: Colors.grey[400],
                ), 
                ),
                            
                              Padding(
                               padding:  const EdgeInsets.symmetric(horizontal: 25.0),
                               child:   Text("Or continue with",style: TextStyle(
                                color: Colors.grey[700]
                                ),
                                ),
                             ),
               
                Expanded(
                      child:  Divider(
                  thickness: 0.7,
                  color: Colors.grey[400],
                )
                ),          
                  ],
                ),
              ),
              //google and apple sign in button
         const     Row(
          mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  SquareTile(imagePath: 'lib/images/goodle.png'),
                  SizedBox(width: 30),
                  SquareTile(imagePath: 'lib/images/apple.png'),
           
             ],),
             const SizedBox(height: 25),
              //dont have account register here
             const Row(
              mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text("Don't have an Account"), 
                  SizedBox(width: 4),
                 Text(
                  "Regiter here:-",
                 style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                 ),),
               ],
             )
            ],
          ),
        ),
    );
  }
}