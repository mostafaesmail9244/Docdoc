import 'package:flutter/material.dart';
import 'package:mide_mate/core/theming/colors_manager.dart';

Widget customTextFormField({
  TextEditingController? controller,
  required TextInputType type,
  Function(String)? onChange,
  FormFieldValidator? validate,
  String? label,
  int? maxLength,
  void Function(String)? onFieldSubmitted,
  bool autofocus = false,
  String? hint,
  String? prefixText,
  IconData? prefix,
  bool isObscure = false,
  IconData? suffix,
  int? maxLines,
  Function()? pressed,
  Function()? tap,
  EdgeInsetsGeometry? padding,
  InputBorder? border,
  bool? enable,
  Color background = Colors.purple,
}) =>
    TextFormField(
      maxLength: maxLength,
      autofocus: autofocus,
      onTap: tap,
      enabled: enable,
      onFieldSubmitted: onFieldSubmitted,
      controller: controller,
      maxLines: maxLines ?? 1,
      obscureText: isObscure,
      decoration: InputDecoration(
        prefixText: prefixText,
        labelText: label,
        labelStyle: const TextStyle(color:Colors.grey),
        hintText: hint,
        prefixIcon: prefix != null ? Icon(prefix) : null,
        contentPadding: padding,
        suffixIcon: suffix != null
            ? IconButton(
                onPressed: pressed,
                icon: Icon(
                  suffix,
                  color: background,
                ),
              )
            : null,
        border: border ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: ColorManager.grey, width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
      ),
      keyboardType: type,
      onChanged: onChange,
      validator: validate,
    );
