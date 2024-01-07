import 'package:flutter/material.dart';
import 'package:hoss/common/common.dart';
import 'package:hoss/screen/main/tab/stock/setting/w_os_switch.dart';

class SwitchMenu extends StatelessWidget {
  final String title;
  final bool isOn;
  final ValueChanged<bool> onTap;

  const SwitchMenu(this.title, this.isOn, {super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        title.text.make(),
        EmptyExpanded(),
        OsSwitch(isOn: isOn, onTap: onTap)
      ],
    ).p20();
  }
}
