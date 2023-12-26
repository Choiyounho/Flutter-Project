import 'package:flutter/material.dart';
import 'package:state/insta/insta_body.dart';

void main() {
  runApp(const InstaApp());
}

class InstaApp extends StatelessWidget {
  const InstaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: InstaMain());
  }
}
