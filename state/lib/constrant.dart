import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Study"),
      ),
      body: CustomContainer(),
    ),
  ));
}

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        height: 100,
        padding: const EdgeInsets.fromLTRB(10, 12, 10, 12),
        decoration: BoxDecoration(
          color: const Color(0xff827756ff),
          border: Border.all(color: Colors.red.shade50, width: 5, style: BorderStyle.solid),
          borderRadius: const BorderRadius.all(Radius.circular(16)),
          boxShadow: const [
            BoxShadow(color: Colors.black, offset: Offset(6, 6), blurRadius: 10)
          ]
        ),
        margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        child: Center(
            child: Container(
                color: Colors.amber, child: const Text('Hello Container'))),
      ),
    );
  }
}
