import 'package:flutter/material.dart';
import 'package:stores/components/class_bestseller_card.dart';
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
        body: SingleChildScrollView(
          child: Column(
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      AppTexts.bestseller,
                      style: AppTextStyle.bestseller,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              BestsellerCard(),
            ],
          ),
        ),
      ),
    );
  }
}

// class BestsellerCard extends StatelessWidget {
//   const BestsellerCard({
//     super.key,
//     required this.products,
//   });

//   final List<Products> products;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 16),
//       child: Column(
//         children: [
//           SizedBox(
//             height: 256,
//             child: GridView.builder(
//               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 2,
//                 mainAxisSpacing: 20,
//                 crossAxisSpacing: 0,
//               ),
//               itemCount: products.length,
//               itemBuilder: (BuildContext context, int index) {
//                 final productsIndex = products[index];
//                 return Column(
//                   children: [
//                     SizedBox(
//                       height: 256,
//                       width: 167,
//                       child: Card(
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(12.0),
//                         ),
//                         color: Colors.white,
//                         elevation: 3.5,
//                         child: Image.asset(
//                           productsIndex.imagePath,
//                         ),
//                       ),
//                     ),
//                   ],
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
