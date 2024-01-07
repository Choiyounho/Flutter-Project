import 'package:flutter/material.dart';
import 'package:hoss/common/common.dart';
import 'package:hoss/screen/main/tab/stock/tab/popular_stock.dart';
import 'package:hoss/screen/main/tab/stock/tab/stock_item.dart';

class InterestStockList extends StatefulWidget {
  const InterestStockList({Key? key}) : super(key: key);

  @override
  State<InterestStockList> createState() => _InterestStockListState();
}

class _InterestStockListState extends State<InterestStockList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.backgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Height(20),
          ...myInterestStocks.map((e) => StockItem(e)).toList(),
        ],
      ),
    );
  }
}