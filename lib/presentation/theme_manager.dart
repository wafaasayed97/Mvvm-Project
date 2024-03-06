import 'package:flutter/material.dart';
import 'package:mvvm_project/presentation/fonts_manager.dart';
import 'package:mvvm_project/presentation/styles_manager.dart';
import 'package:mvvm_project/presentation/values_manager.dart';

import 'color_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(

      //main Color
      primaryColor: ColorManager.primary,
      primaryColorLight: ColorManager.lightPrimary,
      primaryColorDark: ColorManager.darkPrimary,
      disabledColor: ColorManager.grey1,
      splashColor: ColorManager.lightPrimary,
      //Card View theme
      cardTheme: CardTheme(
        color: ColorManager.white,
        shadowColor: ColorManager.grey,
        elevation: AppSize.s4,
      ),
      //app theme
      appBarTheme: AppBarTheme(
        centerTitle: true,
        color: ColorManager.primary,
        elevation: AppSize.s4,
        shadowColor: ColorManager.lightPrimary,
        titleTextStyle: getRegularStyle(
          color: ColorManager.white,
          fontSize: AppSize.s16,
        ),
      ),
      //Button Theme
      buttonTheme: ButtonThemeData(
        shape: const StadiumBorder(),
        disabledColor: ColorManager.grey1,
        buttonColor: ColorManager.primary,
        splashColor: ColorManager.lightPrimary,
      ),
      //elevated button theme
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          textStyle: getRegularStyle(
            color: ColorManager.white,
            fontSize: FontSize.s17,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.s12),
          ),
        ),
      ),
      // text theme
      textTheme: TextTheme(
        displayLarge:
            getLightStyle(color: ColorManager.white, fontSize: FontSize.s22),
        headline1: getSemiBoldStyle(
          color: ColorManager.darkGrey,
          fontSize: FontSize.s16,
        ),
        titleMedium: getMediumStyle(
          color: ColorManager.lightGrey,
          fontSize: FontSize.s14,
        ), //subtitle 1
        bodySmall: getRegularStyle(color: ColorManager.grey1), //caption
        bodyLarge: getRegularStyle(color: ColorManager.grey), //body text1
      ),
      //Input Decoration Theme (Text Form Field)
      inputDecorationTheme: InputDecorationTheme(
          contentPadding: const EdgeInsets.all(AppPadding.p8),
          hintStyle: getRegularStyle(color: ColorManager.grey,fontSize: FontSize.s14),
          labelStyle: getMediumStyle(color: ColorManager.grey ,fontSize: FontSize.s14),
          errorStyle: getRegularStyle(color: ColorManager.error),
          enabledBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: ColorManager.grey, width: AppSize.s1_5),
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
          ),
          errorBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: ColorManager.error, width: AppSize.s1_5),
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
          )));
}
