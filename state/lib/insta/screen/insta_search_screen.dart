import 'package:flutter/material.dart';

class InstaSearchScreen extends StatelessWidget {
  const InstaSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [SearchBarText(), SearchGrid()],
        ),
      ),
    );
  }
}

class SearchBarText extends StatelessWidget {
  const SearchBarText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
      child: TextField(
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(8),
              prefixIcon: const Icon(Icons.search),
              fillColor: Colors.grey.shade200,
              filled: true,
              hintText: '검색',
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide:
                      BorderSide(color: Colors.grey.shade200, width: 1)))),
    );
  }
}

final gridItems = List.generate(30, (index) => Colors.green.shade300);

class SearchGrid extends StatelessWidget {
  const SearchGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: EdgeInsets.zero,
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      crossAxisCount: 3,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: gridItems.map((color) => Container(color: color)).toList(),
    );
  }
}
