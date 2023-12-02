import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mide_mate/core/helper/extentions.dart';
import 'package:mide_mate/core/routing/routes.dart';
import 'package:mide_mate/core/shared_widgets/custom_text_form_field.dart';
import 'package:mide_mate/core/shared_widgets/custom_text_button.dart';
import 'package:mide_mate/core/theming/colors_manager.dart';
import 'package:mide_mate/core/theming/spacing_helper.dart';
import 'package:mide_mate/core/theming/text_stylels.dart';
import 'package:mide_mate/features/auth/ui/widgets/already_have_account_text.dart';
import 'package:mide_mate/features/auth/ui/widgets/terms_and_conditions_text_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  bool isObsecureText = true;
  void isObsecure() {
    isObsecureText = !isObsecureText;
    setState(() {});
  }

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome Back',
                  style: TextStyles.font24BlueBold,
                ),
                verticalSpacing(8),
                Text(
                  'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                  style: TextStyles.font14GreyRegular,
                ),
                verticalSpacing(30),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      //email
                      CustomTextFormField(
                          controller: emailController,
                          inputType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'this field is required';
                            }
                            return null;
                          },
                          hintText: 'Email'),
                      verticalSpacing(18),
                      //pass
                      CustomTextFormField(
                          controller: passController,
                          inputType: TextInputType.emailAddress,
                          isObsecureText: isObsecureText,
                          sufficIcon: IconButton(
                              onPressed: isObsecure,
                              icon: Icon(
                                isObsecureText
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: ColorManager.mainBlue,
                              )),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'this field is required';
                            }
                            return null;
                          },
                          hintText: 'Password'),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {
                            context.pushNamed(Routes.forgotPasswordScreen);
                          },
                          child: Text(
                            'Forgot Password?',
                            style: TextStyles.font16Grey
                                .copyWith(color: Colors.blue),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // const RowOfForgotPassword(),
                verticalSpacing(20),
                CustomTextButton(
                    buttonText: 'Login',
                    textStyle: TextStyles.font24Black700
                        .copyWith(color: Colors.white, fontSize: 17.sp),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        debugPrint('prrrrrrrrrress');
                      }
                    }),

                verticalSpacing(30),
                const TermsAndConditionsText(),
                verticalSpacing(30),
                const Align(
                    alignment: Alignment.center,
                    child: AlreadyHaveAccountText()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

