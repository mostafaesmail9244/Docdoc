import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mide_mate/core/helper/extentions.dart';
import 'package:mide_mate/core/theming/text_stylels.dart';

class ImageDoctorAndTitle extends StatelessWidget {
  const ImageDoctorAndTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            right: -10,
            // left: ,
            bottom: 0,
            child: SvgPicture.asset(
          'assets/svgs/doc_doc_with_opacity.svg',
          width: context.deviceWidth,
        )),
        Positioned(
          child: Container(
            foregroundDecoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.white, Colors.white.withOpacity(0)],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    stops: const [0.14, 0.4])),
            child: Image.asset('assets/images/on_boarding_doctor.png'),
          ),
        ),
        Positioned(
          bottom: 30,
          left: 0,
          right: 0,
          child: Text(
            'Best Doctor Appointement App',
            textAlign: TextAlign.center,
            style: TextStyles.font32Blue700.copyWith(height: 1.2),
          ),
        )
      ],
    );
  }
}
