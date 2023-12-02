import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mide_mate/core/theming/colors_manager.dart';
import 'package:mide_mate/core/theming/font_weight_helper.dart';

class TextStyles {
  static TextStyle font24Black700 = TextStyle(
      color: Colors.black, fontSize: 24.sp, fontWeight: FontWeight.w700);
  static TextStyle font32Blue700 = TextStyle(
      color: ColorManager.mainBlue,
      fontSize: 32.sp,
      fontWeight: FontWeight.w700);
  static TextStyle font16Grey = TextStyle(
    color: ColorManager.grey,
    fontSize: 16.sp,
  );
  static TextStyle font18Black = TextStyle(
    color: Colors.black,
    fontSize: 18.sp,
  );
  static TextStyle font24BlueBold = TextStyle(
      color: ColorManager.mainBlue,
      fontSize: 24.sp,
      fontWeight: FontWeightHelper.bold);
  static TextStyle font32Blue = TextStyle(
      color: ColorManager.mainBlue,
      fontSize: 32.sp,
      fontWeight: FontWeight.w700);
  static TextStyle font13GrayRegular = TextStyle(
    color: ColorManager.grey,
    fontWeight: FontWeightHelper.regular,
    fontSize: 13.sp,
  );
  static TextStyle font13DarkBlueRegular = TextStyle(
    color: ColorManager.darkBlue,
    fontWeight: FontWeightHelper.regular,
    fontSize: 13.sp,
  );
  static TextStyle font13BlueSemiBold = TextStyle(
    color: ColorManager.mainBlue,
    fontWeight: FontWeightHelper.semiBold,
    fontSize: 13.sp,
  );
  static TextStyle font13DarkBlueMedium = TextStyle(
    color: ColorManager.darkBlue,
    fontWeight: FontWeightHelper.medium,
    fontSize: 13.sp,
  );
  static TextStyle font14GreyRegular = TextStyle(
    color: ColorManager.grey,
    fontWeight: FontWeightHelper.regular,
    fontSize: 14.sp,
  );
  static TextStyle font14LightGreyRegular = TextStyle(
    color: ColorManager.lightGrey,
    fontWeight: FontWeightHelper.regular,
    fontSize: 14.sp,
  );
  static TextStyle font14DarkBlueMedium = TextStyle(
    color: ColorManager.darkBlue,
    fontWeight: FontWeightHelper.medium,
    fontSize: 14.sp,
  );
  static TextStyle font16WhiteSemiBold = TextStyle(
    color: Colors.white,
    fontWeight: FontWeightHelper.semiBold,
    fontSize: 16.sp,
  );
}
