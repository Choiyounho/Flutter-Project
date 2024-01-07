import 'package:flutter/material.dart';
import 'package:hoss/common/common.dart';

import '../../../../../common/widget/w_arrow.dart';
import '../../../../widgets/long_button.dart';
import '../../../../widgets/rounded_container.dart';
import 'interest_stock_list.dart';

class MyStockScreen extends StatelessWidget {
  const MyStockScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [getMyAccount(context), Height(20), getMyStock(context)],
    );
  }

  Widget getMyAccount(BuildContext context) => Container(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    color: context.appColors.roundedLayoutBackground,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Height(20),
        '계좌'.text.make(),
        Row(
          children: [
            '443원'.text.size(24).bold.make(),
            const Arrow(),
            EmptyExpanded(),
            RoundedContainer(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
              radius: 8,
              backgroundColor: context.appColors.buttonBackground,
              child: '채우기'.text.size(12).make(),
            )
          ],
        ),
        Height(30),
        Line(
          color: context.appColors.divider,
        ),
        Height(10),
        LongButton(
          title: '주문내역',
          onTap: () {},
        ),
        LongButton(
          title: '판매수익',
          onTap: () {},
        ),
      ],
    ),
  );

  Widget getMyStock(BuildContext context) {
    return Container(
      color: context.appColors.roundedLayoutBackground,
      child: Column(
        children: [
          Height(30),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  '관심주식'.text.bold.make(),
                  '편집하기'.text.color(context.appColors.lessImportant).make()
                ],
              ),
              Height(20),
              Tap(
                onTap: () {
                  context.showSnackbar('기본');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    '기본'.text.make(),
                    const Arrow(direction: AxisDirection.up),
                  ],
                ).pSymmetric(v: 10),
              ),
            ],
          ).pSymmetric(h: 20),
          const InterestStockList().pOnly(bottom: 60),
        ],
      ),
    );
  }
}

