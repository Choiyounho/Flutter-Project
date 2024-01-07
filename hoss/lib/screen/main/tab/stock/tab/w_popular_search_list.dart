
import 'package:flutter/material.dart';
import 'package:hoss/common/common.dart';
import 'package:hoss/common/dart/extension/datetime_extension.dart';
import 'package:hoss/screen/main/tab/stock/tab/popular_stock.dart';

class PopularSearchStocks extends StatefulWidget {
  const PopularSearchStocks({Key? key}) : super(key: key);

  @override
  State<PopularSearchStocks> createState() => _PopularSearchStocksState();
}

class _PopularSearchStocksState extends State<PopularSearchStocks> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            '인기 검색'.text.bold.white.size(16).make(),
            EmptyExpanded(),
            '오늘 ${DateTime.now().formattedTime} 기준'.text.white.size(12).make(),
          ],
        ).pSymmetric(h: 20, v: 15),
        Height(20),
        ...popularStocks
            .mapIndexed((e, index) => Row(
          children: [
            (index + 1).text.bold.white.size(16).make(),
            Width(20),
            e.name.text.bold.white.size(16).make(),
            EmptyExpanded(),
            e.todayPercentageString.text
                .color(e.getTodayPercentageColor(context))
                .size(16)
                .make(),
          ],
        ).pSymmetric(h: 20, v: 20))
            .toList()
      ],
    );
  }
}

List<PopularStock> get popularStocks => [
  PopularStock(
    name: '한화솔루션',
    currentPrice: 41600,
    yesterdayClosePrice: 41600,
  ),
  PopularStock(
    name: '현대모비스',
    currentPrice: 219000,
    yesterdayClosePrice: 217000,
  ),
  PopularStock(
    name: '셀트리온',
    currentPrice: 78000,
    yesterdayClosePrice: 80000,
  ),
  PopularStock(
    name: '하이브',
    currentPrice: 92300,
    yesterdayClosePrice: 80000,
  ),
  PopularStock(
    name: 'LG헬로비전',
    currentPrice: 82000,
    yesterdayClosePrice: 80000,
  ),
  PopularStock(
    name: '대한전선',
    currentPrice: 82000,
    yesterdayClosePrice: 80000,
  ),
  PopularStock(
    name: 'SK하이닉스',
    currentPrice: 82000,
    yesterdayClosePrice: 80000,
  ),
  PopularStock(
    name: '삼성전자',
    currentPrice: 82000,
    yesterdayClosePrice: 80000,
  ),
  PopularStock(
    name: '카카오',
    currentPrice: 82000,
    yesterdayClosePrice: 80000,
  ),
  PopularStock(
    name: 'LG화학',
    currentPrice: 82000,
    yesterdayClosePrice: 80000,
  ),
  PopularStock(
    name: '삼양옵틱스',
    currentPrice: 82000,
    yesterdayClosePrice: 80000,
  ),
];