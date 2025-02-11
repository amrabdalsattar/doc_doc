import '../theming/colors_manager.dart';
import 'package:flutter/material.dart';

class LoadingIndicator extends StatelessWidget {
  final Color color;
  const LoadingIndicator({super.key, this.color = ColorsManager.primaryColor});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: color,
      ),
    );
  }
}
