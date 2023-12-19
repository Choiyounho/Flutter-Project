import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: Body(),
    ),
  ));
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Row(children: [
              Expanded(child: Container(color: Colors.red)),
              Expanded(child: Container(color: Colors.greenAccent)),
              Expanded(child: Container(color: Colors.amber)),
        ])),
        Expanded(
            child: Row(children: [
              Expanded(child: Container(color: Colors.grey)),
              Expanded(child: Container(color: Colors.blueGrey)),
              Expanded(child: Container(color: Colors.purple)),
            ])),
        Expanded(
            child: Row(children: [
              Expanded(child: Container(color: Colors.red)),
              Expanded(child: Container(color: Colors.greenAccent)),
              Expanded(child: Container(color: Colors.amber)),
            ])),
      ],
    );
  }
}
