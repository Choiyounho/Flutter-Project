import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NewPage extends StatelessWidget {
  const NewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('새로운 페이지'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              child: Text('이전페이지'),
              onPressed: () {
                context.pop();
              },
            ),
            TextButton(
              child: Text('Go to New Page2'),
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) {
                //     return NewPage2();
                //   },
                //   ),
                // );
                context.pushNamed('new2');
              },
            ),
          ],
        ),
      ),
    );
  }
}

class NewPage2 extends StatelessWidget {
  const NewPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Page2'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          TextButton(
              onPressed: () {
                context.pop();
              },
              child: Text("Go to Back")),
          TextButton(
              onPressed: () {
                context.goNamed('home');
                // Navigator.popUntil(context, (route) => route.isFirst);
              },
              child: Text("Go to Home"))
        ],
      )),
    );
  }
}
