import 'package:hoss/common/data/preference/item/nullable_preference_item.dart';
import 'package:hoss/common/data/preference/item/preference_item.dart';
import 'package:hoss/common/data/preference/item/rxn_preference_item.dart';
import 'package:hoss/common/theme/custom_theme.dart';

import 'item/rx_preference_item.dart';

class Prefs {
  static final appTheme = NullablePreferenceItem<CustomTheme>('appTheme');
  static final isPushOn = PreferenceItem<bool>('isPushOn', false);
  static final isPushOnRx = RxPreferenceItem<bool, RxBool>('isPushOnRx', false);
  static final sliderPosition = RxPreferenceItem<double, RxDouble>('sliderPosition', 0);
  static final birthDay = RxnPreferenceItem<DateTime, Rxn<DateTime>>('birthDay');
}
