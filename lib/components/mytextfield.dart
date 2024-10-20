import 'package:flutter/material.dart';

class TextFieldComponent extends StatelessWidget {
    
    // ignore: prefer_typing_uninitialized_variables
    final controller;
    final String hintText;
    final bool obsecureText;
 
  const TextFieldComponent({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obsecureText,
    });



  @override
  Widget build(BuildContext context) {
    return  Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: TextField(
                  controller: controller,
                  obscureText: obsecureText,
                  decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade500),
                    ),
                    fillColor: Colors.grey.shade100,
                    filled: true,
                    hintText: hintText,
                    hintStyle: TextStyle(color: Colors.grey[500],),
                  ),
                ),
              )
              ;
  }
}