import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mide_mate/core/shared_widgets/custom_text_form_field.dart';
import 'package:mide_mate/core/shared_widgets/text_button.dart';
import 'package:mide_mate/core/theming/colors_manager.dart';
import 'package:mide_mate/core/theming/stylels_text.dart';
import 'package:mide_mate/features/auth/ui/widgets/check_box.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30.h),
                Text(
                  'Welcome Back',
                  style: TextStyles.font24Black700.copyWith(color: Colors.blue),
                ),
                Text(
                  'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                  style: TextStyles.font16Grey,
                ),
                SizedBox(height: 30.h),
                customTextFormField(
                    controller: emailController,
                    tap: () {},
                    type: TextInputType.emailAddress,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16)),
                    label: 'Email'),
                SizedBox(height: 20.h),
                //
                customTextFormField(
                    controller: passController,
                    tap: () {},
                    type: TextInputType.emailAddress,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16)),
                    label: 'Password'),
                const RowOfForgotPassword(),
                SizedBox(height: 20.h),
                CustomButton(
                    child: Text(
                      'Login',
                      style: TextStyles.font24Black700
                          .copyWith(color: Colors.white, fontSize: 17.sp),
                    ),
                    onTap: () {
                      if (formKey.currentState!.validate()) {}
                    }),
                const SizedBox(height: 20),
                myDivider()
              ],
            ),
          ),
        ),
      ),
    ));
  }

  Widget myDivider() => Row(children: [
        const Divider(
          indent: 23,
          endIndent: 0,thickness: 2,
          color: ColorManager.grey,
        ),
        Text(
          'Or sign in with',
          style: TextStyles.font16Grey,
        )
      ]);
}
