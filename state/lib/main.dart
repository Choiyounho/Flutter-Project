import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
          appBar: AppBar(
              actions: [
                IconButton(icon: const Icon(Icons.home), onPressed: () {

                },)
              ],
              centerTitle: false,
              title: const Text('This is App bar')),
          body: const TestWidget(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.bug_report),
        onPressed: () {

        },
      ),
      )
  ));
}

class TestWidget extends StatelessWidget {
  const TestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Center(
        child: Text(
          'Hello, Flutter!!',
          style: TextStyle(color: Colors.black, fontSize: 50),
        ),
      ),
    );
  }
}
