import 'package:hoss/common/cli_common.dart';
import 'package:hoss/common/common.dart';
import 'package:flutter/material.dart';
import 'package:hoss/screen/dialog/d_confirm.dart';
import 'package:hoss/screen/widgets/rounded_container.dart';
import 'package:hoss/screen/widgets/tap_bar.dart';

import '../../../../domain/home/dummy/bank_dummy.dart';
import '../../../dialog/d_color_bottom.dart';
import '../../../dialog/d_message.dart';
import '../../../widgets/back_account.dart';
import '../../../widgets/big_button.dart';
import '../../s_main.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Stack(
        children: [
          RefreshIndicator(
            edgeOffset: HossAppBar.appBarHeight,
            onRefresh: () async {
              await sleepAsync(500.ms);
            },
            child: SingleChildScrollView(
              padding: const EdgeInsets.only(
                  top: HossAppBar.appBarHeight + 10,
                  bottom: MainScreenState.bottomNavigatorHeight),
              child: Column(
                children: [
                  BigButton(
                    "토스뱅크",
                    onTap: () {
                      context.showSnackbar("토스뱅크를 눌렀어요.");
                    },
                  ),
                  Height(10),
                  RoundedContainer(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          "자산".text.bold.white.make(),
                          Height(5),
                          ...bankAccounts.map((e) => BankAccountWidget(e)).toList()
                        ],
                      )),
                ],
              ).pSymmetric(h: 20),
            ),
          ),
          const HossAppBar()
        ],
      ),
    );
  }

  void showSnackbar(BuildContext context, String message) {
    context.showSnackbar(message,
        extraButton: Tap(
          onTap: () {
            context.showErrorSnackbar('error');
          },
          child: '에러 보여주기 버튼'
              .text
              .white
              .size(13)
              .make()
              .centered()
              .pSymmetric(h: 10, v: 5),
        ));
  }

  Future<void> showConfirmDialog(BuildContext context) async {
    final confirmDialogResult = await ConfirmDialog(
      '오늘 기분이 좋나요?',
      buttonText: "네",
      cancelButtonText: "아니오",
    ).show();
    debugPrint(confirmDialogResult?.isSuccess.toString());

    confirmDialogResult?.runIfSuccess((data) {
      ColorBottomSheet(
        '❤️',
        context: context,
        backgroundColor: Colors.yellow.shade200,
      ).show();
    });

    confirmDialogResult?.runIfFailure((data) {
      ColorBottomSheet(
        '❤️힘내여',
        backgroundColor: Colors.yellow.shade300,
        textColor: Colors.redAccent,
      ).show();
    });
  }

  Future<void> showMessageDialog() async {
    final result = await MessageDialog("안녕하세요").show();
    debugPrint(result.toString());
  }

  void openDrawer(BuildContext context) {
    Scaffold.of(context).openDrawer();
  }
}
