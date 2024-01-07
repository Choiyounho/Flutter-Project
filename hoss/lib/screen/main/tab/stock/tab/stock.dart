import 'package:hoss/screen/main/tab/stock/tab/popular_stock.dart';

class Stock extends PopularStock {
  final String stockImagePath;

  Stock({
    required super.name,
    required super.yesterdayClosePrice,
    required super.currentPrice,
    required this.stockImagePath,
  });
}