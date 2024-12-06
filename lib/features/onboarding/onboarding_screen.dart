import 'package:doc_doc/core/helpers/extensions.dart';
import 'package:doc_doc/core/widgets/custom_button.dart';
import 'package:doc_doc/features/onboarding/widgets/doc_logo_and_name.dart';
import 'package:doc_doc/features/onboarding/widgets/titled_doctor_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/routing/routes.dart';
import '../../core/theming/text_styles.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 30.h, bottom: 20.h),
          child: Column(
            children: [
              const DocLogoAndName(),
              SizedBox(height: 30.h),
              const TitledDoctorImage(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  children: [
                    Text(
                      "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
                      style: TextStyles.font13RegularGray,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 30.h),
                    CustomButton(
                      title: 'Get Started',
                      onPressed: () {
                        context.pushReplacementNamed(Routes.login);
                      },
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
