import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mide_mate/core/helper/app_regex.dart';
import 'package:mide_mate/core/helper/spacing_helper.dart';
import 'package:mide_mate/features/login/logic/cubit/login_cubit.dart';
import 'package:mide_mate/core/shared_widgets/custom_text_form_field.dart';
import 'package:mide_mate/core/theming/colors_manager.dart';
import 'package:mide_mate/features/login/ui/widgets/password_validations.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool isObsecureText = true;

  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasSpeacialCharacters = false;
  bool hasNumber = false;
  bool hasMinLenght = false;
  // late TextEditingController emailController;
  late TextEditingController passController;
  @override
  void initState() {
    super.initState();
    // emailController = context.read<LoginCubit>().emailController;
    passController = context.read<LoginCubit>().passController;
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
      key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
          //email
          CustomTextFormField(
              controller: context.read<LoginCubit>().emailController,
              inputType: TextInputType.emailAddress,
              validator: (value) {
                if (value == null ||
                    value.isEmpty ||
                    !AppRegex.isEmailValid(value)) {
                  return 'Please enter a valid email';
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
                  onPressed: () {
                    isObsecureText = !isObsecureText;
                    setState(() {});
                  },
                  icon: Icon(
                    isObsecureText ? Icons.visibility_off : Icons.visibility,
                    color: ColorsManager.mainBlue,
                  )),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a valid password';
                }
                return null;
              },
              hintText: 'Password'),
          verticalSpacing(24),
          PasswrodValidations(
              hasLowerCase: hasLowerCase,
              hasUpperCase: hasUpperCase,
              hasSpeacialCharacters: hasSpeacialCharacters,
              hasNumber: hasNumber,
              hasMinLenght: hasMinLenght),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    // TODO: implement dispose
    passController.dispose();
  }
}
