import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Widget 상하 또는 좌우 배치"),
      ),
      body: ScrollBody(),
    ),
  ));
}

// 상하
// class Body extends StatelessWidget {
//   const Body({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 300,
//       width: double.infinity,
//       color: Colors.blueGrey,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.end,
//         children: [
//           Container(
//             child: Text("PlaceHolder"),
//             color: Colors.yellow,
//           ),
//           Container(child: Text("PlaceHolder"), color: Colors.green),
//           Container(child: Text("PlaceHolder"), color: Colors.blue)
//         ],
//       ),
//     );
//   }
// }

// 좌우
class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Text("PlaceHolder"),
            color: Colors.yellow,
          ),
          Container(child: Text("PlaceHolder"), color: Colors.green),
          Container(child: Text("PlaceHolder"), color: Colors.blue)
        ],
      ),
    );
  }
}

class ScrollBody extends StatelessWidget {
  const ScrollBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.blueGrey,
          height: 100,
          width: 100,
          margin: const EdgeInsets.symmetric(horizontal: 10),
        ),
        Container(
          color: Colors.blueGrey,
          height: 100,
          width: 100,
          margin: const EdgeInsets.symmetric(horizontal: 10),
        ),
        Container(
          color: Colors.blueGrey,
          height: 100,
          width: 100,
          margin: const EdgeInsets.symmetric(horizontal: 10),
        ),
        Container(
          color: Colors.blueGrey,
          height: 100,
          width: 100,
          margin: const EdgeInsets.symmetric(horizontal: 10),
        ),
        Container(
          color: Colors.blueGrey,
          height: 100,
          width: 100,
          margin: const EdgeInsets.symmetric(horizontal: 10),
        ),
        Container(
          color: Colors.blueGrey,
          height: 100,
          width: 100,
          margin: const EdgeInsets.symmetric(horizontal: 10),
        ),
        Container(
          color: Colors.blueGrey,
          height: 100,
          width: 100,
          margin: const EdgeInsets.symmetric(horizontal: 8),
        ),
        Container(
          color: Colors.blueGrey,
          height: 100,
          width: 100,
          margin: const EdgeInsets.symmetric(horizontal: 8),
        ),
        Container(
          color: Colors.blueGrey,
          height: 100,
          width: 100,
          margin: const EdgeInsets.symmetric(horizontal: 8),
        ),
        Container(
          color: Colors.blueGrey,
          width: 100,
          height: 100,
          margin: const EdgeInsets.symmetric(horizontal: 8),
        ),
        Container(
          color: Colors.blueGrey,
          width: 100,
          height: 100,
          margin: const EdgeInsets.symmetric(horizontal: 8),
        ),
      ],
    );
  }
}
