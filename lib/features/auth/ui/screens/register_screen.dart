import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mide_mate/core/helper/extentions.dart';
import 'package:mide_mate/core/shared_widgets/custom_text_form_field.dart';
import 'package:mide_mate/core/shared_widgets/custom_text_button.dart';
import 'package:mide_mate/core/theming/stylels_text.dart';
import 'package:mide_mate/features/auth/ui/widgets/my_divider.dart';
import 'package:mide_mate/features/auth/ui/widgets/phone_field.dart';
import 'package:mide_mate/features/auth/ui/widgets/singin_by_apps.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({
    super.key,
  });

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  List<String> flagsList = [
    '🇺🇸 United States',
    '🇨🇦 Canada',
    '🇬🇧 United Kingdom',
    '🇫🇷 France',
    '🇩🇪 Germany',
    '🇮🇹 Italy',
    '🇯🇵 Japan',
    '🇨🇳 China',
    '🇮🇳 India',
    '🇧🇷 Brazil',
  ];
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
                    'Create Account',
                    style:
                        TextStyles.font24Black700.copyWith(color: Colors.blue),
                  ),
                  Text(
                    'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
                    style: TextStyles.font16Grey,
                  ),
                  SizedBox(height: 30.h),
                  customTextFormField(
                      controller: emailController,
                      tap: () {},
                      validate: (value) {
                        if (value.isEmpty) {
                          return 'this field is required';
                        }
                        return null;
                      },
                      type: TextInputType.emailAddress,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16)),
                      label: 'Email'),
                  SizedBox(height: 20.h),

                  customTextFormField(
                      validate: (value) {
                        if (value.isEmpty) {
                          return 'this field is required';
                        }
                        return null;
                      },
                      controller: passController,
                      tap: () {},
                      type: TextInputType.emailAddress,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16)),
                      label: 'Password'),
                  SizedBox(height: 20.h),

                  //TODO: add phone number

                 PhoneNumberCountryCode(),
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
                      child: Text(
                        'Create Account',
                        style: TextStyles.font24Black700
                            .copyWith(color: Colors.white, fontSize: 17.sp),
                      ),
                      onTap: () {
                        if (_formKey.currentState!.validate()) {}
                      }),
                  SizedBox(height: 20.h),
                  const SignDivider(),
                  SizedBox(height: 20.h),

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
              'Already have an account?',
              style: TextStyles.font16Grey.copyWith(color: Colors.black),
            ),
            TextButton(
              onPressed: () {
                context.pop();
              },
              child: Text(
                'Sing in',
                style: TextStyles.font16Grey.copyWith(color: Colors.blue),
              ),
            )
          ],
        )
      ],
    );
  }
}

// class FlagDropdown extends StatefulWidget {
//   @override
//   _FlagDropdownState createState() => _FlagDropdownState();
// }

// class _FlagDropdownState extends State<FlagDropdown> {
//   String selectedFlag = "";

//   @override
//   Widget build(BuildContext context) {
//     return DropdownSearch<String>(
//       // ode: Mode.MENU,
//       // showSelectedItem: true,
//       items: [
//         '🇺🇸 United States',
//         '🇨🇦 Canada',
//         '🇬🇧 United Kingdom',
//         '🇫🇷 France',
//         '🇩🇪 Germany',
//         '🇮🇹 Italy',
//         '🇯🇵 Japan',
//         '🇨🇳 China',
//         '🇮🇳 India',
//         '🇧🇷 Brazil',
//         // Add more flags as needed
//       ],
//       label: "Select a country",
//       hint: "Select a country",
//       onChanged: (value) {
//         setState(() {
//           selectedFlag = value!;
//         });
//       },
//       selectedItem: selectedFlag,
//     );
//   }
// }
