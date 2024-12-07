import 'package:doc_doc/core/helpers/extensions.dart';
import 'package:doc_doc/core/helpers/spacing.dart';
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
      body: Padding(
        padding: EdgeInsets.only(top: 74.h, bottom: 15.h),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(child: DocLogoAndName()),
            SliverToBoxAdapter(child: verticalSpace(30)),
            const SliverToBoxAdapter(child: TitledDoctorImage()),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Text(
                  "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
                  style: TextStyles.font13RegularGray,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  children: [
                    const Spacer(),
                    CustomButton(
                      title: 'Get Started',
                      onPressed: () {
                        context.pushReplacementNamed(Routes.login);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
