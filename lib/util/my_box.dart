import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';

class MyBox extends StatelessWidget {
  final String thumbnailUrl;
  final VoidCallback onTap;
  const MyBox({super.key, required this.thumbnailUrl, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: AvatarGlow(
                      endRadius: 50000,
                      glowColor: Color.fromARGB(255, 53, 141, 214),
                      duration: const Duration(milliseconds: 5000),
                      //repeatPauseDuration: const Duration(milliseconds: 5),
                      
                       // ignore: avoid_unnecessary_containers
                       child:  Card(
                                     //color:Colors.blue,
                                    //  child: Center(
                                    //    child: ClipRRect(
                                    //     borderRadius:BorderRadius.circular(15),
                                    //      child: Image.network(
                                    //       thumbnailUrl,
                                    //       fit: BoxFit.cover,
                                    //       errorBuilder: (context, error, stackTrace){
                                    //         return const Icon(Icons.error,
                                    //         color: Colors.white);
                                    //       },
                                    //      ),
                                    //    ),
                                    //  )
                                     elevation: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(thumbnailUrl),
                fit: BoxFit.cover,
              ),
              borderRadius: const BorderRadius.vertical(top: Radius.circular(8)),
            ),
          ),
         
         
         const  Expanded(
            child: Padding(
              padding:  EdgeInsets.all(8.0),
              child: Text(
                'description',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style:  TextStyle(fontSize: 12),
              ),
            ),
          ),
        ],
      ),
                                   
                                   ),
                     ),
                   ),
    );
  }
}