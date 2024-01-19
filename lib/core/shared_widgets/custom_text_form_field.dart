import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mide_mate/core/theming/colors_manager.dart';
import 'package:mide_mate/core/theming/text_stylels.dart';

class CustomTextFormField extends StatelessWidget {
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final TextEditingController? controller;
  final TextStyle? hintStyle;
  final int? maxLines;
  final EdgeInsetsGeometry? padding;
  final TextInputType? inputType;
  final bool? isObsecureText;
  final Function(String?)? validator;
  final Widget? sufficIcon;
  final Iterable<String>? autoFill;
  final Widget? prefixIcon;
  final String hintText;
  final Color? backGroundColor;
  const CustomTextFormField(
      {super.key,
      this.enabledBorder,
      this.focusedBorder,
      this.controller,
      this.hintStyle,
      this.maxLines,
      this.padding,
      this.inputType,
      this.isObsecureText,
      this.validator,
      this.sufficIcon,
      required this.hintText,
      this.prefixIcon,
      this.backGroundColor,
      this.autoFill});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      maxLines: maxLines ?? 1,
      autofillHints: autoFill,
      obscureText: isObsecureText ?? false,
      decoration: InputDecoration(
        isDense: true,
        prefix: prefixIcon,
        filled: true,
        fillColor: backGroundColor ?? ColorsManager.moreLightGrey,
        hintText: hintText,
        hintStyle: hintStyle ?? TextStyles.font14LightGreyRegular,
        contentPadding:
            padding ?? EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        suffixIcon: sufficIcon,
        //TODO:add error Border
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: ColorsManager.mainBlue, width: 1.3),
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: ColorsManager.fillRed, width: 1.3),
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: ColorsManager.fillRed, width: 1.3),
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
        ),
        enabledBorder: enabledBorder ??
            const OutlineInputBorder(
              borderSide:
                  BorderSide(color: ColorsManager.lighterGrey, width: 1.3),
              borderRadius: BorderRadius.all(Radius.circular(16.0)),
            ),
        focusedBorder: focusedBorder ??
            const OutlineInputBorder(
              borderSide: BorderSide(color: ColorsManager.mainBlue, width: 1.3),
              borderRadius: BorderRadius.all(Radius.circular(16.0)),
            ),
      ),
      keyboardType: inputType ?? TextInputType.text,
      style: TextStyles.font14DarkBlueMedium,
      validator: (value) {
        return validator!(value);
      },
    );
  }
}

//FF4C5E
// Widget customTextFormField(
//         {TextEditingController? controller,
//         required TextInputType type,
//         Function(String)? onChange,
//         FormFieldValidator? validate,
//         String? label,
//         int? maxLength,
//         void Function(String)? onFieldSubmitted,
//         bool autofocus = false,
//         String? hint,
//         String? prefixText,
//         IconData? prefix,
//         bool isObscure = false,
//         IconData? suffix,
//         TextStyle? textStyle,
//         int? maxLines,
//         Function()? pressed,
//         Function()? tap,
//         EdgeInsetsGeometry? padding,
//         InputBorder? border,
//         bool? enable,
//         Color background = Colors.purple,
//         double? radius}) =>
//     TextFormField(
//       maxLength: maxLength,
//       autofocus: autofocus,
//       onTap: tap,
//       enabled: enable,
//       onFieldSubmitted: onFieldSubmitted,
//       controller: controller,
//       maxLines: maxLines ?? 1,
//       obscureText: isObscure,
//       decoration: InputDecoration(
//         isDense: true,
//         enabledBorder: const OutlineInputBorder(
//           borderSide: BorderSide(color: ColorManager.lighterGrey, width: 1.3),
//           borderRadius: BorderRadius.all(Radius.circular(16.0)),
//         ),
//         prefixText: prefixText,
//         labelText: label,
//         labelStyle: textStyle ?? const TextStyle(color: Colors.grey),
//         hintText: hint,
//         hintStyle: TextStyles.font14LightGreyRegular,
//         prefixIcon: prefix != null ? Icon(prefix) : null,
//         contentPadding: padding,
//         suffixIcon: suffix != null
//             ? IconButton(
//                 onPressed: pressed,
//                 icon: Icon(
//                   suffix,
//                   color: background,
//                 ),
//               )
//             : null,
//         border: border ??
//             OutlineInputBorder(
//               borderRadius: BorderRadius.circular(radius ?? 10.0),
//             ),
//         focusedBorder: const OutlineInputBorder(
//           borderSide: BorderSide(color: ColorManager.mainBlue, width: 1.3),
//           borderRadius: BorderRadius.all(Radius.circular(16.0)),
//         ),
//       ),
//       keyboardType: type,
//       onChanged: onChange,
//       style: TextStyles.font14DarkBlueMedium,
//       validator: validate,
//     );
