import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPlayer extends StatefulWidget {
  final String videoUrl;
  const VideoPlayer({super.key, required this.videoUrl});

  @override
  State<VideoPlayer> createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<VideoPlayer> {
  
  late YoutubePlayerController controller;
  
  @override
  void initState() {
    // TODO: implement initState
    
    super.initState();
    final url = widget.videoUrl;
    controller = YoutubePlayerController(initialVideoId: YoutubePlayer.convertUrlToId(url)!,
    flags: const YoutubePlayerFlags(
      mute:false,
      loop:false,
      autoPlay:true,
      hideControls:false,
    ),
    )..addListener((){
       if(mounted){
        setState((){});
       }
    });
    
  }
   
   @override
  void deactivate() {
    controller.pause();
    // TODO: implement deactivate
    super.deactivate();
  }


@override
  void dispose() {
    controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }


  @override
  Widget build(BuildContext context) => YoutubePlayerBuilder(
    player: YoutubePlayer(controller: controller),
    builder:(context, player) => Scaffold(
      appBar: AppBar(title:const Text("Youtube Player")),
      body: ListView(
        children: [
              player,
              Text(controller.metadata.title,style:GoogleFonts.baskervville(fontSize: 20)),
              const SizedBox(height:8),
              Text('Author: ${controller.metadata.author}',style:GoogleFonts.portLligatSlab(fontSize: 15)),
               const SizedBox(height:8),
            // Text('${controller.metadata.duration.inSeconds} seconds'),
             const  SizedBox(height:50),
              
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  child:  Text('Full Screen',style:GoogleFonts.abel(fontSize: 20, fontWeight: FontWeight.w400,color: Colors.black54)),
                  onPressed: (){
                    controller.toggleFullScreenMode();
                  },
                
                ),
              ),
              ElevatedButton(
                child:  Text(controller.value.isPlaying ? 'Pause':'Play',style:GoogleFonts.abel(fontSize: 20,color: Colors.black54)),
                onPressed: (){
                  if(controller.value.isPlaying){
                    controller.pause();
                  }else{
                    controller.play();
                  }
                },

              ),
              ElevatedButton(
                child:  Text('Mute',style:GoogleFonts.abel(fontSize: 20,color: Colors.black54)),
                onPressed: (){
                 controller.mute();
                 
                 controller.seekTo(const Duration(seconds: 10));
                  },
              

              ),
              ElevatedButton(
                child:  Text('Restart', style:GoogleFonts.abel(fontSize: 20,color: Colors.black54)),
                onPressed: (){ 
                 controller.seekTo(const Duration(seconds: 10));
                  },
              

              ),
              ElevatedButton(
                child:  Text('Unmute',style:GoogleFonts.abel(fontSize: 20,color: Colors.black54)),
                onPressed: (){ 
                 controller.unMute();
                  },
              

              ),
        ],
      ), 
    ),
  );
}