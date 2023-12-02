import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mide_mate/core/helper/extentions.dart';
import 'package:mide_mate/core/theming/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:mide_mate/core/theming/text_stylels.dart';

class BookAndScheduleWidget extends StatelessWidget {
  const BookAndScheduleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      // alignment: Alignment.center,
      children: [
        Container(
          // height: 170.h,
          // width: 350.w,
          height: context.deviceHeight * .22,
          width: context.deviceWidth,
          padding: EdgeInsets.all(18.r),
          margin: EdgeInsets.only(top: 50.h),
          decoration: BoxDecoration(
              color: ColorManager.mainBlue,
              borderRadius: BorderRadius.circular(24)),
          child: Row(
            children: [
              SizedBox(
                width: context.deviceWidth * .40,
                child: Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          'Book and schedule with nearest doctor',
                          style: TextStyles.font24Black700
                              .copyWith(color: Colors.white, fontSize: 17.sp),
                        ),
                      ),
                      SizedBox(height: 15.h),
                      TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.white,
                              textStyle: TextStyles.font32Blue700
                                  .copyWith(fontSize: 12.sp)),
                          child: const Text('Find Nearby'))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),

        Positioned(
          bottom: 0.h,
          left: 185.w,
          child: Image.asset(
            'assets/images/doctor_image1.png',
            // height: 190.h,
            // width: 135.w,
            height: context.deviceHeight * .26,
            width: context.deviceWidth * .38,
          ),
        ),
        // Positioned(
        //   bottom: 25,
        //   left: 185,
        //   child: Image.asset(
        //     'assets/images/doctor_image1.png',
        //     height: 190.h,
        //     width: 135.w,
        //   ),
        // ),
      ],
    );
  }
}
