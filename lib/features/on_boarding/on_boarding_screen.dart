import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mide_mate/core/helper/extentions.dart';
import 'package:mide_mate/core/routing/routes.dart';
import 'package:mide_mate/core/theming/colors_manager.dart';
import 'package:mide_mate/core/theming/text_stylels.dart';
import 'package:mide_mate/features/on_boarding/widgets/image_doctor_and_title.dart';
import 'package:mide_mate/features/on_boarding/widgets/logo_and_app_name.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 20.h),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const LogoAndAppName(),
            SizedBox(height: 30.h),
            const ImageDoctorAndTitle(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Text(
                    'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                    textAlign: TextAlign.center,
                    style: TextStyles.font16Grey.copyWith(),
                  ),
                  SizedBox(height: 30.h),
                  const GetStartedButton()
                ],
              ),
            )
          ],
        ),
      ),
    ),),);
  }
}

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
          shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
          minimumSize:
              const MaterialStatePropertyAll(Size(double.infinity, 55)),
          backgroundColor:
              const MaterialStatePropertyAll(ColorsManager.mainBlue)),
      onPressed: () {
        context.pushReplacmentNamed(Routes.loginScreen);
      },
      child: Text(
        'Get Started',
        style: TextStyles.font24Black700.copyWith(color: Colors.white),
      ),
    );
  }
}
