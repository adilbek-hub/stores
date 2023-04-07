import 'package:flutter/material.dart';
import 'package:stores/constants/app_text_style.dart';
import 'package:stores/model.dart';

class ScrollProducts extends StatelessWidget {
  const ScrollProducts({
    super.key,
    required this.products,
  });

  final List<Products> products;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 121,
      child: ListView.separated(
        itemCount: products.length,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(width: 13); // сепаратордун аралыгын коюу
        },
        itemBuilder: (BuildContext context, int index) {
          final productsIndex = products[index];
          return Column(
            children: [
              SizedBox(
                height: 89,
                width: 89,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  color: Colors.white,
                  elevation: 3.5,
                  child: Image.asset(
                    productsIndex.imagePath,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Center(
                child: Text(
                  productsIndex.title,
                  style: AppTextStyle.productsTextStyle,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
