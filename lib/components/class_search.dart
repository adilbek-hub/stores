import 'package:flutter/material.dart';
import 'package:stores/constants/app_colors.dart';
import 'package:stores/constants/app_text_style.dart';

class Search extends StatelessWidget {
  const Search({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: TextFormField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(),
          hintText: 'Искать в Stores ...',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: AppColors.white,
          prefixIcon: const Icon(
            Icons.search,
            color: AppColors.orageLight,
            size: Checkbox.width,
          ),
        ),
        style: AppTextStyle.searchTextStyle,
      ),
    );
  }
}
