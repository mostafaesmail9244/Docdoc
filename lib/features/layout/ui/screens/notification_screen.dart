import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mide_mate/core/helper/extentions.dart';
import 'package:mide_mate/core/shared_widgets/my_divider.dart';
import 'package:mide_mate/core/theming/colors_manager.dart';
import 'package:mide_mate/core/theming/text_stylels.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notification',
          style: TextStyles.font24Black700.copyWith(fontSize: 18.sp),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: ColorsManager.mainBlue,
              ),
              child: Text(
                'New',
                style: TextStyles.font16Grey.copyWith(color: Colors.white),
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.separated(
          shrinkWrap: true,
          itemBuilder: (context, int index) => const NotificationItem(),
          separatorBuilder: (context, int index) => Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: MyDivider(width: context.deviceWidth * .95),
          ),
          itemCount: 10,
        ),
      ),
    );
  }
}

class NotificationItem extends StatelessWidget {
  const NotificationItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.deviceWidth,
      height: context.deviceHeight * .15,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(
            Icons.calendar_month,
            color: Colors.blue,
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Schedule Changed',
                  style: TextStyles.font18Black,
                ),
                Expanded(
                  child: Text(
                    'You have successfully changed your appointment with Dr.Randy Wigham.Don\'t forget to active your reminder.',
                    style: TextStyles.font16Grey.copyWith(fontSize: 14.sp),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
