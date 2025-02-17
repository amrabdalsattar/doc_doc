import 'package:doc_doc/features/home/ui/widgets/specializations_bloc_builder.dart';

import '../../../core/helpers/spacing.dart';
import 'widgets/doctors_blue_container.dart';
import 'widgets/section_header.dart';
import 'package:flutter/material.dart';

import 'widgets/home_top_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(20, 16, 20, 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeTopBar(),
              const DoctorsBlueContainer(),
              verticalSpace(20),
              const SectionHeader(
                title: 'Doctor Specialty',
              ),
              verticalSpace(12),
              const SpecializationsBlocBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
