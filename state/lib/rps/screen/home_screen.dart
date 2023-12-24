import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:state/rps/game.dart';

import '../result.dart';
import '../rps.dart';

class RpsHomeWidget extends StatelessWidget {
  const RpsHomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          const Expanded(
              child: Center(
                  child: Text(
            '가위바위보 게임 입니다.',
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ))),
          const Expanded(
              child: Center(
                  child: Text('아래 세개 중 한 개를 선택해주세요.',
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)))),
          Expanded(
              child: Center(
            child: Row(
              children: [
                Expanded(
                    child: InkWell(
                  onTap: () {
                    const myRps = Rps.rock;
                    final result = Result.game(myRps);

                    context.pushNamed('result', extra: result);
                  },
                  child: Container(
                      padding: const EdgeInsets.all(16),
                      margin: const EdgeInsets.all(16),
                      decoration: BoxDecoration(border: Border.all()),
                      child: Image.asset('$imagePath$rockPath')),
                )),
                Expanded(
                    child: InkWell(
                  onTap: () {
                    const myRps = Rps.scissors;
                    final result = Result.game(myRps);

                    context.pushNamed('result', extra: result);
                  },
                  child: Container(
                      padding: const EdgeInsets.all(16),
                      margin: const EdgeInsets.all(16),
                      decoration: BoxDecoration(border: Border.all()),
                      child: Image.asset('$imagePath$scissorsPath')),
                )),
                Expanded(
                    child: InkWell(
                  onTap: () {
                    const myRps = Rps.paper;
                    final result = Result.game(myRps);

                    context.pushNamed('result', extra: result);
                  },
                  child: Container(
                      padding: const EdgeInsets.all(16),
                      margin: const EdgeInsets.all(16),
                      decoration: BoxDecoration(border: Border.all()),
                      child: Image.asset('$imagePath$paperPath')),
                )),
              ],
            ),
          )),
        ],
      ),
    ));
  }
}
