import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:testapp/core/utils/app_colors.dart';

void ShowToast({required String message , required ToastStates state}) {
  Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_SHORT,
    gravity: state==ToastStates.fail? ToastGravity.TOP :ToastGravity.BOTTOM,
    timeInSecForIosWeb: 1,
    backgroundColor:getState(state),
    textColor: Colors.white,
    fontSize: 16.0,
  );
}

enum ToastStates { success, fail }

Color getState(ToastStates state) {
  if (state == ToastStates.success) {
    return AppColors.darkBlue200;
  } else {
    return AppColors.darkRed200;
  }
}
