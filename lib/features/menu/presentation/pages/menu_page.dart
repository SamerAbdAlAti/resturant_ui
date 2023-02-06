import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:restorant/core/sizes/app_size.dart';
import 'package:restorant/features/menu/presentation/manager/cubit/app_cubit.dart';
import 'package:restorant/features/menu/presentation/manager/menu_components/components.dart';
import 'package:restorant/generated/assets.dart';
import 'package:size_builder/size_builder.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Scaling.scaling(context);
    final date = DateTime.now();

    return Scaffold(
      backgroundColor: const Color(0xfff9fcfe),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(Scaling.H(15)).copyWith(top: 0.0),
            child: Container(
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                borderRadius: BorderRadius.circular(Scaling.H(40)),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29a7a7a7),
                    offset: Offset(0, Scaling.H(11)),
                    blurRadius: Scaling.H(23),
                  ),
                ],
              ),
              child: Padding(
                padding:
                    EdgeInsets.all(Scaling.H(20)).copyWith(top: Scaling.H(50)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MenuComponents.defaultButton(
                            asset: Assets.victorIconhamMenu02, onTap: () {}),
                        Text(
                          'Today, ${date.day} ${months[date.month - 1]} ${date.year}',
                          style: TextStyle(
                            fontFamily: 'Lexend',
                            fontSize: Scaling.S(12),
                            color: const Color(0x5c23233c),
                            fontWeight: FontWeight.w500,
                          ),
                          softWrap: false,
                        ),
                        MenuComponents.defaultButton(
                          asset: Assets.victorIconsearch09,
                          onTap: () {},
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          Assets.pixelRespng,
                          height: Scaling.H(100),
                        ),
                        const Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Total Amount',
                              style: TextStyle(
                                fontFamily: 'Lexend',
                                fontSize: Scaling.S(13),
                                color: const Color(0xff000000),
                                fontWeight: FontWeight.w600,
                              ),
                              textAlign: TextAlign.center,
                              softWrap: false,
                            ),
                            SizedBox(
                              height: Scaling.H(5),
                            ),
                            Text(
                              '\$42.85',
                              style: TextStyle(
                                fontFamily: 'Lexend',
                                fontSize: Scaling.S(24),
                                color: const Color(0xff000000),
                                fontWeight: FontWeight.w600,
                              ),
                              textAlign: TextAlign.center,
                              softWrap: false,
                            ),
                            SizedBox(
                              height: Scaling.H(12),
                            ),
                            Container(
                              height: Scaling.H(55),
                              width: Scaling.H(144),
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              decoration: BoxDecoration(
                                color: const Color(0xff000000),
                                borderRadius:
                                    BorderRadius.circular(Scaling.H(18)),
                              ),
                              child: MaterialButton(
                                onPressed: () {},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Pay',
                                      style: TextStyle(
                                        fontFamily: 'Lexend',
                                        fontSize: Scaling.S(24),
                                        color: const Color(0xffffffff),
                                        fontWeight: FontWeight.w600,
                                      ),
                                      textAlign: TextAlign.center,
                                      softWrap: false,
                                    ),
                                    SizedBox(
                                      width: Scaling.H(16.5),
                                    ),
                                    SvgPicture.asset(
                                      Assets.victorIconarrow00,
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
          Padding(
            padding: const EdgeInsets.only(right: 15, left: 15),
            child: Stack(
              alignment: AlignmentDirectional.centerEnd,
              children: [
                Container(
                  width: double.maxFinite,
                  height: 60,
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                    borderRadius: BorderRadius.circular(14.0),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x29a7a7a7),
                        offset: Offset(0, 11),
                        blurRadius: 23,
                      ),
                    ],
                  ),
                  child: BlocBuilder<AppCubit, AppState>(
                    buildWhen: (c, p) =>
                        c.tabBarCurrentIndex != p.tabBarCurrentIndex,
                    builder: (context, state) {
                      AppCubit cubit = AppCubit.get(context);
                      List<TapBarModel> tapBarAssets = [
                        TapBarModel(
                          asset: Assets.victorIconpngiceCream04,
                        ),
                        TapBarModel(
                          asset: Assets.victorIconpngfish03,
                        ),
                        TapBarModel(
                          asset: Assets.victorIconpngsoup06,
                        ),
                        TapBarModel(
                          asset: Assets.victorIconpngsushi08,
                        ),
                        TapBarModel(
                          asset: Assets.victorIconpngpizza05,
                        ),
                      ];
                      return SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        child: Row(
                          children: [
                            ...List<Widget>.generate(tapBarAssets.length,
                                (index) {
                              TapBarModel list = tapBarAssets[index];
                              return Padding(
                                padding: const EdgeInsets.all(34 / 2)
                                    .copyWith(bottom: 0.0, top: 0.0),
                                child: GestureDetector(
                                  onTap: () {
                                    cubit.currentIndexChange(index: index);
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      right: tapBarAssets.length - 1 == index
                                          ? 80
                                          : 0.0,
                                    ),
                                    child: SizedBox(
                                      width: 40,
                                      child: Column(
                                        children: [
                                          Expanded(
                                            child: SvgPicture.asset(
                                              list.asset,
                                              height: 32,
                                              colorFilter: ColorFilter.mode(
                                                state.tabBarCurrentIndex ==
                                                        index
                                                    ? Colors.black
                                                    : const Color(0xffd6d6d6),
                                                BlendMode.srcIn,
                                              ),
                                            ),
                                          ),
                                          AnimatedContainer(
                                            height: 8,
                                            width: state.tabBarCurrentIndex ==
                                                    index
                                                ? 40
                                                : 0.0,
                                            decoration: BoxDecoration(
                                              color: const Color(0xff000000),
                                              borderRadius:
                                                  BorderRadius.circular(11.0),
                                              boxShadow: const [
                                                BoxShadow(
                                                  color: Color(0x29000000),
                                                  offset: Offset(0, 3),
                                                  blurRadius: 12,
                                                ),
                                              ],
                                            ),
                                            duration: const Duration(
                                                milliseconds: 400),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            })
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  width: 60,
                  height: 60,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(0.641, 0.149),
                      end: Alignment(-0.307, 0.149),
                      colors: [Color(0xffffffff), Color(0x00ffffff)],
                      stops: [0.0, 1.0],
                    ),
                  ),
                  child: Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(
                        Assets.victorIconarrow00,
                        height: 7.17,
                        colorFilter: const ColorFilter.mode(
                            Colors.black, BlendMode.srcIn),
                      ),
                    ),
                  ),
                ),
              ],
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

class TapBarModel {
  final String asset;

  TapBarModel({required this.asset});
}
