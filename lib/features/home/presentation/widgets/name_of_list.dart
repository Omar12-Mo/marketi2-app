import 'package:flutter/material.dart';
import 'package:testapp/core/utils/app_colors.dart';
import 'package:testapp/core/utils/app_text_style.dart';

class NameOfList extends StatelessWidget {
  const NameOfList({super.key, required this.listName, this.onPressed});

  final String listName;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          listName,
          style: semibold(color: AppColors.textPrimary, fontsize: 20),
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            "View all",
            style: medium(color: AppColors.lightBlue100, fontsize: 16),
          ),
        ),
      ],
    );
  }
}
