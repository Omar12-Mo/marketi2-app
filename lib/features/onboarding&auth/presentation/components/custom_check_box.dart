import 'package:flutter/material.dart';
import 'package:testapp/core/utils/app_colors.dart';

class CheckBox extends StatefulWidget {
  const CheckBox({super.key});

  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool defaultValue = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: defaultValue,
      onChanged: (value) {
        setState(() {
          defaultValue = value!;
        });
      },
      activeColor: AppColors.lightBlue100,
    );
  }
}