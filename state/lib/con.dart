import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(appBar: AppBar(title: Text("제약")), body: Body())));
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 100,
          height: 100,
          color: Colors.blueGrey,
          margin: EdgeInsets.symmetric(vertical: 10),
        ),
        Expanded(
          child: Container(
            width: 100,
            height: 100,
            color: Colors.red,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    color: Colors.blue,
                    height: 50,
                    width: 50,
                    margin: EdgeInsets.symmetric(vertical: 10),
                  ),
                  Container(
                    color: Colors.blue,
                    height: 50,
                    width: 50,
                    margin: EdgeInsets.symmetric(vertical: 10),
                  ),
                  Container(
                    color: Colors.blue,
                    height: 50,
                    width: 50,
                    margin: EdgeInsets.symmetric(vertical: 10),
                  ),
                  Container(
                    color: Colors.blue,
                    height: 50,
                    width: 50,
                    margin: EdgeInsets.symmetric(vertical: 10),
                  ),
                  Container(
                    color: Colors.blue,
                    height: 50,
                    width: 50,
                    margin: EdgeInsets.symmetric(vertical: 10),
                  ),
                  Container(
                    color: Colors.blue,
                    height: 50,
                    width: 50,
                    margin: EdgeInsets.symmetric(vertical: 10),
                  ),
                  Container(
                    color: Colors.blue,
                    height: 50,
                    width: 50,
                    margin: EdgeInsets.symmetric(vertical: 10),
                  ),
                  Container(
                    color: Colors.blue,
                    height: 50,
                    width: 50,
                    margin: EdgeInsets.symmetric(vertical: 10),
                  ),
                  Container(
                    color: Colors.blue,
                    height: 50,
                    width: 50,
                    margin: EdgeInsets.symmetric(vertical: 10),
                  ),
                  Container(
                    color: Colors.blue,
                    height: 50,
                    width: 50,
                    margin: EdgeInsets.symmetric(vertical: 10),
                  ),
                  Container(
                    color: Colors.blue,
                    height: 50,
                    width: 50,
                    margin: EdgeInsets.symmetric(vertical: 10),
                  ),
                  Container(
                    color: Colors.blue,
                    height: 50,
                    width: 50,
                    margin: EdgeInsets.symmetric(vertical: 10),
                  ),
                  Container(
                    color: Colors.blue,
                    height: 50,
                    width: 50,
                    margin: EdgeInsets.symmetric(vertical: 10),
                  ),
                  Container(
                    color: Colors.blue,
                    height: 50,
                    width: 50,
                    margin: EdgeInsets.symmetric(vertical: 10),
                  ),
                  Container(
                    color: Colors.blue,
                    height: 50,
                    width: 50,
                    margin: EdgeInsets.symmetric(vertical: 10),
                  ),
                  Container(
                    color: Colors.blue,
                    height: 50,
                    width: 50,
                    margin: EdgeInsets.symmetric(vertical: 10),
                  ),
                  Container(
                    color: Colors.blue,
                    height: 50,
                    width: 50,
                    margin: EdgeInsets.symmetric(vertical: 10),
                  ),
                  Container(
                    color: Colors.blue,
                    height: 50,
                    width: 50,
                    margin: EdgeInsets.symmetric(vertical: 10),
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.greenAccent,
          margin: EdgeInsets.symmetric(vertical: 10),
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.amber,
          margin: EdgeInsets.symmetric(vertical: 10),
        )
      ],
    );
  }
}
