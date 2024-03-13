import 'package:clean_architecture_with_mvvm/presentation/utils/color.dart';
import 'package:flutter/material.dart';

ThemeData getApplicationTheme(){
  return ThemeData(

    // main colors of the app
    primaryColor: ColorManager.primaryColor,
    primaryColorLight: ColorManager.primaryOpacity70,
    primaryColorDark: ColorManager.darkPrimaryColor,
    disabledColor: ColorManager.grey1, // will be used encase of disabled button for example.
    hintColor: ColorManager.greyColor

    //card view theme


  );
}