import 'package:flutter/material.dart';

import 'package:testapp/core/utils/app_colors.dart';
import 'package:testapp/core/utils/app_text_style.dart';

class AppTheme {
  //light theme
  static ThemeData appLightTheme() {
    return ThemeData(
      //primary color
      primaryColor: AppColors.primaryColor,

      //scaffoldBackgroundColor
      scaffoldBackgroundColor: AppColors.primaryColor,

      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,

      //Appbar Theme
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.primaryColor,
        centerTitle: true,
        titleTextStyle: semibold(color: AppColors.textPrimary, fontsize: 20),
      ),

      //Button theme
      elevatedButtonTheme: ElevatedButtonThemeData(
        
        style: ElevatedButton.styleFrom(
          foregroundColor: AppColors.primaryColor,
          minimumSize: Size(double.infinity, 48),
          backgroundColor: AppColors.lightBlue100,
          shape: RoundedRectangleBorder(
            
            borderRadius: BorderRadiusGeometry.circular(14),
          ),
          textStyle: medium(color: AppColors.primaryColor, fontsize: 18),
        ),
      ),

      //input text filled
      inputDecorationTheme: InputDecorationThemeData(
        fillColor: AppColors.primaryColor,
        filled: true,
        hintStyle: regular(color: AppColors.gray2, fontsize: 12),
        prefixIconColor: AppColors.textPrimary,
        suffixIconColor: AppColors.textPrimary,

        //enabled border
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            width: 2,
            color: AppColors.lightBlue700.withValues(alpha: 0.7),
          ),
        ),
        //focused border
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            width: 2,
            color: AppColors.lightBlue700.withValues(alpha: 0.7),
          ),
        ),

        //!focused error border
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            width: 2,
            color: AppColors.darkRed200.withValues(alpha: 0.7),
          ),
        ),

        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            width: 2,
            color: AppColors.darkRed200.withValues(alpha: 0.7),
          ),
        ),
      ),

     
    );
  }

  //dark theme
 static ThemeData appDarkTheme() {
    return ThemeData.dark();
  }
}
