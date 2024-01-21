import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mide_mate/core/helper/app_regex.dart';
import 'package:mide_mate/core/helper/spacing_helper.dart';
import 'package:mide_mate/core/shared_widgets/custom_text_form_field.dart';
import 'package:mide_mate/features/login/ui/widgets/password_validations.dart';
import 'package:mide_mate/features/sign_up/logic/cubit/sign_up_cubit.dart';

class SingUpForms extends StatefulWidget {
  const SingUpForms({
    super.key,
  });

  @override
  State<SingUpForms> createState() => _SingUpFormsState();
}

class _SingUpFormsState extends State<SingUpForms> {
  bool isPasswordObscureText = true;
  bool isPasswordConfirmationObscureText = true;
  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasSpeacialCharacters = false;
  bool hasNumber = false;
  bool hasMinLenght = false;
  late TextEditingController passController;
  @override
  void initState() {
    super.initState();
    passController = context.read<SignUpCubit>().passController;
    setupPasswordControllerListener();
  }

  void setupPasswordControllerListener() {
    passController.addListener(() {
      setState(() {
        hasLowerCase = AppRegex.hasLowerCase(passController.text);
        hasUpperCase = AppRegex.hasUpperCase(passController.text);
        hasSpeacialCharacters =
            AppRegex.hasSpecialCharacter(passController.text);
        hasNumber = AppRegex.hasNumber(passController.text);
        hasMinLenght = AppRegex.hasMinLength(passController.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<SignUpCubit>().formKey,
      child: Column(
        children: [
          verticalSpacing(20),
          CustomTextFormField(
              controller: context.read<SignUpCubit>().nameController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a valid name';
                }
                return null;
              },
              inputType: TextInputType.text,
              hintText: 'Name'),
          verticalSpacing(20),
          CustomTextFormField(
              controller: context.read<SignUpCubit>().emailController,
              validator: (value) {
                if (value == null ||
                    value.isEmpty ||
                    !AppRegex.isEmailValid(value)) {
                  return 'Please enter a valid email';
                }
                return null;
              },
              inputType: TextInputType.emailAddress,
              hintText: 'Email'),
          verticalSpacing(20),
          CustomTextFormField(
              validator: (value) {
                if (value == null ||
                    value.isEmpty ||
                    !AppRegex.isPhoneNumberValid(value)) {
                  return 'Please enter a valid phone number';
                }
                return null;
              },
              controller: context.read<SignUpCubit>().phoneController,
              inputType: TextInputType.emailAddress,
              hintText: 'phone'),
          verticalSpacing(20),
          CustomTextFormField(
              validator: (value) {
                if (value == null ||
                    value.isEmpty ||
                    !AppRegex.isPasswordValid(value)) {
                  return 'Please enter a valid password';
                }
                return null;
              },
              controller: context.read<SignUpCubit>().passController,
              inputType: TextInputType.emailAddress,
              hintText: 'Password'),
          verticalSpacing(20),
          CustomTextFormField(
            controller: context.read<SignUpCubit>().passConfirmationController,
            hintText: 'Password Confirmation',
            isObsecureText: isPasswordConfirmationObscureText,
            sufficIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isPasswordConfirmationObscureText =
                      !isPasswordConfirmationObscureText;
                });
              },
              child: Icon(
                isPasswordConfirmationObscureText
                    ? Icons.visibility_off
                    : Icons.visibility,
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid password';
              }
            },
          ),
          verticalSpacing(20),
          PasswrodValidations(
            hasLowerCase: hasLowerCase,
            hasUpperCase: hasUpperCase,
            hasSpeacialCharacters: hasSpeacialCharacters,
            hasNumber: hasNumber,
            hasMinLenght: hasMinLenght,
          ),
          verticalSpacing(20),
        ],
      ),
    );
  }
}
//mostafae@gmail.com
//123&Mostafa