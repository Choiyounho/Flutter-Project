import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: const ThemeHomeWidget(),
    theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        textTheme: const TextTheme(
            bodyMedium: TextStyle(fontSize: 30),
        bodyLarge: TextStyle(fontSize: 40, fontWeight: FontWeight.bold))
        // const ColorScheme.light(
        //     primary: Colors.indigo,
        //     secondary: Colors.lightGreen,
        //     tertiary: Colors.amber),
        // appBarTheme: const AppBarTheme(
        //   backgroundColor: Colors.red
        // )
        ),
  ));
}

class ThemeHomeWidget extends StatefulWidget {
  const ThemeHomeWidget({super.key});

  @override
  State<ThemeHomeWidget> createState() => _ThemeHomeWidgetState();
}

class _ThemeHomeWidgetState extends State<ThemeHomeWidget> {
  late int index;


  @override
  void initState() {
    super.initState();
    index = 0;
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('플러터 테마'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('Next Page', style: textTheme.bodyLarge)],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {},
      ),
    );
  }
}
