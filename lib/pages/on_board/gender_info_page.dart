// ignore_for_file: prefer_const_constructors, prefer_final_fields
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:get/get.dart';
import 'package:fitness/pages/on_board/weight_info_page.dart';
import 'package:fitness/utils/app_colors.dart';
import 'package:fitness/utils/strings_style.dart';

class GenderInfoPage extends StatefulWidget {
  const GenderInfoPage({Key? key}) : super(key: key);

  @override
  _GenderInfoPageState createState() => _GenderInfoPageState();
}

class _GenderInfoPageState extends State<GenderInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.whiteColor,
        appBar: AppBar(
          backgroundColor: AppColors.whiteColor,
          elevation: 1,
          shadowColor: AppColors.mainColor,
          centerTitle: true,
          automaticallyImplyLeading: false,
          title: const Text(
            "Step 2/6",
            style: appbarTitleStyle,
          ),
        ),
        body: SingleChildScrollView(
            child: SizedBox(
                width: Get.width / 1,
                height: MediaQuery.of(context).size.height,
                child: Stack(children: [
                  Positioned(
                    bottom: 0,
                    child: Container(
                      width: Get.width / 1,
                      height: Get.height / 4,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        image: const DecorationImage(
                            image: AssetImage(
                                'assets/images/bottom_center_bg.png'),
                            fit: BoxFit.fill),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    child: Container(
                      width: Get.width / 1,
                      height: Get.height / 5,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        image: const DecorationImage(
                            image:
                                AssetImage('assets/images/top_center_bg.png'),
                            fit: BoxFit.fill),
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: 10, right: 15, left: 15, child: _buttonView()),
                  _body(),
                ]))));
  }

  _body() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          SizedBox(height: 15),
          _headingView(),
          SizedBox(height: 50),
          _genderSelectionTab(),
        ],
      ),
    );
  }

  _headingView() {
    return Center(
      child: Text(
        "Gender",
        style: appbarTitleStyle,
      ),
    );
  }

  _genderSelectionTab() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 130,
            height: 130,
            child: Card(
              elevation: 10,
              shadowColor: Colors.grey.shade50,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              color: AppColors.backgroundColor,
              child: Container(
                decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          color: AppColors.whiteColor,
                          image: const DecorationImage(
                              image: AssetImage('assets/images/male.png'),
                              fit: BoxFit.fill),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          "Male",
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            width: 130,
            height: 130,
            child: Card(
              elevation: 10,
              shadowColor: Colors.grey.shade50,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              color: AppColors.backgroundColor,
              child: Container(
                decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 20,
                        height: 30,
                        decoration: BoxDecoration(
                          color: AppColors.whiteColor,
                          image: const DecorationImage(
                              image: AssetImage('assets/images/female.png'),
                              fit: BoxFit.fill),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          "Female",
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            width: 130,
            height: 130,
            child: Card(
              elevation: 10,
              shadowColor: Colors.grey.shade50,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              color: AppColors.backgroundColor,
              child: Container(
                decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 25,
                        height: 35,
                        decoration: BoxDecoration(
                          color: AppColors.whiteColor,
                          image: const DecorationImage(
                              image: AssetImage('assets/images/others.png'),
                              fit: BoxFit.fill),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          "Others",
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  _buttonView() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Bounce(
              duration: const Duration(milliseconds: 110),
              onPressed: () {
                Get.to(WeightInfoPage());
              },
              child: Container(
                height: 40,
                width: Get.width / 1,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: AppColors.greyColor),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Next',
                        style: smallTextStyle.apply(
                          color: AppColors.whiteColor,
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Container(
                        width: 15,
                        height: 10,
                        decoration: BoxDecoration(
                          color: AppColors.greyColor,
                          image: const DecorationImage(
                              image: AssetImage('assets/images/next_btn.png'),
                              fit: BoxFit.fill),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Bounce(
              duration: const Duration(milliseconds: 110),
              onPressed: () {
                Get.back();
              },
              child: Container(
                height: 40,
                width: Get.width / 1,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: AppColors.greyColor),
                    color: AppColors.whiteColor),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 15,
                        height: 10,
                        decoration: BoxDecoration(
                          color: AppColors.whiteColor,
                          image: const DecorationImage(
                              image:
                                  AssetImage('assets/images/previous_btn.png'),
                              fit: BoxFit.fill),
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Previous',
                        style: smallTextStyle.apply(
                          color: AppColors.greyColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
