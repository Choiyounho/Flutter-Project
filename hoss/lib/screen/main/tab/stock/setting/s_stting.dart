import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hoss/common/common.dart';
import 'package:hoss/common/dart/extension/datetime_extension.dart';
import 'package:hoss/common/data/preference/prefs.dart';
import 'package:hoss/screen/main/tab/stock/setting/w_switch_menu.dart';
import 'package:hoss/screen/widgets/big_button.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: '설정'.text.make(),
      ),
      body: ListView(
        children: [
          Obx(
            () => SwitchMenu('푸시 설정', Prefs.isPushOnRx.get(), onTap: (isOn) {
              Prefs.isPushOnRx.set(isOn);
            }),
          ),
          Obx(() => Slider(
              value: Prefs.sliderPosition.get(),
              onChanged: (value) {
                Prefs.sliderPosition.set(value);
              })),
          Obx(() => BigButton('날짜 ${Prefs.birthDay.get() == null ? "" : Prefs.birthDay.get()?.formattedDate}',
                onTap: () async {
              final date = await showDatePicker(
                  initialDate: DateTime.now(),
                  context: context,
                  firstDate: DateTime.now().subtract(90.days),
                  lastDate: DateTime.now().add(90.days));

              if (date != null) {
                Prefs.birthDay.set(date);
              }
            }),
          ),
          BigButton('오픈소스 화면', onTap: () async {

          })
        ],
      ),
    );
  }
}
