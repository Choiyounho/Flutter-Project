import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: Body(),
    ),
  ));
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [MyCheckBox()],
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
