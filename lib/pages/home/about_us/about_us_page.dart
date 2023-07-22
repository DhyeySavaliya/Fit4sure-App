// ignore_for_file: prefer_const_constructors, prefer_final_fields
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:get/get.dart';
import 'package:fitness/utils/app_colors.dart';
import 'package:fitness/utils/strings_style.dart';

class AboutUsPage extends StatefulWidget {
  const AboutUsPage({Key? key}) : super(key: key);

  @override
  _AboutUsPageState createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
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
          "About Us",
          style: appbarTitleStyle,
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: Get.height / 1,
          width: Get.width / 1,
          child: Stack(
            children: [
              Container(
                width: Get.width / 1,
                height: Get.height / 6,
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  image: const DecorationImage(
                    image: AssetImage('assets/images/top_bg.png'),
                    fit: BoxFit.fill,
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
                      image: AssetImage('assets/images/top_2_bg.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  width: Get.width / 1,
                  height: Get.height / 4,
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    image: const DecorationImage(
                        image: AssetImage('assets/images/bottom_bg.png'),
                        fit: BoxFit.fill),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    SizedBox(height: 15),
                    _aboutUsView(),
                    SizedBox(height: 20),
                    _ourGoalsListView(),
                    SizedBox(height: 20),
                    _privacyAndPolicyView(),
                    SizedBox(height: 10),
                    Divider(
                      color: AppColors.dullColor,
                    ),
                    SizedBox(height: 10),
                    _termsAndConditionsView(),
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

  _aboutUsView() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          "Who we are?",
          style: normalBoldTextStyle,
        ),
        SizedBox(height: 15),
        Text(
            "Lorem ipsum dolor sit amet. Non possimus velit qui corporis distinctio eum corrupti iure qui asperiores quidem ab omnis nostrum! Qui sint voluptates sed autem doloremque et modi dolor non totam veritatis et facere reiciendis.",
            style: TextStyle(color: AppColors.textColor)),
      ],
    );
  }

  _ourGoalsListView() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 5),
          child: Text("Our Goals", style: normalBoldTextStyle),
        ),
        SizedBox(
          width: Get.width / 1,
          height: Get.height / 5.5,
          child: ListView.builder(
            itemCount: 15,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, i) {
              return Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: InkWell(
                  onTap: () {
                    // Get.to(const ProductDetailPage());
                  },
                  child: SizedBox(
                    width: Get.width / 3.3,
                    height: Get.height / 5.5,
                    child: Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      color: AppColors.backgroundColor,
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: AppColors.mainColor,
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: AppColors.lightMainColor,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: AppColors.lightMainColor,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10),
                                      ),
                                      image: DecorationImage(
                                          image: i % 2 == 0
                                              ? AssetImage(
                                                  'assets/images/right_bg.png')
                                              : AssetImage(
                                                  'assets/images/left_bg.png'),
                                          fit: BoxFit.fill),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  _privacyAndPolicyView() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Privacy Policy", style: normalBoldTextStyle),
        Container(
          height: 16,
          width: 16,
          decoration: BoxDecoration(
            color: Colors.transparent,
            image: DecorationImage(
              image: AssetImage('assets/images/download_icon.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ],
    );
  }

  _termsAndConditionsView() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Terms & Conditions", style: normalBoldTextStyle),
        Container(
          height: 16,
          width: 16,
          decoration: BoxDecoration(
            color: Colors.transparent,
            image: DecorationImage(
              image: AssetImage(
                'assets/images/download_icon.png',
              ),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ],
    );
  }
}
