import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mide_mate/core/helper/extentions.dart';
import 'package:mide_mate/core/shared_widgets/custom_text_form_field.dart';
import 'package:mide_mate/core/theming/text_stylels.dart';
import 'package:mide_mate/features/layout/ui/screens/home_screen.dart';

class RecommendationDoctorScreen extends StatelessWidget {
  const RecommendationDoctorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              context.pop();
            },
            icon: Icon(
              Icons.arrow_back_ios,
              size: 25.r,
            )),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Recommendation Doctor',
          style: TextStyles.font24Black700.copyWith(fontSize: 18.sp),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_horiz_outlined,
                    size: 25.r,
                  )),
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.r),
        child: SingleChildScrollView(
            child: Column(
          children: [
            //search
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: context.deviceWidth / 1.29,
                  child: CustomTextFormField(
                    inputType: TextInputType.text,
                    hintText: 'Search ',
                    hintStyle: TextStyles.font16Grey,
                    //TODO:add search icon from assets
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.filter_list_outlined,
                      size: 25.r,
                    ))
              ],
            ),
            SizedBox(height: 20.h),
            ListView.separated(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              separatorBuilder: (context, int index) => SizedBox(height: 10.h),
              itemBuilder: (context, int index) => const Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                color: Colors.white,
                child: Padding(padding: EdgeInsets.all(8), child: DoctorInfo()),
              ),
              itemCount: 10,
            )
          ],
        )),
      ),
    );
  }
}


/* Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/doctor_image2.png',
                      height: 110.h,
                      width: 110.w,
                    ),
                    const SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Dr. Randy Wigham',
                          style: TextStyles.font18Black,
                        ),
                        //doctor information
                        Row(
                          children: [
                            Text(
                              'General |',
                              style: TextStyles.font16Grey
                                  .copyWith(fontSize: 14.sp),
                            ),
                            Text(
                              'RSUD Gatot Subroto',
                              style: TextStyles.font16Grey
                                  .copyWith(fontSize: 14.sp),
                            ),
                          ],
                        ),
                        //doctor rating
                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Text(
                              '4.2 ',
                              style: TextStyles.font16Grey
                                  .copyWith(fontSize: 14.sp),
                            ),
                            Text(
                              '(4.273 reviews)',
                              style: TextStyles.font16Grey
                                  .copyWith(fontSize: 14.sp),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ), */