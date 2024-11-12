import 'package:flutter/material.dart';
import 'package:theome_fury_app/responsive/desktop_video.dart';
import 'package:theome_fury_app/responsive/mobile_video.dart';
import 'package:theome_fury_app/responsive/responsive_layout.dart';
import 'package:theome_fury_app/responsive/tablet_video.dart';

class VideosPage extends StatelessWidget {
  const VideosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
                   body: ResponsiveLayout(
                    mobileScaffold: const MobileVideo(), 
                    desktopScaffold: const DesktopVideo(), 
                    tabletScaffold: const TabletVideo()),
    );
  }
}