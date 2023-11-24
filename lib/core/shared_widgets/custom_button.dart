import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      this.onTap,
      required this.child,
      this.backgroundColor,
    
      required this.borderRadius});
  final void Function()? onTap;
  final Widget child;
  final Color? backgroundColor;


  final BorderRadius borderRadius;

  @override
  Widget build(BuildContext context) {
    return  TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
              backgroundColor: backgroundColor ?? Colors.white,
              shape: RoundedRectangleBorder(borderRadius: borderRadius)),
          child: child);
 
  }
}
