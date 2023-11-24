import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mide_mate/core/theming/colors_manager.dart';

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
}
