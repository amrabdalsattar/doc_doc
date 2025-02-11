import 'package:flutter/widgets.dart';

import '../../../../../core/helpers/spacing.dart';
import 'validation_row.dart';

class PasswordValidations extends StatelessWidget {
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasNumber;
  final bool hasSpecialCharacters;
  final bool hasMinLength;
  const PasswordValidations({
    super.key,
    required this.hasLowerCase,
    required this.hasUpperCase,
    required this.hasNumber,
    required this.hasSpecialCharacters,
    required this.hasMinLength,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ValidationRow(
          hasValidated: hasLowerCase,
          text: 'At least 1 lowercase letter',
        ),
        verticalSpace(2),
        ValidationRow(
          hasValidated: hasUpperCase,
          text: 'At least 1 uppercase letter',
        ),
        verticalSpace(2),
        ValidationRow(
          hasValidated: hasSpecialCharacters,
          text: 'At least 1 special character',
        ),
        verticalSpace(2),
        ValidationRow(
          hasValidated: hasNumber,
          text: 'At least 1 number',
        ),
        verticalSpace(2),
        ValidationRow(
          hasValidated: hasMinLength,
          text: 'At least 8 characters',
        ),
      ],
    );
  }
}
