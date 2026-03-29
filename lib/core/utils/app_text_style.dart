import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



  TextStyle _textStyle({
    required Color color,
    required double fontsize,
    required FontWeight fontweight,
  }) {
    return GoogleFonts.poppins(
      color: color,
      fontSize: fontsize,
      fontWeight: fontweight,
    );
  }

   TextStyle semibold({required Color color , required double fontsize}) {
    return _textStyle(color: color, fontsize: fontsize, fontweight: FontWeight.w600);
  }
   TextStyle medium({required Color color , required double fontsize}) {
    return _textStyle(color: color, fontsize: fontsize, fontweight: FontWeight.w500);
  }
   TextStyle regular({required Color color , required double fontsize}) {
    return _textStyle(color: color, fontsize: fontsize, fontweight: FontWeight.w400);
  }




