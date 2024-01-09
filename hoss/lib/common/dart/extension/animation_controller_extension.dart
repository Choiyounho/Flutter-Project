import 'package:flutter/widgets.dart';
import 'package:hoss/common/common.dart';

extension AnimationControllerExtension on AnimationController {
  void animateToTheEnd() {
    animateTo(1.0, duration: 10.ms);
  }

  void animateToTheBeginning() {
    animateTo(0, duration: 10.ms);
  }
}
