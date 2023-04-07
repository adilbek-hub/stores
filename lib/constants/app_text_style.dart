import 'package:flutter/material.dart';
import 'package:stores/constants/app_colors.dart';

class AppTextStyle {
  static const textStyle = TextStyle(
      color: Color(0xff1E1E1E), fontSize: 13, fontFamily: 'Montserrat');

  static const personsClickClass = TextStyle(
      color: Color(0xff000000), fontSize: 16, fontWeight: FontWeight.w400);

  static const openTextStyle = TextStyle(
      color: AppColors.openTextColors,
      fontSize: 15,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600);

  static const searchTextStyle = TextStyle(
    color: Color(0xffB3B3B7),
    fontSize: 12,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w500,
  );
  static const locationCityTextStyle = TextStyle(
    color: Colors.black,
    fontSize: 12,
    fontFamily: 'Montserrat',
  );

  static const forAppTextStyle = TextStyle(
      color: AppColors.orageLight,
      fontSize: 12,
      fontWeight: FontWeight.w500,
      fontFamily: 'Montserrat');

  static const productsTextStyle = TextStyle(
    color: AppColors.black,
    fontSize: 10,
    fontWeight: FontWeight.w500,
    fontFamily: 'Montserrat',
  );

  static const bestseller = TextStyle(
    color: Colors.black,
    fontSize: 16,
    fontWeight: FontWeight.w600,
    fontFamily: 'Montserrat',
  );
}
