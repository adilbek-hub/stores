import 'package:flutter/material.dart';
import 'package:stores/constants/app_colors.dart';
import 'package:stores/constants/app_text_style.dart';
import 'package:stores/constants/texts.dart';

class Open extends StatelessWidget {
  const Open({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.orageLight,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
          minimumSize: const Size(107, 28),
        ),
        onPressed: () {},
        child:
            const Text(AppTexts.openText, style: AppTextStyle.openTextStyle));
  }
}
