import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/helpers/images.dart';
import '../../../core/theming/colors_manager.dart';
import '../../../core/theming/text_styles.dart';

class TitledDoctorImage extends StatelessWidget {
  const TitledDoctorImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(Images.docDocLowOpacityLogo),
        Container(
            foregroundDecoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    ColorsManager.white,
                    ColorsManager.white.withOpacity(0),
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  stops: const [0.14, 0.4]),
            ),
            child: Image.asset(Images.onboardingDoctor)),
        Positioned(
          bottom: 30,
          right: 0,
          left: 0,
          child: Text(
            "Best Doctor Appointment App",
            style: TextStyles.font32BoldBlue.copyWith(height: 1.4),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
