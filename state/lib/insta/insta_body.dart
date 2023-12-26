import 'package:flutter/material.dart';
import 'package:state/insta/screen/insta_main_screen_body.dart';

class InstaMain extends StatefulWidget {
  const InstaMain({super.key});

  @override
  State<InstaMain> createState() => _InstaMainState();
}

class _InstaMainState extends State<InstaMain> {
  late int index;

  @override
  void initState() {
    super.initState();
    index = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: index == 0 ? AppBar(
        title: const Text('Instagram'),
        centerTitle: false,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.favorite)),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.air),
          ),
        ],
      ) : null,
      body: InstaMainScreenBody(index: index),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '홈'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: '서치'),
        ],
          currentIndex: index,
          onTap: (index) => setState(() {
            this.index = index;
          })
      ),
    );
  }
}
