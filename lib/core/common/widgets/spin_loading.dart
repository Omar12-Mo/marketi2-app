import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:testapp/core/utils/app_colors.dart';

class SpinLoading extends StatelessWidget {
  const SpinLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SpinKitFadingCircle(color: AppColors.darkBlue200);
  }
}
