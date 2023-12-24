import 'dart:math';

import 'package:state/rps/result.dart';

enum Rps {
  rock,
  paper,
  scissors;
}

extension RpsExtension on Rps {

  Result game() {
    final randomIndex = Random.secure().nextInt(3);
    final cpu = Rps.values[randomIndex];

    if (this == cpu) {
      return Result.draw;
    }

    switch ([this, cpu]) {
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