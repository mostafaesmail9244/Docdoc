import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mide_mate/core/helper/extentions.dart';
import 'package:mide_mate/core/shared_widgets/custom_text_button.dart';
import 'package:mide_mate/core/shared_widgets/custom_text_form_field.dart';
import 'package:mide_mate/core/theming/stylels_text.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController controller = TextEditingController();
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
                    'Forgot Password',
                    style:
                        TextStyles.font24Black700.copyWith(color: Colors.blue),
                  ),
                  Text(
                    'At out app, we take the security of your information seriosly.',
                    style: TextStyles.font16Grey,
                  ),
                  SizedBox(height: 30.h),
                  customTextFormField(
                      controller: controller,
                      type: TextInputType.emailAddress,
                      validate: (value) {
                        if (value.isEmpty) {
                          return 'this field is required';
                        }
                        return null;
                      },
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16)),
                      label: 'Email or Phone Number'),
                  SizedBox(height: context.deviceHeight*.60),
                  CustomTextButton(
                      child: Text(
                        'Reset Password',
                        style: TextStyles.font24Black700
                            .copyWith(color: Colors.white, fontSize: 17.sp),
                      ),
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          debugPrint('prrrrrrrrrress');
                        }
                      }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
