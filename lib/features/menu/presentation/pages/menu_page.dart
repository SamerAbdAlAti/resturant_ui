import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:restorant/features/menu/presentation/manager/menu_components/components.dart';
import 'package:restorant/generated/assets.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final date = DateTime.now();

    return Scaffold(
      backgroundColor: const Color(0xfff9fcfe),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15).copyWith(top: 0.0),
            child: Container(
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                borderRadius: BorderRadius.circular(40.0),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x29a7a7a7),
                    offset: Offset(0, 11),
                    blurRadius: 23,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(20).copyWith(top: 50),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MenuComponents.defaultButton(
                            asset: Assets.victorIconhamMenu, onTap: () {}),
                        Text(
                          'Today, ${date.day} ${months[date.month - 1]} ${date.year}',
                          style: const TextStyle(
                            fontFamily: 'Lexend',
                            fontSize: 12,
                            color: Color(0x5c23233c),
                            fontWeight: FontWeight.w500,
                          ),
                          softWrap: false,
                        ),
                        MenuComponents.defaultButton(
                          asset: Assets.victorIconsearch,
                          onTap: () {},
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          Assets.pixelRespng,
                          height: 100,
                        ),
                        const Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Total Amount',
                              style: TextStyle(
                                fontFamily: 'Lexend',
                                fontSize: 13,
                                color: Color(0xff000000),
                                fontWeight: FontWeight.w600,
                              ),
                              textAlign: TextAlign.center,
                              softWrap: false,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              '\$42.85',
                              style: TextStyle(
                                fontFamily: 'Lexend',
                                fontSize: 24,
                                color: Color(0xff000000),
                                fontWeight: FontWeight.w600,
                              ),
                              textAlign: TextAlign.center,
                              softWrap: false,
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Container(
                              height: 55,
                              width: 144,
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              decoration: BoxDecoration(
                                color: const Color(0xff000000),
                                borderRadius: BorderRadius.circular(18.0),
                              ),
                              child: MaterialButton(
                                onPressed: () {},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text(
                                      'Pay',
                                      style: TextStyle(
                                        fontFamily: 'Lexend',
                                        fontSize: 24,
                                        color: Color(0xffffffff),
                                        fontWeight: FontWeight.w600,
                                      ),
                                      textAlign: TextAlign.center,
                                      softWrap: false,
                                    ),
                                    SizedBox(width: 16.5,),
                                    SvgPicture.asset(
                                      Assets.victorIconarrow,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

List<String> months = [
  "January",
  "Februay",
  "March",
  "April",
  "May",
  "June",
  "July",
  "August",
  "September",
  "October",
  "November",
  "December",
];
