import 'package:flutter/material.dart';
import 'package:mide_mate/core/theming/colors_manager.dart';

class MyDivider extends StatelessWidget {
  const MyDivider({super.key, required this.width});
  final double width;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      width: width,
      color: ColorManager.grey,
    );
  }
}
