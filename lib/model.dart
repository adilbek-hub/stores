import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

///////////////////////////////////////////
class Products {
  Products({
    required this.title,
    required this.imagePath,
  });
  final String title;
  final String imagePath;

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'imagePath': imagePath,
    };
  }

  factory Products.fromMap(Map<String, dynamic> map) {
    return Products(
      title: map['title'] ?? '',
      imagePath: map['imagePath'] ?? '',
    );
  }
}

//////////////////////////////////////////
class Bestseller {
  Bestseller({
    required this.image,
    required this.icon1,
    required this.icon2,
    required this.icon3,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text4,
    required this.text5,
  });
  final String image;
  final IconData icon1;
  final IconData icon2;
  final IconData icon3;
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final String text5;
}

////////////////////////////////////////////////////////
List<Bestseller> items = [
  Bestseller(
    image: 'assets/images/unsplash1.jpg',
    icon1: Icons.favorite,
    icon2: Icons.share,
    icon3: Icons.bookmark,
    text1: 'Item 1',
    text2: 'Description 1',
    text3: 'Category 1',
    text4: 'Price 1',
    text5: 'Rating 1',
  ),
  Bestseller(
    image: 'assets/images/unsplash1.jpg',
    icon1: Icons.favorite,
    icon2: Icons.share,
    icon3: Icons.bookmark,
    text1: 'Item 2',
    text2: 'Description 2',
    text3: 'Category 2',
    text4: 'Price 2',
    text5: 'Rating 2',
  ),
];
/////////////////////////////////////////////////////

List<Products> cards = [
  Products(
    title: 'Страительство и\n ремонт',
    imagePath: 'assets/images/Rectangle 595 (1).png',
  ),
  Products(
    title: 'Электросамокаты',
    imagePath: 'assets/images/Rectangle 595 (2).png',
  ),
  Products(
    title: 'Электроника',
    imagePath: 'assets/images/Rectangle 595 (3).png',
  ),
  Products(
    title: 'Бижутерии',
    imagePath: 'assets/images/Rectangle 595.png',
  ),
  Products(
    title: 'Страительство и\n ремонт',
    imagePath: 'assets/images/Rectangle 595 (1).png',
  ),
  Products(
    title: 'Электросамокаты',
    imagePath: 'assets/images/Rectangle 595 (2).png',
  ),
  Products(
    title: 'Электроника',
    imagePath: 'assets/images/Rectangle 595 (3).png',
  ),
  Products(
    title: 'Бижутерии',
    imagePath: 'assets/images/Rectangle 595.png',
  ),
];
