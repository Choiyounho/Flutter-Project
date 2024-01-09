import 'package:hoss/common/common.dart';
import 'package:hoss/common/widget/w_round_button.dart';
import 'package:hoss/common/widget/w_rounded_container.dart';
import 'package:flutter/material.dart';
import 'package:nav/dialog/dialog.dart';
import 'package:nav/enum/enum_nav_ani.dart';

class NumberDialog extends DialogWidget<int> {
  NumberDialog({super.key, super.animation = NavAni.Fade, super.barrierDismissible = false});

  @override
  DialogState<NumberDialog> createState() => _NotificationDialogState();
}

class _NotificationDialogState extends DialogState<NumberDialog> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RoundedContainer(
              child: Column(
            children: [
              '숫자를 입력해주세요'.text.make(),
              TextField(controller: controller, keyboardType: TextInputType.number,),
              RoundButton(text: '완료', onTap: (){
                final text = controller.text;
                int number = int.parse(text);
                widget.hide(number);

              })
            ],
          ))
        ],
      ),
    );
  }
}
