import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mide_mate/core/theming/colors_manager.dart';
import 'package:mide_mate/core/theming/font_weight_helper.dart';

class TextStyles {
  static TextStyle font24Black700 = TextStyle(
      color: Colors.black, fontSize: 24.sp, fontWeight: FontWeight.w700);
  static TextStyle font32Blue700 = TextStyle(
      color: ColorsManager.mainBlue,
      fontSize: 32.sp,
      fontWeight: FontWeight.w700);
  static TextStyle font16Grey = TextStyle(
    color: ColorsManager.grey,
    fontSize: 16.sp,
  );
  static TextStyle font18Black = TextStyle(
    color: Colors.black,
    fontSize: 18.sp,
  );
  static TextStyle font24BlueBold = TextStyle(
      color: ColorsManager.mainBlue,
      fontSize: 24.sp,
      fontWeight: FontWeightHelper.bold);
  static TextStyle font32Blue = TextStyle(
      color: ColorsManager.mainBlue,
      fontSize: 32.sp,
      fontWeight: FontWeight.w700);
  static TextStyle font13GrayRegular = TextStyle(
    color: ColorsManager.grey,
    fontWeight: FontWeightHelper.regular,
    fontSize: 13.sp,
  );
  static TextStyle font13DarkBlueRegular = TextStyle(
    color: ColorsManager.darkBlue,
    fontWeight: FontWeightHelper.regular,
    fontSize: 13.sp,
  );
  static TextStyle font13BlueSemiBold = TextStyle(
    color: ColorsManager.mainBlue,
    fontWeight: FontWeightHelper.semiBold,
    fontSize: 13.sp,
  );
  static TextStyle font13DarkBlueMedium = TextStyle(
    color: ColorsManager.darkBlue,
    fontWeight: FontWeightHelper.medium,
    fontSize: 13.sp,
  );
  static TextStyle font14GreyRegular = TextStyle(
    color: ColorsManager.grey,
    fontWeight: FontWeightHelper.regular,
    fontSize: 14.sp,
  );
  static TextStyle font14LightGreyRegular = TextStyle(
    color: ColorsManager.lightGrey,
    fontWeight: FontWeightHelper.regular,
    fontSize: 14.sp,
  );
  static TextStyle font14DarkBlueMedium = TextStyle(
    color: ColorsManager.darkBlue,
    fontWeight: FontWeightHelper.medium,
    fontSize: 14.sp,
  );
  static TextStyle font16WhiteSemiBold = TextStyle(
    color: Colors.white,
    fontWeight: FontWeightHelper.semiBold,
    fontSize: 16.sp,
  );
  static TextStyle font15DarkBlueMedium = TextStyle(
    color: ColorsManager.darkBlue,
    fontWeight: FontWeightHelper.medium,
    fontSize: 15.sp,
  );
  static TextStyle font14BlueSemiBold = TextStyle(
    color: ColorsManager.mainBlue,
    fontWeight: FontWeightHelper.semiBold,
    fontSize: 14.sp,
  );
}
