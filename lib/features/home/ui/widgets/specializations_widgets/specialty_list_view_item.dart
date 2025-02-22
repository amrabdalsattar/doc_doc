import 'package:doc_doc/features/home/ui/widgets/specializations_widgets/selected_specialization.dart';
import 'package:doc_doc/features/home/ui/widgets/specializations_widgets/unselected_specialization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../data/models/specializations_response_model.dart';

class SpecialtyListViewItem extends StatelessWidget {
  final SpecializationData? specializationData;
  final int itemIndex;
  final bool isSelected;

  const SpecialtyListViewItem({
    super.key,
    required this.specializationData,
    required this.itemIndex,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
        start: itemIndex == 0 ? 0 : 24.w,
      ),
      child: Column(
        children: [
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            transitionBuilder: (widget, animation) {
              return ScaleTransition(
                scale: Tween<double>(
                  begin: 0.8,
                  end: 1.0,
                ).animate(animation),
                child: widget,
              );
            },
            child: isSelected
                ? const SelectedSpecialty(key: ValueKey('selected'))
                : const UnselectedSpecialty(key: ValueKey('unselected')),
          ),
          verticalSpace(8),
          Text(
            specializationData?.name ?? 'Specialization',
            style: TextStyles.font12RegularDarkBlue,
          ),
        ],
      ),
    );
  }
}
