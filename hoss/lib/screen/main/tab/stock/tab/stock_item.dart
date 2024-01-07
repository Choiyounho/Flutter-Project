import 'package:flutter/material.dart';
import 'package:hoss/common/common.dart';
import 'package:hoss/screen/main/tab/stock/tab/stock.dart';

class StockItem extends StatelessWidget {
  final Stock stock;

  const StockItem(this.stock, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Width(10),
          Image.asset(stock.stockImagePath, width: 50),
          Width(10),
          (stock.name).text.size(18).bold.color(context.appColors.dimmedText).make(),
          EmptyExpanded(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              (stock.todayPercentageString)
                  .text
                  .size(20)
                  .bold
                  .color(stock.getTodayPercentageColor(context))
                  .make(),
              Height(5),
              (stock.yesterdayClosePrice.toComma())
                  .text
                  .size(14)
                  .color(context.appColors.dimmedText)
                  .make(),
            ],
          ),
          Width(10),
        ],
      ),
    );
  }
}