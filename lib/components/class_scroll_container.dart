import 'package:flutter/material.dart';
import 'package:stores/constants/app_colors.dart';

class ScrollContainer extends StatelessWidget {
  const ScrollContainer({super.key, this.onPressed, this.onTap});
  final Function()? onPressed;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(top: 8, right: 8),
                width: double.infinity,
                alignment: Alignment.topRight,
                decoration: BoxDecoration(
                  color: const Color(0xfffff0f2),
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xffE6E8EC), Color(0xfff6f6f6)],
                  ),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0xffDDDDDD),
                      blurRadius: 2.0,
                      spreadRadius: 1.0,
                      offset: Offset(0.0, 0.0),
                    )
                  ],
                  image: const DecorationImage(
                    image: AssetImage('assets/images/kgFutbolka.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: InkWell(
                  onTap: onTap,
                  child: Image.asset('assets/images/Union.png'),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 12),
                    const Text(
                      'Футболка Reebook 1221',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Montserrat',
                        color: AppColors.black,
                      ),
                    ),
                    const Text(
                      'Softech.kg',
                      style: TextStyle(
                        fontSize: 8,
                        fontWeight: FontWeight.w300,
                        fontFamily: 'Montserrat',
                        color: AppColors.black,
                      ),
                    ),
                    Container(
                      width: 44,
                      height: 14,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(54),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 0.7,
                            blurRadius: 5,
                            offset: const Offset(0, 0),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset('assets/images/Vector.png'),
                          const Text(
                            '1299',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Montserrat',
                              color: Color(0xffF58735),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: const [
                        Text(
                          '3700',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Montserrat',
                            color: Color(0xffB3B3B7),
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                        SizedBox(width: 2),
                        Text(
                          'c',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Montserrat',
                            color: Color(0xffB3B3B7),
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: const [
                        Text(
                          '3100',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Montserrat',
                            color: AppColors.black,
                          ),
                        ),
                        SizedBox(width: 2),
                        Text(
                          'c',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Montserrat',
                            color: AppColors.black,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
