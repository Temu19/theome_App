import 'package:flutter/material.dart';

class MySliverAppBar extends StatelessWidget {

  final Widget child;

  const MySliverAppBar({
  super.key,
  required this.child,

  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      iconTheme: const IconThemeData(
        color: Colors.white,
        size: 30,
      ),
      expandedHeight: 320,
      
      backgroundColor: Theme.of(context).colorScheme.background,
  

      flexibleSpace: FlexibleSpaceBar(

        background: child,
        // title:title,
        
        // centerTitle: true,
        // titlePadding: const EdgeInsets.only(left:0,right:0,top:0),
        // expandedTitleScale: 1,
      ),
      
    );
  }
}