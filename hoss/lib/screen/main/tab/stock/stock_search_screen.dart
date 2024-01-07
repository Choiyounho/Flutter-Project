import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hoss/screen/main/tab/stock/stock_search_app_bar.dart';
import 'package:hoss/screen/main/tab/stock/tab/stock_search_data.dart';
import 'package:hoss/screen/main/tab/stock/tab/w_popular_search_list.dart';
import 'package:hoss/screen/main/tab/stock/tab/w_search_history_list.dart';

class StockSearchScreen extends StatefulWidget {
  const StockSearchScreen({super.key});

  @override
  State<StockSearchScreen> createState() => _StockSearchScreenState();
}

class _StockSearchScreenState extends State<StockSearchScreen> {
  final _controller = TextEditingController();

  late final searchData = Get.find<StockSearchData>();

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
      body: ListView(
        children: const [
          SearchSearchHistories(),
          PopularSearchStocks()
        ],
      ),
    );
  }
}
