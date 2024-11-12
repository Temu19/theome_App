// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class UserDetail extends StatelessWidget {
  final String text;
  final String sectionName;
  final void Function()? onPressed;

  // Constructor that accepts 'text', 'sectionName' and 'onPressed' as arguments
  const UserDetail({
    super.key,
    required this.text,
    required this.sectionName,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.only(left: 15, bottom: 15),
      margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Row with section name and settings icon
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                sectionName,
                style: TextStyle(color: Colors.grey[500]),
              ),
              IconButton(
                onPressed: onPressed, // Pass the onPressed function from parent
                icon: const Icon(Icons.settings),
                color: Colors.grey[500],
              ),
            ],
          ),
          // Display the text (denomination or username) passed from the parent
          Text(text),
        ],
      ),
    );
  }
}
