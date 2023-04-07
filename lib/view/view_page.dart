import 'package:flutter/material.dart';
import 'package:stores/components/class_main_banner.dart';
import 'package:stores/components/class_open.dart';
import 'package:stores/components/class_scroll_products.dart';
import 'package:stores/components/class_search.dart';
import 'package:stores/components/class_star.dart';
import 'package:stores/constants/app_colors.dart';
import 'package:stores/constants/app_text_style.dart';
import 'package:stores/constants/texts.dart';
import 'package:stores/model.dart';

class ViewStores extends StatefulWidget {
  const ViewStores({super.key});

  @override
  State<ViewStores> createState() => _ViewStoresState();
}

class _ViewStoresState extends State<ViewStores> {
  final String _storesLogo = 'assets/logo/Logo.png';
  final String _shape = 'assets/images/shape.png';
  final String _banner = 'assets/images/Баннер основной.png';
  // Modeldeshuu
  final products = cards;
  final hits = items;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.scaffoldBgc,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 22, top: 30.74, right: 17, bottom: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(_storesLogo),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        AppTexts.text1,
                        style: AppTextStyle.textStyle,
                      ),
                      const SizedBox(height: 9),
                      Row(
                        children: const [
                          Stars(),
                          Stars(),
                          Stars(),
                          Stars(),
                          Stars(),
                          SizedBox(width: 4),
                          Text(
                            AppTexts.personKbStar,
                            style: AppTextStyle.personsClickClass,
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(width: 14),
                  const Open(),
                ],
              ),
            ),
            // Издөө
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17),
              child: Column(
                children: [
                  const Search(),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(_shape),
                          const SizedBox(width: 10),
                          const Text(
                            AppTexts.lication,
                            style: AppTextStyle.locationCityTextStyle,
                          ),
                        ],
                      ),
                      const Text(
                        AppTexts.enterDeliveryAddress,
                        style: AppTextStyle.forAppTextStyle,
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  MainBannerImage(banner: _banner),
                ],
              ),
            ),
            const SizedBox(height: 23),
            ScrollProducts(products: products),
            const SizedBox(height: 22),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17),
              child: Column(
                children: [
                  const Text(
                    AppTexts.bestseller,
                    style: AppTextStyle.bestseller,
                  ),
                  const SizedBox(height: 16),
                  Column(
                    children: [
                      SizedBox(
                        width: 167,
                        height: 256,
                        child: GridView.count(
                            crossAxisCount: 2,
                            children: List.generate(4, (index) {
                              return Card(
                                elevation: 20,
                                color: Colors.black,
                                child: Column(
                                  children: [
                                    Image.asset('assets/images/unsplash1.jpg'),
                                  ],
                                ),
                              );
                            })),
                      ),
                    ],
                  ),
                  // Expanded(
                  //   child: SizedBox(
                  //     width: 167,
                  //     height: 256,
                  //     child: GridView.count(
                  //       crossAxisCount: 2,
                  //       children: List.generate(
                  //         items.length,
                  //         (index) {
                  //           final item = items[index];
                  //           return Container(
                  //             padding: EdgeInsets.all(16),
                  //             child: Column(
                  //               crossAxisAlignment: CrossAxisAlignment.center,
                  //               children: [
                  //                 Text('Item ${index + 1}'),
                  //                 Column(
                  //                   children: [
                  //                     Image.asset(item.image),
                  //                   ],
                  //                 ),
                  //                 Row(
                  //                   mainAxisAlignment:
                  //                       MainAxisAlignment.spaceBetween,
                  //                   children: [
                  //                     Icon(item.icon1),
                  //                     // Icon(item.icon2),
                  //                     // Icon(item.icon3),
                  //                   ],
                  //                 ),
                  //                 SizedBox(height: 16),
                  //                 Text(item.text1),
                  //                 // Text(item.text2),
                  //                 // Text(item.text3),
                  //                 // Text(item.text4),
                  //                 // Text(item.text5),
                  //               ],
                  //             ),
                  //           );
                  //         },
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
