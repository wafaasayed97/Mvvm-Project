import 'package:flutter/material.dart';
import 'package:mvvm_project/presentation/fonts_manager.dart';

TextStyle _getTextStyles(double fontSize, FontWeight fontWeight, Color color) {
  return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      fontFamily: FontConstants.fontFamily);
}

//regular
TextStyle getRegularStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyles(fontSize, FontWeightManager.regular, color);
}

//medium
TextStyle getMediumStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyles(fontSize, FontWeightManager.medium, color);
}

//bold
TextStyle getBoldStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyles(fontSize, FontWeightManager.bold, color);
}

//semiBold
TextStyle getSemiBoldStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyles(fontSize, FontWeightManager.semiBold, color);
}

//light
TextStyle getLightStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyles(fontSize, FontWeightManager.light, color);
}