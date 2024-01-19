import 'package:flutter/material.dart';
import 'package:mide_mate/core/theming/colors_manager.dart';
import 'package:mide_mate/core/helper/spacing_helper.dart';
import 'package:mide_mate/core/theming/text_stylels.dart';

class PasswrodValidations extends StatelessWidget {
  const PasswrodValidations(
      {super.key,
      required this.hasLowerCase,
      required this.hasUpperCase,
      required this.hasSpeacialCharacters,
      required this.hasNumber,
      required this.hasMinLenght});
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasSpeacialCharacters;
  final bool hasNumber;
  final bool hasMinLenght;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidatoinRow('At least 1 lowercase letter', hasLowerCase),
        buildValidatoinRow('At least 1 uppercase letter', hasUpperCase),
        buildValidatoinRow(
            'At least 1 Speacial character letter', hasSpeacialCharacters),
        buildValidatoinRow('At least 1 number', hasNumber),
        buildValidatoinRow('At least 8 characters long', hasMinLenght),
      ],
    );
  }

  Widget buildValidatoinRow(String text, bool hasValidated) {
    return Row(
      children: [
        const CircleAvatar(radius: 2.5, backgroundColor: ColorsManager.grey),
        horizontalSpacing(6),
        Text(
          text,
          style: TextStyles.font13DarkBlueRegular.copyWith(
              decoration: hasValidated ? TextDecoration.lineThrough : null,
              decorationColor: Colors.green,
              decorationThickness: 2,
              color:
                  hasValidated ? ColorsManager.grey : ColorsManager.darkBlue),
        )
      ],
    );
  }
}
