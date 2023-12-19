import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("뷰 쌓기"),
      ),
      body: Body(),
    ),
  ));
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(color: Colors.greenAccent,
          borderRadius: BorderRadius.circular(140)),
          width: 300,
          height: 300,
        ),
        Container(
          width: 250,
          height: 250,
          decoration: BoxDecoration(color: Colors.blue,
              borderRadius: BorderRadius.circular(140)),
        ),
        // Positioned(
        //   bottom: 0,
        //   right: 0,
        //   child: Container(
        //     color: Colors.red,
        //     width: 300,
        //     height: 300,
        //   ),
        // ),
        Container(
          child: Container(
            width: 230,
            height: 230,
            decoration: BoxDecoration(color: Colors.white,
                borderRadius: BorderRadius.circular(140)),
          ),
        ),
        Text(
          'Count 1',
          style: TextStyle(color: Colors.red, fontSize: 20),
        )
      ],
    );
  }
}
