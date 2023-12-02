import 'package:flutter/material.dart';
import 'package:mide_mate/core/helper/extentions.dart';
import 'package:mide_mate/core/shared_widgets/my_divider.dart';
import 'package:mide_mate/core/theming/text_stylels.dart';

class SignDivider extends StatelessWidget {
  const SignDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MyDivider(width: context.deviceWidth * .28),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Text(
            'Or sign in with',
            style: TextStyles.font16Grey,
          ),
        ),
        MyDivider(width: context.deviceWidth * .26),
      ],
    );
  }
}
