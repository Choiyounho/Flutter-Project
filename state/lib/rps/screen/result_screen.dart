import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:state/rps/game.dart';

import '../result.dart';

class RpsResultWidget extends StatelessWidget {
  final Result result;

  const RpsResultWidget({super.key, required this.result});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: gameResult(context),
    ));
  }

  Widget gameResult(BuildContext context) {
    switch (result) {
      case Result.win:
        return GestureDetector(
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                    child: Text("승리 하였습니다!",
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold))),
                Center(child: Text('다시하기'))
              ],
            ),
            onTap: () {
              context.goNamed("home");
            });
      case Result.draw:
        return GestureDetector(
            onTap: () {
              context.goNamed("home");
            },
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                    child: Text("무승부 하였습니다!",
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold))),
                Center(child: Text('다시하기'))
              ],
            ));
      default:
        return GestureDetector(
            onTap: () {
              context.goNamed("home");
            },
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                    child: Text("패배 하였습니다!",
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold))),
                Center(child: Text('다시하기'))
              ],
            ));
    }
  }
}
