import 'package:clean_architecture_with_mvvm/presentation/utils/color.dart';
import 'package:clean_architecture_with_mvvm/presentation/utils/fonts.dart';
import 'package:clean_architecture_with_mvvm/presentation/utils/style.dart';
import 'package:clean_architecture_with_mvvm/presentation/utils/values.dart';
import 'package:flutter/material.dart';

ThemeData getApplicationTheme(){
  return ThemeData(

    // main colors of the app
    primaryColor: ColorManager.primaryColor,
    primaryColorLight: ColorManager.primaryOpacity70,
    primaryColorDark: ColorManager.darkPrimaryColor,
    disabledColor: ColorManager.grey1,
    //ripple color
    splashColor: ColorManager.primaryOpacity70,
    // will be used encase of disabled button for example.
    hintColor: ColorManager.greyColor,

    //card view theme
    cardTheme: CardTheme(
      color: ColorManager.whiteColor,
      shadowColor: ColorManager.greyColor,
      elevation: AppSize.s4
  ),

    //App bar theme
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: ColorManager.primaryColor,
      elevation: AppSize.s4,
      shadowColor: ColorManager.primaryOpacity70,
      titleTextStyle: getRegularStyle(
          color: ColorManager.whiteColor,
        fontSize: FontSize.s16,)),

    // Button theme
    buttonTheme: ButtonThemeData(
      shape:  const StadiumBorder(),
      disabledColor: ColorManager.grey1,
      buttonColor: ColorManager.primaryColor,
      splashColor: ColorManager.primaryOpacity70),
    
    // elevated button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: getRegularStyle(color: ColorManager.whiteColor),
          backgroundColor: ColorManager.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s12)
        )
      )
    ),

      //Text theme
    textTheme: TextTheme(
      headline1: getSemiBoldStyle(color: ColorManager.darkGreyColor,fontSize: FontSize.s16),
      subtitle1: getMediumStyle(color: ColorManager.lightGreyColor,fontSize: FontSize.s14 ),
      subtitle2: getMediumStyle(color: ColorManager.primaryColor,fontSize: FontSize.s14 ),
      caption: getRegularStyle(color: ColorManager.grey1),
      bodyText1: getRegularStyle(color: ColorManager.greyColor)
  ),

   //input decoration theme (time form field)
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(AppPadding.p8),
      hintStyle: getRegularStyle(color: ColorManager.grey1),
      labelStyle: getMediumStyle(color: ColorManager.darkGreyColor),
      errorStyle: getRegularStyle(color: ColorManager.errorColor),
      //enabledBorder
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.greyColor,width: AppSize.s1_5),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),
        //focused border
      focusedBorder: OutlineInputBorder(
       borderSide: BorderSide(color: ColorManager.primaryColor,width: AppSize.s1_5),
      borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),
      //errorBorder
      errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ColorManager.errorColor,width: AppSize.s1_5),
          borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),
      //focusedErrorBorder
      focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ColorManager.primaryColor,width: AppSize.s1_5),
          borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),


  )
  );
}