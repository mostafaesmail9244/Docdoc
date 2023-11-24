import 'package:flutter/material.dart';
import 'package:mide_mate/core/shared_widgets/text_button.dart';
import 'package:mide_mate/core/theming/stylels_text.dart';

class RowOfForgotPassword extends StatefulWidget {
  const RowOfForgotPassword({super.key});

  @override
  State<RowOfForgotPassword> createState() => _RowOfForgotPasswordState();
}

class _RowOfForgotPasswordState extends State<RowOfForgotPassword> {
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            value: _isChecked,
            checkColor: Colors.blue,
            shape: RoundedRectangleBorder(
                side: const BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.circular(5)),
            activeColor: Colors.grey.shade300,
            onChanged: (value) {
              setState(() {
                _isChecked = value!;
              });
            }),
        Text(
          'Remember me',
          style: TextStyles.font16Grey,
        ),
        const Spacer(),
        TextButton(
          onPressed: () {},
          child: Text(
            'Forgot Password?',
            style: TextStyles.font16Grey.copyWith(color: Colors.blue),
          ),
        )
      ],
    );
  }
}
