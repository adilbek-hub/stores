import 'package:flutter/material.dart';

class MainBannerImage extends StatelessWidget {
  const MainBannerImage({
    super.key,
    required String banner,
  }) : _banner = banner;

  final String _banner;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(0, 1),
            ),
          ],
        ),
        child: Image.asset(_banner));
  }
}
