import 'dart:math';

import 'package:state/rps/rps.dart';

enum Result {
  win,
  draw,
  defeat;

  factory Result.game(Rps input) {
    final randomIndex = Random.secure().nextInt(3);
    final cpu = Rps.values[randomIndex];

    if (input == cpu) {
      return Result.draw;
    }

    switch ([input, cpu]) {
      case [Rps.paper, Rps.rock]: return Result.win;
      case [Rps.paper, Rps.scissors]: return Result.defeat;

      case [Rps.rock, Rps.scissors]: return Result.win;
      case [Rps.rock, Rps.paper]: return Result.defeat;

      case [Rps.scissors, Rps.paper]: return Result.win;
      case [Rps.scissors, Rps.rock]: return Result.defeat;

      default: return Result.draw;
    }
  }
}