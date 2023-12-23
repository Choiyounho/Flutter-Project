import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: SafeArea(child: (Body())),
    ),
  ));
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [MyCheckBox(), MyRadioButton(), MySlider()],
    );
  }
}

class MyCheckBox extends StatefulWidget {
  const MyCheckBox({super.key});

  @override
  State<MyCheckBox> createState() => _MyCheckBoxState();
}

class _MyCheckBoxState extends State<MyCheckBox> {
  late List<bool> checks;

  @override
  void initState() {
    super.initState();
    checks = [false, false, false];
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            value: checks[0],
            onChanged: (isCheck) => changeCheck(0, isCheck: isCheck)),
        Checkbox(
            value: checks[1],
            onChanged: (isCheck) => changeCheck(1, isCheck: isCheck)),
        Checkbox(
            value: checks[2],
            onChanged: (isCheck) => changeCheck(2, isCheck: isCheck)),
      ],
    );
  }

  void changeCheck(int index, {bool? isCheck = false}) {
    setState(() {
      if (isCheck != null) {
        checks[index] = isCheck;
      }
    });
  }
}

class MyRadioButton extends StatefulWidget {
  const MyRadioButton({super.key});

  @override
  State<MyRadioButton> createState() => _MyRadioButtonState();
}

class _MyRadioButtonState extends State<MyRadioButton> {
  MyRadioValue? selectValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Radio<MyRadioValue>(
              value: MyRadioValue.test1,
              groupValue: selectValue,
              onChanged: (value) => setState(() => selectValue = value!)),
          title: Text(MyRadioValue.test1.name),
          onTap: () => setState(() {
            if (selectValue != MyRadioValue.test1) {
              selectValue = MyRadioValue.test1;
            }
          }),
        ),
        ListTile(
          leading: Radio<MyRadioValue>(
              value: MyRadioValue.test2,
              groupValue: selectValue,
              onChanged: (value) => setState(() => selectValue = value!)),
          title: Text(MyRadioValue.test2.name),
          onTap: () => setState(() {
            if (selectValue != MyRadioValue.test2) {
              selectValue = MyRadioValue.test2;
            }
          }),
        ),
        ListTile(
          leading: Radio<MyRadioValue>(
              value: MyRadioValue.test3,
              groupValue: selectValue,
              onChanged: (value) => setState(() => selectValue = value!)),
          title: Text(MyRadioValue.test3.name),
          onTap: () => setState(() {
            if (selectValue != MyRadioValue.test3) {
              selectValue = MyRadioValue.test3;
            }
          }),
        ),
      ],
    );
  }
}

enum MyRadioValue { test1, test2, test3 }

class MySlider extends StatefulWidget {
  const MySlider({super.key});

  @override
  State<MySlider> createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  double value = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('$value'),
        Slider(
            value: value,
            onChanged: (newValue) {
              setState(() => value = newValue);
            },
          divisions: 100,
          max: 100,
          min: 0,
          activeColor: Colors.green,
        label: '$value',),
      ],
    );
  }
}
