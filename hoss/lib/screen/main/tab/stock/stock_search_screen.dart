import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hoss/common/common.dart';
import 'package:hoss/screen/main/tab/stock/search_auto_complete_list.dart';
import 'package:hoss/screen/main/tab/stock/stock_search_app_bar.dart';
import 'package:hoss/screen/main/tab/stock/tab/stock_search_data.dart';
import 'package:hoss/screen/main/tab/stock/tab/w_popular_search_list.dart';
import 'package:hoss/screen/main/tab/stock/tab/w_search_history_list.dart';
import 'package:nav/nav.dart';

import '../../../../common/widget/w_tap.dart';

class StockSearchScreen extends StatefulWidget {
  const StockSearchScreen({super.key});

  @override
  State<StockSearchScreen> createState() => _StockSearchScreenState();
}

class _StockSearchScreenState extends State<StockSearchScreen> with SearchStockDataProvider {
  final _controller = TextEditingController();

  @override
  void initState() {
    if (!Get.isRegistered<StockSearchData>()) {
      Get.put(StockSearchData());
    }
    _controller.addListener(() {
      searchData.search(_controller.text);
    });
    super.initState();
  }

  @override
  void dispose() {
    searchData.searchResult.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: StockSearchAppBar(controller: _controller),
      body: Obx(
            () => searchData.searchResult.isEmpty
            ? ListView(
          children: const [
            SearchStockHistories(),
            PopularSearchStocks(),
          ],
        )
            : ListView.builder(
          itemCount: searchData.searchResult.length,
          itemBuilder: (BuildContext context, int index) {
            final element = searchData.searchResult[index];
            return Tap(
              onTap: () {
                Nav.push(StockDetailScreen(stockName: element.name));
                searchData.addSearchHistory(element.name);
                _controller.clear();
              },
              child: Container(
                padding: const EdgeInsets.all(20),
                child: element.name.text.make(),
              ),
            );
          },
        ),
      ),
    );
  }
}

