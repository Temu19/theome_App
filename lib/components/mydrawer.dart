import 'package:avatar_glow/avatar_glow.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:theome_fury_app/pages/home_page.dart';
import 'package:theome_fury_app/pages/login_or_register.dart';
import 'package:theome_fury_app/pages/settings_page.dart';
import 'package:theome_fury_app/pages/users_page.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

final user = FirebaseAuth.instance.currentUser!;

class _MyDrawerState extends State<MyDrawer> {
  //void Function()? signUSerOut;
  //final Function()? onTap;
  //sign out
 




  @override
  Widget build(BuildContext context) {
    return Drawer(
      
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //logo
          Column(
            children: [
              DrawerHeader(
                child: Image.asset('lib/images/logotheo.png'),
              ),

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                // child:  Divider(

                //   color: Color.fromARGB(255, 48, 47, 47),

                //   ),
              ),
              //home
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  },
                  child: const ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                  ),
                ),
              ),
              //settings
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SettingsPage()),
                    );
                  },
                  child: const ListTile(
                    leading: Icon(
                      Icons.post_add_rounded,
                    ),
                    title: Text("Posts"),
                  ),
                ),
              ),
              //user account
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const UserPage()),
                    );
                  },
                  child: const ListTile(
                    leading: Icon(Icons.person_2),
                    title: Text("User"),
                  ),
                ),
              ),
            ],
          ),
          //logout
          Padding(
            padding: const EdgeInsets.only(left: 0, bottom: 25),
            child: ListTile(
              leading: AvatarGlow(
                endRadius: 50,
                glowColor: Colors.red,
                duration: const Duration(milliseconds: 2000),
                repeatPauseDuration: const Duration(milliseconds: 500),
                child: IconButton(
                    onPressed: () async  {
                         try{
                          await FirebaseAuth.instance.signOut();
                
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: 
                            (context)=> const LogInorRegisterPage()),
                          );
                
                         }catch(error){
                            print('$error');
                         }
                        },
                    icon: const Icon(
                      
                      Icons.logout,
                
                    )),
              ),
                 
              title: const Text("Logout"),
            ),
          ),
        ],
      ),
    );
  }
}
