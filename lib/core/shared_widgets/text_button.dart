import 'package:flutter/material.dart';
import 'package:mide_mate/core/theming/colors_manager.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.child, required this.onTap});
  final void Function()? onTap;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: ButtonStyle(
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16))),
            minimumSize:
                const MaterialStatePropertyAll(Size(double.infinity, 55)),
            backgroundColor:
                const MaterialStatePropertyAll(ColorManager.mainBlue)),
        onPressed: onTap,
        child: child);
  }
}
