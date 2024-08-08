import 'package:flutter/material.dart';
import 'package:portfolio1/features/core/constants/colors.dart';

class TagWidget extends StatelessWidget {
  final String label;

  const TagWidget({
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      margin: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: AppColors.secondaryBackground,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        label,
        style: const TextStyle(
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
