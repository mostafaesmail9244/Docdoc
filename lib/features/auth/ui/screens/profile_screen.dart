import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mide_mate/core/shared_widgets/custom_text_button.dart';
import 'package:mide_mate/core/shared_widgets/custom_text_form_field.dart';
import 'package:mide_mate/core/theming/text_stylels.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({
    super.key,
  });

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30.h),
                  Text(
                    'Fill Your Profile',
                    style:
                        TextStyles.font24Black700.copyWith(color: Colors.blue),
                  ),
                  Text(
                    'Please take a few minutes to fill out your profile with as much detail as possible.',
                    style: TextStyles.font16Grey,
                  ),
                  //TODO: add profile image from assets
                  SizedBox(height: 30.h),
                  CustomTextFormField(
                      controller: emailController,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'this field is required';
                        }
                        return null;
                      },
                      inputType: TextInputType.emailAddress,
                      hintText: 'Full Name'),
                  SizedBox(height: 20.h),

                  CustomTextFormField(
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'this field is required';
                        }
                        return null;
                      },
                      controller: passController,
                      inputType: TextInputType.emailAddress,
                      hintText: 'Email'),
                  SizedBox(height: 20.h),
                  CustomTextFormField(
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'this field is required';
                        }
                        return null;
                      },
                      controller: passController,
                      inputType: TextInputType.emailAddress,
                      hintText: 'Birthday'),
                  SizedBox(height: 20.h),

                  //TODO: add phone number

                  // customTextFormField(
                  //     validate: (value) {
                  //       if (value.isEmpty) {
                  //         return 'this field is required';
                  //       }
                  //       return null;
                  //     },
                  //     controller: phoneController,
                  //     tap: () {},
                  //     type: TextInputType.emailAddress,
                  //     border: OutlineInputBorder(
                  //         borderRadius: BorderRadius.circular(16)),
                  //     label: 'Your number'),
                  SizedBox(height: 20.h),
                  CustomTextButton(
                      buttonText: 'Submit',
                      textStyle: TextStyles.font24Black700
                          .copyWith(color: Colors.white, fontSize: 17.sp),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {}
                      }),
                  SizedBox(height: 20.h),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
