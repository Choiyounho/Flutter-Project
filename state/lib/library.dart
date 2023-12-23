import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('외부 라이브러리'),
      ),
      body: const Body(),
    ),
  ));
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return RandomWords();
  }
}

class RandomWords extends StatelessWidget {
  const RandomWords({super.key});

  @override
  Widget build(BuildContext context) {
    final words = generateWordPairs().take(5).toList();
    final widgets = words
        .map((word) => Center(
          child: Text(
                word.asCamelCase,
                style: const TextStyle(fontSize: 20),
              ),
        ))
        .toList();

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: widgets,
    );
  }
}
