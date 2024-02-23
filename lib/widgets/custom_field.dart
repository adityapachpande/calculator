// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../constant/colors.dart';

class Customfield extends StatelessWidget {
  const Customfield({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    final textScreenHeight = MediaQuery.sizeOf(context).height;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 25),
      child: Container(
        height: textScreenHeight * 0.235,
        decoration:
            BoxDecoration(color: AppColors.primaryColor // Border for Container
                ),
        child: TextField(
          controller: controller,
          cursorColor: AppColors.secondaryColor,
          maxLines: null,
          decoration: InputDecoration(
              border: InputBorder.none,
              isDense: true, // Reduce height of TextField
              contentPadding:
                  EdgeInsets.all(5.0), // Add padding to TextField content
              filled: true,
              fillColor: AppColors.primaryColor // Match container color
              ),
          style: TextStyle(fontSize: 40, color: Colors.white),
          readOnly: true,
          autofocus: true,
          showCursor: true,
        ),
      ),
    );
  }
}


// Container(
//             height: 400, // Height of the container
//             width: MediaQuery.of(context).size.width / 2, // Adjust width as needed
//             padding: EdgeInsets.all(8.0),
//             decoration: BoxDecoration(
//               border: Border.all(), // Border for Container
//             ),
//             child: TextField(
//               style: TextStyle(fontSize: 16), // Font size of text field
//               maxLines: null, // Allow unlimited lines
//               decoration: InputDecoration(
//                 hintText: 'Enter text...',
//                 border: InputBorder.none, // No border for TextField
//               ),
//             ),
//           ),
//         ),