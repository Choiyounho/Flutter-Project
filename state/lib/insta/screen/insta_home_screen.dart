import 'package:flutter/material.dart';

class InstaHomeScreen extends StatelessWidget {
  const InstaHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [Stories(), Feeds()],
      ),
    );
  }
}

class Stories extends StatelessWidget {
  const Stories({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: storyItems(12),
      ),
    );
  }

  List<Widget> storyItems(int count) {
    List<Widget> stories = [];

    for (int i = 0; i < count; i++) {
      stories.add(Column(children: [
        Container(
            width: 70,
            height: 70,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.indigo,
            ),
            margin: const EdgeInsets.symmetric(horizontal: 8)),
        const Text('데이터')
      ]));
    }

    return stories;
  }
}

final feedData = [
  Feed(userName: 'userName', likeCount: 3, content: '헬로'),
  Feed(userName: 'userName', likeCount: 3, content: '헬로'),
  Feed(userName: 'userName', likeCount: 3, content: '헬로'),
  Feed(userName: 'userName', likeCount: 3, content: '헬로'),
  Feed(userName: 'userName', likeCount: 3, content: '헬로'),
  Feed(userName: 'userName', likeCount: 3, content: '헬로'),
  Feed(userName: 'userName', likeCount: 3, content: '헬로'),
  Feed(userName: 'userName', likeCount: 3, content: '헬로'),
  Feed(userName: 'userName', likeCount: 3, content: '헬로'),
];

class Feeds extends StatelessWidget {
  const Feeds({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => FeedItem(feed: feedData[index]),
      itemCount: feedData.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
    );
  }
}

class FeedItem extends StatelessWidget {
  final Feed feed;

  const FeedItem({super.key, required this.feed});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                    width: 30,
                    height: 30,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.brown,
                    ),
                    margin:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 8)),
                const Text('데이터')
              ],
            ),
            Container(
              child: const Icon(Icons.menu),
              margin: const EdgeInsets.only(right: 8),
            )
          ],
        ),
        Container(
          width: double.infinity,
          height: 300,
          color: Colors.grey,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Icon(Icons.favorite),
                ),
                Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Icon(Icons.message),
                ),
                Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Icon(Icons.air),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(4),
              child: Icon(Icons.bookmark),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Text(
            '좋아요 ${feed.likeCount}개',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: RichText(
            text: TextSpan(children: [
              TextSpan(
                  text: feed.userName + '  ',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: feed.content),
            ],
            style: TextStyle(color: Colors.black)),
          ),
        )
      ],
    );
  }
}

class Feed {
  final String userName;
  final int likeCount;
  final String content;

  Feed(
      {required this.userName, required this.likeCount, required this.content});
}
