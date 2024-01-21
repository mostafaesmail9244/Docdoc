import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mide_mate/core/helper/extentions.dart';
import 'package:mide_mate/core/routing/routes.dart';
import 'package:mide_mate/core/theming/text_stylels.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'don\'t have an account?',
            style: TextStyles.font13DarkBlueRegular,
          ),
          TextSpan(
              text: ' Sign Up',
              style: TextStyles.font13BlueSemiBold,
              recognizer: TapGestureRecognizer()..onTap = () {
                context.pushNamed(Routes.registerScreen);
              }),
        ],
      ),
    );
  }
}
