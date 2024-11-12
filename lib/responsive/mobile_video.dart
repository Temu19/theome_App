import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';
//import 'package:theome_fury_app/components/mydrawer.dart';
import 'package:theome_fury_app/util/my_box.dart';
import 'package:theome_fury_app/util/video_player.dart';
//import 'package:url_launcher/url_launcher.dart';

class MobileVideo extends StatefulWidget {
  const MobileVideo({super.key});

  @override
  State<MobileVideo> createState() => _MobileVideoState();
}

class _MobileVideoState extends State<MobileVideo> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
            backgroundColor: Color(0xFFD6C6B4),
        appBar: AppBar(
        title: const Text('Weekly Selected Videos',style: TextStyle(color: Colors.white),
),
                      backgroundColor: Color(0XFF4F6D7A),
),
     
    body:GridView.builder(
               gridDelegate: const  SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Two books in a row
          childAspectRatio: 0.75, // Aspect ratio for each book card
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        padding: const EdgeInsets.all(10),
        itemCount: 6,
        itemBuilder: (context, index) {
       
        
              // itemCount: 6,
              // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), 
              // itemBuilder :(context, index){
                   List<String> videoUrls = [
                      'https://www.youtube.com/watch?v=qomLSfhmZI8&t=90s',
                      'https://www.youtube.com/watch?v=qomLSfhmZI8&t=90s',
                      'https://www.youtube.com/watch?v=qomLSfhmZI8&t=90s',
                      'https://www.youtube.com /watch?v=qomLSfhmZI8&t=90s',
                      'https://www.youtube.com /watch?v=qomLSfhmZI8&t=90s',
                      'https://www.youtube.com /watch?v=qomLSfhmZI8&t=90s',
                     ]; 

                      List<String> thumbnailUrls = [
                      'https://img.youtube.com/vi/9bo1V9STW2c/maxresdefault.jpg',
                      'https://img.youtube.com/vi/9bo1V9STW2c/maxresdefault.jpg',
                      'https://img.youtube.com/vi/9bo1V9STW2c/maxresdefault.jpg',
                      'https://img.youtube.com/vi/9bo1V9STW2c/maxresdefault.jpg',
                      'https://img.youtube.com/vi/9bo1V9STW2c/maxresdefault.jpg',
                      'https://img.youtube.com/vi/9bo1V9STW2c/maxresdefault.jpg',
                     ];
                      return MyBox(
                        thumbnailUrl: thumbnailUrls[index],
                        

                        onTap: ()   {
                          Navigator.push(
                            context, 
                            MaterialPageRoute(
                              builder: (context) => VideoPlayer(videoUrl: videoUrls[index]),
                              ),
                            );
                          //    final url =  videoUrls[index];
                          // print('Trying to launch URL: $url'); // Debug print
                          // if (await canLaunchUrl(url))
                          // {
                          //   await launchUrl( url, mode:LaunchMode.externalApplication);
                          //   print('Launched URL: $url'); // Debug print
                          //   }
                          //   else{
                          //         print('Could not launch: $url'); // Debug print
                          //     throw 'Could not launch  ${videoUrls[index]}';
                          //   }
                          },
                    
                      );
            }
            ),
       
       
      
 
    
    );
  }
}