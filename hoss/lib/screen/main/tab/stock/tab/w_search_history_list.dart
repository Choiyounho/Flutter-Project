import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hoss/common/common.dart';
import 'package:hoss/screen/main/tab/stock/tab/stock_search_data.dart';

import '../../../../widgets/rounded_container.dart';

class SearchSearchHistories extends StatefulWidget {
  const SearchSearchHistories({Key? key}) : super(key: key);

  @override
  State<SearchSearchHistories> createState() => _SearchSearchHistoriesState();
}

class _SearchSearchHistoriesState extends State<SearchSearchHistories> {
  late final searchHistoryData = Get.find<StockSearchData>();

  get historyList => searchHistoryData.searchHistoryList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 60,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: historyList.length,
          itemBuilder: (context, index) {
            return SearchHistoryItem(
              onTapDelete: () {
                setState(() {
                  historyList.removeAt(index);
                });
              },
              text: historyList[index],
            );
          },
        ));
  }
}

class SearchHistoryItem extends StatelessWidget {
  final void Function() onTapDelete;
  final String text;

  const SearchHistoryItem({
    Key? key,
    required this.onTapDelete,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RoundedContainer(
            margin: const EdgeInsets.symmetric(horizontal: 5),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      text.text.maxLines(1).make(),
                    ],
                  ),
                  Tap(
                      onTap: onTapDelete,
                      child: const Icon(
                        Icons.close,
                        size: 24,
                      ).pOnly(left: 10, top: 10, bottom: 10)),
                ],
              ),
            )),
      ],
    );
  }
}

