import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mide_mate/core/helper/extentions.dart';
import 'package:mide_mate/core/routing/routes.dart';
import 'package:mide_mate/core/shared_widgets/custom_text_button.dart';
import 'package:mide_mate/core/helper/spacing_helper.dart';
import 'package:mide_mate/core/theming/text_stylels.dart';
import 'package:mide_mate/features/login/logic/cubit/login_cubit.dart';
import 'package:mide_mate/features/login/ui/widgets/already_have_account_text.dart';
import 'package:mide_mate/features/login/ui/widgets/email_and_password.dart';
import 'package:mide_mate/features/login/ui/widgets/login_bloc_listenter.dart';
import 'package:mide_mate/features/login/ui/widgets/terms_and_conditions_text_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                Column(
                  children: [
                    const EmailAndPassword(),
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
                // const RowOfForgotPassword(),
                verticalSpacing(20),
                CustomTextButton(
                  buttonText: 'Login',
                  textStyle: TextStyles.font24Black700
                      .copyWith(color: Colors.white, fontSize: 17.sp),
                  onPressed: () {
                    validateToLogin(context);
                  },
                ),

                verticalSpacing(16),
                const TermsAndConditionsText(),
                verticalSpacing(60),
                const Align(
                    alignment: Alignment.center,
                    child: AlreadyHaveAccountText()),
                const LoginBlocListener(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateToLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginStates(
          email: context.read<LoginCubit>().emailController.text,
          password: context.read<LoginCubit>().passController.text);
    }
  }
}
