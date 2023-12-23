import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: HomeWidget(),
  ));
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  late int index;

  @override
  void initState() {
    super.initState();
    index = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('플러터 화면 이동'),
        ),
      body: homeBody(),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '홈'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: '검색'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: '유저'),
        ],
        currentIndex: index,
        onTap: (index) => setState(() {
          this.index = index;
        }),
      ),
    );
  }

  Widget homeBody() {
    switch (index) {
      case 1: return const Center(child: Icon(Icons.search, size: 100));
      case 2: return const Center(child: Icon(Icons.person, size: 100));
      default: return const Center(child: Icon(Icons.home, size: 100));
    }
  }
}
