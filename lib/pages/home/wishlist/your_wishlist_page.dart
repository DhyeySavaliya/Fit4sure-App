// ignore_for_file: prefer_const_constructors, prefer_final_fields
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:get/get.dart';
import 'package:fitness/utils/app_colors.dart';
import 'package:fitness/utils/strings_style.dart';

class YourWishlistPage extends StatefulWidget {
  const YourWishlistPage({Key? key}) : super(key: key);

  @override
  _YourWishlistPageState createState() => _YourWishlistPageState();
}

class _YourWishlistPageState extends State<YourWishlistPage> {
  bool _isShowRecipes = false;
  bool _isShowTrendingShortVideos = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        elevation: 1,
        shadowColor: AppColors.mainColor,
        centerTitle: true,
        leading: Bounce(
          duration: const Duration(milliseconds: 115),
          onPressed: () {
            Get.back();
            Get.back();
          },
          child: Padding(
            padding: const EdgeInsets.fromLTRB(11, 11, 0, 11),
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.lightMainColor,
                shape: BoxShape.circle,
              ),
              child: const Center(
                child: Icon(
                  Icons.keyboard_arrow_left,
                  color: AppColors.greyColor,
                  size: 25,
                ),
              ),
            ),
          ),
        ),
        title: const Text(
          "Your wishlist",
          style: appbarTitleStyle,
        ),
      ),
      body: SizedBox(
        width: Get.width / 1,
        height: Get.height / 1,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Positioned(
                top: 0,
                child: Container(
                  width: Get.width / 1,
                  height: Get.height / 6,
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    image: const DecorationImage(
                      image: AssetImage(
                        'assets/images/top_bg.png',
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 0,
                child: Container(
                  width: Get.width / 1,
                  height: Get.height / 11,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    image: const DecorationImage(
                      image: AssetImage(
                        'assets/images/top_2_bg.png',
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 2,
                child: Container(
                  width: Get.width / 1,
                  height: Get.height / 4,
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    image: const DecorationImage(
                      image: AssetImage(
                        'assets/images/bottom_bg.png',
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 15),
                    _recipesView(),
                    SizedBox(height: 10),
                    Divider(
                      color: AppColors.dullColor,
                    ),
                    SizedBox(height: 10),
                    _trendingShortVideosView(),
                    SizedBox(height: 10),
                    Divider(
                      color: AppColors.dullColor,
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _recipesView() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {
            setState(
              () {
                _isShowRecipes = !_isShowRecipes;
              },
            );
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Recipes",
                style: normalBoldTextStyle,
              ),
              !_isShowRecipes
                  ? Icon(
                      Icons.keyboard_arrow_down,
                      color: AppColors.greyColor,
                      size: 20,
                    )
                  : Icon(
                      Icons.keyboard_arrow_right,
                      color: AppColors.greyColor,
                      size: 20,
                    ),
            ],
          ),
        ),
        SizedBox(height: _isShowRecipes ? 20 : 0),
        Visibility(
          visible: _isShowRecipes,
          child: Container(
            width: Get.width / 1,
            height: Get.height / 1.5,
            decoration: BoxDecoration(
              color: AppColors.backgroundColor,
              image: const DecorationImage(
                image: AssetImage(
                  'assets/images/white_box_bg.png',
                ),
                fit: BoxFit.fill,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: GridView.builder(
                itemCount: 4,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8.0,
                    mainAxisSpacing: 8.0),
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      // Get.to(const ProductDetailPage());
                    },
                    child: Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      color: AppColors.backgroundColor,
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: AppColors.mainColor,
                                borderRadius: BorderRadius.circular(5)),
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: AppColors.lightMainColor,
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              'assets/images/default_pic.png'),
                                          fit: BoxFit.fill),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(5),
                                        topRight: Radius.circular(5),
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    // height: 50,
                                    decoration: BoxDecoration(
                                      color: AppColors.lightMainColor,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(5),
                                        bottomRight: Radius.circular(5),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text(
                                            "Healthy salad",
                                            style: smallTextStyle,
                                          ),
                                          Icon(
                                            Icons.favorite,
                                            color: AppColors.redColor,
                                            size: 15,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );
  }

  _trendingShortVideosView() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {
            setState(
              () {
                _isShowTrendingShortVideos = !_isShowTrendingShortVideos;
              },
            );
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Trending short videos",
                style: normalBoldTextStyle,
              ),
              !_isShowTrendingShortVideos
                  ? Icon(
                      Icons.keyboard_arrow_down,
                      color: AppColors.greyColor,
                      size: 20,
                    )
                  : Icon(
                      Icons.keyboard_arrow_right,
                      color: AppColors.greyColor,
                      size: 20,
                    ),
            ],
          ),
        ),
        SizedBox(height: _isShowTrendingShortVideos ? 20 : 0),
        Visibility(
          visible: _isShowTrendingShortVideos,
          child: Container(
            width: Get.width / 1,
            height: Get.height / 1.5,
            decoration: BoxDecoration(
              color: AppColors.backgroundColor,
              image: const DecorationImage(
                image: AssetImage('assets/images/white_box_bg.png'),
                fit: BoxFit.fill,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: GridView.builder(
                itemCount: 4,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8.0,
                    mainAxisSpacing: 8.0),
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      // Get.to(const ProductDetailPage());
                    },
                    child: Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      color: AppColors.backgroundColor,
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: AppColors.mainColor,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: AppColors.lightMainColor,
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              'assets/images/default_pic.png'),
                                          fit: BoxFit.fill),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(5),
                                        topRight: Radius.circular(5),
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    // height: 50,
                                    decoration: BoxDecoration(
                                      color: AppColors.lightMainColor,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(5),
                                        bottomRight: Radius.circular(5),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text(
                                            "Healthy salad",
                                            style: smallTextStyle,
                                          ),
                                          Icon(
                                            Icons.favorite,
                                            color: AppColors.redColor,
                                            size: 15,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
