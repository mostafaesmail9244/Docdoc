import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mide_mate/core/helper/extentions.dart';
import 'package:mide_mate/core/routing/routes.dart';
import 'package:mide_mate/core/theming/text_stylels.dart';
import 'package:mide_mate/features/layout/ui/widgets/book_and_schedule_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        //appBar height
        toolbarHeight: 50.h,
        actions: [
          IconButton(
            onPressed: () {
              context.pushNamed(Routes.notificationScreen);
            },
            icon: Icon(
              Icons.notifications_none_outlined,
              size: 25.r,
            ),
          )
        ],
        elevation: 0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi, Omar!',
              style: TextStyles.font24Black700.copyWith(fontSize: 18.sp),
            ),
            Text(
              'How Are you Today?',
              style: TextStyles.font16Grey.copyWith(fontSize: 12.sp),
            )
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const BookAndScheduleWidget(),
              SizedBox(height: 24.h),
              //Doctor Speciality
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Doctor Speciality',
                    style: TextStyles.font18Black,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'See All',
                      style: TextStyles.font32Blue700.copyWith(fontSize: 14.sp),
                    ),
                  ),
                ],
              ),
              //TODO; add doctor Speciality
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                //TODO: add icon button
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.radio_button_off_outlined)),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.radio_button_off_outlined)),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.radio_button_off_outlined)),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.radio_button_off_outlined)),
              ]),

              SizedBox(height: 24.h),
              // recommendation doctor
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recommendation Doctor',
                    style: TextStyles.font18Black,
                  ),
                  TextButton(
                    onPressed: () {
                      context.pushNamed(Routes.recommendationScreen);
                    },
                    child: Text(
                      'See All',
                      style: TextStyles.font32Blue700.copyWith(fontSize: 14.sp),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 15.h),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: ListView.separated(
                  separatorBuilder: (context, int index) =>
                      SizedBox(height: 20.h),
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, int index) => const DoctorInfo(),
                  itemCount: 10,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DoctorInfo extends StatelessWidget {
  const DoctorInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset(
          'assets/images/doctor_image2.png',
          height: context.deviceHeight * .10,
          width: context.deviceWidth * .20,
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
                  style: TextStyles.font16Grey.copyWith(fontSize: 14.sp),
                ),
                Text(
                  ' RSUD Gatot Subroto',
                  style: TextStyles.font16Grey.copyWith(fontSize: 14.sp),
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
                  style: TextStyles.font16Grey.copyWith(fontSize: 14.sp),
                ),
                Text(
                  '(4.273 reviews)',
                  style: TextStyles.font16Grey.copyWith(fontSize: 14.sp),
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
