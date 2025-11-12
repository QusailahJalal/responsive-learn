import 'dart:developer';
import 'package:flutter/material.dart';

class MediaQueryExample extends StatelessWidget {
  const MediaQueryExample({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    log(screenSize.height.toString());
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: 200,
            height: screenSize.height * 0.4,
            color: Colors.red,
          ),
          Container(
            width: 200,
            height: screenSize.height * 0.4,
            color: Colors.blue,
          ),
          Container(
            width: 200,
            height: screenSize.height * 0.4,
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}
