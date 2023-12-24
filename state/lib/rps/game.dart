import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:state/rps/result.dart';
import 'package:state/rps/screen/result_screen.dart';
import 'package:state/screen/new_page.dart';

import 'screen/home_screen.dart';

const imagePath = 'assets/images/';
const rockPath = 'rock.png';
const paperPath = 'paper.png';
const scissorsPath = 'scissors.png';

void main() {
  runApp(MaterialApp.router(
    routerConfig: GoRouter(
        initialLocation: '/',
        routes: [
      GoRoute(
          path: '/',
          name: 'home',
          builder: (context, state) => const RpsHomeWidget()),
      GoRoute(
          path: '/result',
          name: 'result',
          builder: (context, state) {
            final result = state.extra! as Result;
            return RpsResultWidget(result: result);
          }),
    ]),
  ));
}
