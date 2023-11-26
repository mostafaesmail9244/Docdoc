import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mide_mate/core/helper/extentions.dart';
import 'package:mide_mate/core/routing/routes.dart';
import 'package:mide_mate/core/shared_widgets/custom_text_form_field.dart';
import 'package:mide_mate/core/shared_widgets/custom_text_button.dart';
import 'package:mide_mate/core/theming/stylels_text.dart';
import 'package:mide_mate/features/auth/ui/widgets/check_box.dart';
import 'package:mide_mate/features/auth/ui/widgets/my_divider.dart';
import 'package:mide_mate/features/auth/ui/widgets/singin_by_apps.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
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
                    'Welcome Back',
                    style:
                        TextStyles.font24Black700.copyWith(color: Colors.blue),
                  ),
                  Text(
                    'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                    style: TextStyles.font16Grey,
                  ),
                  SizedBox(height: 30.h),
                  customTextFormField(
                      controller: emailController,
                      type: TextInputType.emailAddress,
                      validate: (value) {
                        if (value.isEmpty) {
                          return 'this field is required';
                        }
                        return null;
                      },
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16)),
                      label: 'Email'),
                  SizedBox(height: 20.h),
                  //
                  customTextFormField(
                      controller: passController,
                      type: TextInputType.emailAddress,
                      validate: (value) {
                        if (value.isEmpty) {
                          return 'this field is required';
                        }
                        return null;
                      },
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16)),
                      label: 'Password'),
                  const RowOfForgotPassword(),
                  SizedBox(height: 20.h),
                  CustomTextButton(
                      child: Text(
                        'Login',
                        style: TextStyles.font24Black700
                            .copyWith(color: Colors.white, fontSize: 17.sp),
                      ),
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          debugPrint('prrrrrrrrrress');
                        }
                      }),
                  const SizedBox(height: 20),
                  const SignDivider(),
                  const SizedBox(height: 20),

                  const SignInByApps(),
                  const TermsAndConditionsButton()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class TermsAndConditionsButton extends StatelessWidget {
  const TermsAndConditionsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'By logging, you agree to our ',
              style: TextStyles.font16Grey.copyWith(fontSize: 12.sp),
            ),
            TextButton(
              style: TextButton.styleFrom(padding: EdgeInsets.zero),
              onPressed: () {},
              child: Text(
                'Terms & Conditions',
                style: TextStyles.font24Black700.copyWith(fontSize: 12.sp),
              ),
            ),
            Text(' and', style: TextStyles.font16Grey),
          ],
        ),
        TextButton(
            style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
            ),
            onPressed: () {},
            child: Text(
              'Privacy Policy',
              style: TextStyles.font24Black700.copyWith(fontSize: 12.sp),
            )),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Already have an account ?',
              style: TextStyles.font16Grey.copyWith(color: Colors.black),
            ),
            TextButton(
              onPressed: () {
                context.pushNamed(Routes.registerScreen);
              },
              child: Text(
                'Sing up',
                style: TextStyles.font16Grey.copyWith(color: Colors.blue),
              ),
            )
          ],
        )
      ],
    );
  }
}
