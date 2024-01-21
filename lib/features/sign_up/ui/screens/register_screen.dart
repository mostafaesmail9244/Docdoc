import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mide_mate/core/shared_widgets/custom_text_button.dart';
import 'package:mide_mate/core/theming/text_stylels.dart';
import 'package:mide_mate/features/login/ui/widgets/terms_and_conditions_text_widget.dart';
import 'package:mide_mate/features/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:mide_mate/features/sign_up/ui/widgets/sign_up_bloc_listener.dart';
import 'package:mide_mate/features/sign_up/ui/widgets/sing_up_forms.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30.h),
                  Text(
                    'Create Account',
                    style:
                        TextStyles.font24Black700.copyWith(color: Colors.blue),
                  ),
                  Text(
                    'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
                    style: TextStyles.font16Grey,
                  ),
                  SizedBox(height: 30.h),
                  const SingUpForms(),
                  CustomTextButton(
                    buttonText: 'Create Account',
                    textStyle: TextStyles.font24Black700
                        .copyWith(color: Colors.white, fontSize: 17.sp),
                    onPressed: () {
                      validateThenDoSignup(context);
                    },
                  ),
                  SizedBox(height: 20.h),
                  const TermsAndConditionsText(),
                  SizedBox(height: 20.h),
                  const SingUpBlocListener(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoSignup(BuildContext context) {
    if (context.read<SignUpCubit>().formKey.currentState!.validate()) {
      context.read<SignUpCubit>().emitSingUpState();
    }
  }
}
