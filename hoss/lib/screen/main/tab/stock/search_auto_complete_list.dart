import 'package:flutter/material.dart';
import 'package:hoss/common/common.dart';
import 'package:hoss/screen/main/tab/stock/tab/stock_search_data.dart';

class SearchAutoCompleteList extends StatelessWidget
    with SearchStockDataProvider {

  final TextEditingController controller;

  SearchAutoCompleteList(this.controller, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: searchData.searchResult.length,
        itemBuilder: (context, index) {
          final stock = searchData.searchResult[index];
          final stockName = stock.name;
          return Tap(onTap: () {
            controller.clear();
            searchData.addSearchHistory(stockName);
            Nav.push(const StockDetailScreen(stockName: '',));
          }, child:
          stockName.text.make()).p(20);
        }
    );
  }
}

class StockDetailScreen extends StatelessWidget {
  final String stockName;

  const StockDetailScreen({
    required this.stockName,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(stockName),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            '주식 상세'.text.make(),
          ],
        ),
      ),
    );
  }
}