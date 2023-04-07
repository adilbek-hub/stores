import 'package:flutter/material.dart';
import 'package:stores/constants/app_colors.dart';

class Stars extends StatelessWidget {
  const Stars({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Icon(
      Icons.star,
      color: AppColors.orange,
      size: 18,
    );
  }
}
