import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mide_mate/core/shared_widgets/custom_button.dart';

class SignInByApps extends StatelessWidget {
  const SignInByApps({super.key});

  @override
  Widget build(BuildContext context) {
    return      Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomButton(
                          borderRadius: BorderRadius.circular(10.r),
                          child: SvgPicture.asset(
                            'assets/svgs/google_icon.svg',
                            height: 35.h,
                            width: 35.w,
                          )),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        child: CustomButton(
                            borderRadius: BorderRadius.circular(10.r),
                            child: SvgPicture.asset(
                              'assets/svgs/facebook_icon.svg',
                              height: 35.h,
                              width: 35.w,
                            )),
                      ),
                      CustomButton(
                          borderRadius: BorderRadius.circular(10.r),
                          child: SvgPicture.asset(
                            'assets/svgs/apple_icon.svg',
                            height: 35.h,
                            width: 35.w,
                          )),
                    ],
                  );
  }
}