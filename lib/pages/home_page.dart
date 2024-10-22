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
              backgroundColor: const Color.fromARGB(255, 159, 181, 243),
      appBar:  AppBar(
        toolbarHeight: 70,
        title: const  Padding(
          
          padding:  EdgeInsets.symmetric(horizontal: 10),
          child:  Text("Theome: Explore Christianity",
          style: TextStyle(
            fontSize: 18,
          fontWeight: FontWeight.bold,
          ),),
        ),
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon:const Icon(Icons.menu, color: Colors.black,),
              onPressed:(){
                Scaffold.of(context).openDrawer();
              },
            );
          }
        ),
        actions:
        const [
            IconButton(
          onPressed:signUserOut,
           icon:  Icon(Icons.logout)
           )
           ],
             backgroundColor:const Color.fromARGB(255, 204, 204, 204),
      ),
      drawer:  Drawer(
        child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:[
            //logo
          Column(
            children: [
                DrawerHeader(
              child: Image.asset('lib/images/logotheo.png'),
              ),

              const Padding(
                padding:  EdgeInsets.symmetric(horizontal:25.0),
                child:  Divider(
                  
                  color: Color.fromARGB(255, 48, 47, 47),
                
                  ),
              ),
            //home
            const Padding(
               padding:  EdgeInsets.only(left: 25),
               child: ListTile(
                leading: Icon(Icons.home),
                title:Text("Home"),
                
               ),
             ),
            //settings
             const Padding(
               padding:  EdgeInsets.only(left: 25),
               child: ListTile(
                leading: Icon(
                  Icons.settings,
                  
                  ),
                title:Text("Settings"),
                
               ),
             ),
            //user account
             const Padding(
               padding:  EdgeInsets.only(left: 25.0),
               child: ListTile(
                leading: Icon(Icons.person_2),
                title:Text("User"),
                
               ),
             ),
            ],
          ),
            //logout
             const Padding(
               padding:  EdgeInsets.only(left: 25, bottom: 25),
               child: ListTile(
                leading: Icon(Icons.logout),
                title:Text("Logout"),
                
               ),
             )
          ],
        ),
      ),
  
              // body:Center(
              //   child:
              //   Text(
              //     "Logged in as ${user.email}",
              //      style: const  TextStyle(fontSize:20),
              //      ),
              //      ),

              body:ListView(
                 children:  [
                  //first tile
                   Container(
                  margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 14,),
                  height: 200,
                  decoration: BoxDecoration(
                   color: Colors.blue.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow:
                    [ 
                      BoxShadow(
                      color:  Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius:5,
                      offset: const Offset(0, 3),
                      
                        ),
                       ],
                       image: DecorationImage(
                        image: const AssetImage('lib/images/debate.jpg'),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.3),
                          BlendMode.darken,
                        ),
                       )
            
                   ),
                   //inner padding
                  //  child:const Padding(
                  //   padding:EdgeInsets.symmetric(horizontal: 25),
                  //  )
                  child: Center(
                    child: Text(
                      "Objection Addressing",
                    
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        shadows: [
                          Shadow(
                            blurRadius: 10,
                            color: Colors.black.withOpacity(0.7),
                            offset:const Offset(0, 4) 
                          )
                        ]
                      ),
                    ),
                  ),
              ),
            
              //second tile
               Container(
                  margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 14,),
                  height: 200,
                  decoration: BoxDecoration(
                   color: Colors.blue.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow:
                    [ 
                      BoxShadow(
                      color:  Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius:5,
                      offset: const Offset(0, 3),
                      
                        ),
                       ],
                       image: DecorationImage(
                        image: const AssetImage('lib/images/boooook.jfif'),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.3),
                          BlendMode.darken,
                        ),
                       )
            
                   ),
                   //inner padding
                  //  child:const Padding(
                  //   padding:EdgeInsets.symmetric(horizontal: 25),
                  //  )
                  child: Center(
                    child: Text(
                      "Resource Suggestions",
                    
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        shadows: [
                          Shadow(
                            blurRadius: 10,
                            color: Colors.black.withOpacity(0.7),
                            offset:const Offset(0, 4) 
                          )
                        ]
                      ),
                    ),
                  ),
              ),
              //third tile
               Container(
                  margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 14,),
                  height: 200,
                  decoration: BoxDecoration(
                   color: Colors.blue.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow:
                    [ 
                      BoxShadow(
                      color:  Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius:5,
                      offset: const Offset(0, 3),
                      
                        ),
                       ],
                       image: DecorationImage(
                        image: const AssetImage('lib/images/denomination.jpg'),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.3),
                          BlendMode.darken,
                        ),
                       )
            
                   ),
                   //inner padding
                  //  child:const Padding(
                  //   padding:EdgeInsets.symmetric(horizontal: 25),
                  //  )
                  child: Center(
                    child: Text(
                      "Understanding Denominations",
                    
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        shadows: [
                          Shadow(
                            blurRadius: 10,
                            color: Colors.black.withOpacity(0.7),
                            offset:const Offset(0, 4) 
                          )
                        ]
                      ),
                    ),
                  ),
              ),
              //fourth tile
               Container(
                  margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 14,),
                  height: 200,
                  decoration: BoxDecoration(
                   color: Colors.blue.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow:
                    [ 
                      BoxShadow(
                      color:  Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius:5,
                      offset: const Offset(0, 3),
                      
                        ),
                       ],
                       image: DecorationImage(
                        image: const AssetImage('lib/images/metaa.webp'),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.3),
                          BlendMode.darken,
                        ),
                       )
            
                   ),
                   //inner padding
                  //  child:const Padding(
                  //   padding:EdgeInsets.symmetric(horizontal: 25),
                  //  )
                  child: Center(
                    child: Text(
                      "coming soon Chat With Community",
                    
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        shadows: [
                          Shadow(
                            blurRadius: 10,
                            color: Colors.black.withOpacity(0.7),
                            offset:const Offset(0, 4) 
                          )
                        ]
                      ),
                    ),
                  ),
              ),
              //fifth tile
               Container(
                  margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 14,),
                  height: 200,
                  decoration: BoxDecoration(
                   color: Colors.blue.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow:
                    [ 
                      BoxShadow(
                      color:  Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius:5,
                      offset: const Offset(0, 3),
                      
                        ),
                       ],
                       image: DecorationImage(
                        image: const AssetImage('lib/images/metaa.webp'),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.3),
                          BlendMode.darken,
                        ),
                       )
            
                   ),
                   //inner padding
                  //  child:const Padding(
                  //   padding:EdgeInsets.symmetric(horizontal: 25),
                  //  )
                  child: Center(
                    child: Text(
                      "coming soon MetaPhysics",
                    
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        shadows: [
                          Shadow(
                            blurRadius: 10,
                            color: Colors.black.withOpacity(0.7),
                            offset:const Offset(0, 4) 
                          )
                        ]
                      ),
                    ),
                  ),
              ),
                ],
              ),
    );
  }
}