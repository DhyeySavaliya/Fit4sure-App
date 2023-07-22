// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:get/get.dart';
import 'package:fitness/pages/community/community_page.dart';
import 'package:fitness/pages/explore/explore_page.dart';
import 'package:fitness/pages/home/home_page.dart';
import 'package:fitness/pages/plans/plans_page.dart';
import 'package:fitness/pages/track/track_page.dart';
import 'package:fitness/utils/app_colors.dart';
import 'package:fitness/utils/strings_style.dart';

class CustomBottomNavBarPage extends StatefulWidget {
  const CustomBottomNavBarPage({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavBarPage> createState() => _CustomBottomNavBarPageState();
}

class _CustomBottomNavBarPageState extends State<CustomBottomNavBarPage> {
  int _selectedIndex = 0;
  final _pages = const [
    HomePage(),
    PlansPage(),
    ExplorePage(),
    CommunityPage(),
    TrackPage(),
  ];
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomAppBar(
        color: AppColors.appBarBackgroundColor,
        child: Container(
          decoration: const BoxDecoration(
            color: AppColors.appBarBackgroundColor,
            boxShadow: [
              BoxShadow(
                blurRadius: 1,
                color: AppColors.darkMainColor,
              )
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 1),
            child: SizedBox(
              width: Get.width / 1,
              height: Get.height / 12,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Bounce(
                    duration: const Duration(milliseconds: 110),
                    onPressed: () {
                      setState(
                        () {
                          _selectedIndex = 0;
                        },
                      );
                    },
                    child: SizedBox(
                      height: 60,
                      width: 60,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                              child: _selectedIndex == 0
                                  ? Container(
                                      height: 24,
                                      width: 22,
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        image: const DecorationImage(
                                            image: AssetImage(
                                                'assets/images/home_dark.png'),
                                            fit: BoxFit.fill),
                                      ),
                                    )
                                  : Container(
                                      height: 24,
                                      width: 22,
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        image: const DecorationImage(
                                          image: AssetImage(
                                            'assets/images/home_dull.png',
                                          ),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                            ),
                            const SizedBox(height: 5),
                            Text("Home",
                                style: _selectedIndex == 0
                                    ? altraSmallWhiteTextStyle.apply(
                                        color: AppColors.greyColor)
                                    : altraSmallWhiteTextStyle.apply(
                                        color: AppColors.dullColor))
                          ],
                        ),
                      ),
                    ),
                  ),
                  Bounce(
                    duration: const Duration(milliseconds: 110),
                    onPressed: () {
                      setState(
                        () {
                          _selectedIndex = 1;
                        },
                      );
                    },
                    child: SizedBox(
                      height: 60,
                      width: 60,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                              child: _selectedIndex == 1
                                  ? Container(
                                      height: 26,
                                      width: 26,
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        image: const DecorationImage(
                                          image: AssetImage(
                                            'assets/images/plan_dark.png',
                                          ),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    )
                                  : Container(
                                      height: 26,
                                      width: 26,
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        image: const DecorationImage(
                                          image: AssetImage(
                                            'assets/images/plan_dull.png',
                                          ),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                            ),
                            const SizedBox(height: 3),
                            Text(
                              "Plans",
                              style: _selectedIndex == 1
                                  ? altraSmallWhiteTextStyle.apply(
                                      color: AppColors.greyColor,
                                    )
                                  : altraSmallWhiteTextStyle.apply(
                                      color: AppColors.dullColor,
                                    ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Bounce(
                    duration: const Duration(milliseconds: 110),
                    onPressed: () {
                      setState(
                        () {
                          _selectedIndex = 2;
                        },
                      );
                    },
                    child: SizedBox(
                      height: 60,
                      width: 60,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                              child: _selectedIndex == 2
                                  ? Container(
                                      height: 26,
                                      width: 26,
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        image: const DecorationImage(
                                          image: AssetImage(
                                            'assets/images/explore_dark.png',
                                          ),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    )
                                  : Container(
                                      height: 26,
                                      width: 26,
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        image: const DecorationImage(
                                          image: AssetImage(
                                            'assets/images/explore_dull.png',
                                          ),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                            ),
                            const SizedBox(height: 3),
                            Text(
                              "Explore",
                              style: _selectedIndex == 2
                                  ? altraSmallWhiteTextStyle.apply(
                                      color: AppColors.greyColor,
                                    )
                                  : altraSmallWhiteTextStyle.apply(
                                      color: AppColors.dullColor,
                                    ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Bounce(
                    duration: const Duration(milliseconds: 110),
                    onPressed: () {
                      setState(() {
                        _selectedIndex = 3;
                      });
                    },
                    child: SizedBox(
                      height: 60,
                      width: 60,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                              child: _selectedIndex == 3
                                  ? Container(
                                      height: 20,
                                      width: 32,
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        image: const DecorationImage(
                                          image: AssetImage(
                                            'assets/images/community_dark.png',
                                          ),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    )
                                  : Container(
                                      height: 20,
                                      width: 32,
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        image: const DecorationImage(
                                          image: AssetImage(
                                            'assets/images/community_dull.png',
                                          ),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              "Community",
                              style: _selectedIndex == 3
                                  ? altraSmallWhiteTextStyle.apply(
                                      color: AppColors.greyColor,
                                    )
                                  : altraSmallWhiteTextStyle.apply(
                                      color: AppColors.dullColor,
                                    ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Bounce(
                    duration: const Duration(milliseconds: 110),
                    onPressed: () {
                      setState(
                        () {
                          _selectedIndex = 4;
                        },
                      );
                    },
                    child: SizedBox(
                      height: 60,
                      width: 60,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                              child: _selectedIndex == 4
                                  ? Container(
                                      height: 24,
                                      width: 24,
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        image: const DecorationImage(
                                          image: AssetImage(
                                            'assets/images/track_dark.png',
                                          ),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    )
                                  : Container(
                                      height: 24,
                                      width: 24,
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        image: const DecorationImage(
                                          image: AssetImage(
                                            'assets/images/track_dull.png',
                                          ),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              "Track",
                              style: _selectedIndex == 4
                                  ? altraSmallWhiteTextStyle.apply(
                                      color: AppColors.greyColor,
                                    )
                                  : altraSmallWhiteTextStyle.apply(
                                      color: AppColors.dullColor,
                                    ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
