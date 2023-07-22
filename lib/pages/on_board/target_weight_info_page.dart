// ignore_for_file: prefer_const_constructors, prefer_final_fiedViewlds
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:get/get.dart';
import 'package:fitness/pages/on_board/health_issue_info_page.dart';
import 'package:fitness/utils/app_colors.dart';
import 'package:fitness/utils/strings_style.dart';

class TargetWeightInfoPage extends StatefulWidget {
  const TargetWeightInfoPage({Key? key}) : super(key: key);

  @override
  _TargetWeightInfoPageState createState() => _TargetWeightInfoPageState();
}

class _TargetWeightInfoPageState extends State<TargetWeightInfoPage> {
  var _onTap = 0;
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
            "Step 4/6",
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
          SizedBox(height: 70),
          _textFieldView(),
        ],
      ),
    );
  }

  _headingView() {
    return Center(
      child: Text(
        "Select a target weight",
        style: appbarTitleStyle,
      ),
    );
  }

  _textFieldView() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 150,
            height: 50,
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
                      child: Row(
                    children: [
                      Bounce(
                        duration: const Duration(milliseconds: 110),
                        onPressed: () {
                          setState(() {
                            _onTap = 0;
                          });
                        },
                        child: SizedBox(
                          height: 50,
                          width: 70,
                          child: Card(
                            elevation: 10,
                            shadowColor: Colors.grey.shade50,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            color: _onTap == 0
                                ? AppColors.greyColor
                                : AppColors.whiteColor,
                            child: Container(
                                decoration: BoxDecoration(
                                    color: _onTap == 0
                                        ? AppColors.greyColor
                                        : AppColors.whiteColor,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                  child: Text(
                                    "Kg",
                                    style: smallTextStyle.apply(
                                      color: _onTap != 0
                                          ? AppColors.greyColor
                                          : AppColors.whiteColor,
                                    ),
                                  ),
                                )),
                          ),
                        ),
                      ),
                      Bounce(
                        duration: const Duration(milliseconds: 110),
                        onPressed: () {
                          setState(() {
                            _onTap = 1;
                          });
                        },
                        child: SizedBox(
                          height: 50,
                          width: 70,
                          child: Card(
                            elevation: 10,
                            shadowColor: Colors.grey.shade50,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            color: _onTap == 1
                                ? AppColors.greyColor
                                : AppColors.whiteColor,
                            child: Container(
                                decoration: BoxDecoration(
                                    color: _onTap == 1
                                        ? AppColors.greyColor
                                        : AppColors.whiteColor,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                  child: Text(
                                    "Lb",
                                    style: smallTextStyle.apply(
                                      color: _onTap != 1
                                          ? AppColors.greyColor
                                          : AppColors.whiteColor,
                                    ),
                                  ),
                                )),
                          ),
                        ),
                      ),
                    ],
                  )),
                )),
          ),
          SizedBox(
            height: 70,
          ),
          Container(
            height: 60,
            width: Get.width / 2,
            decoration: BoxDecoration(
                color: Color(0xFFF6F6F6),
                borderRadius: BorderRadius.circular(35)),
            child: Center(
              child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Bounce(
                        duration: const Duration(milliseconds: 110),
                        onPressed: () {
                          setState(() {
                            _onTap = 0;
                          });
                        },
                        child: SizedBox(
                            height: 50,
                            width: 50,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: AppColors.whiteColor,
                                  shape: BoxShape.circle),
                              child: Center(
                                child: Icon(
                                  Icons.remove,
                                  color: AppColors.darkTextColor,
                                ),
                              ),
                            )),
                      ),
                      Row(
                        children: [
                          Text(
                            "72",
                            style: weightTextStyle,
                          ),
                          _onTap == 0
                              ? Text("Kg", style: weightTextStyle)
                              : Text("Lb", style: weightTextStyle),
                        ],
                      ),
                      Bounce(
                        duration: const Duration(milliseconds: 110),
                        onPressed: () {
                          setState(() {
                            _onTap = 0;
                          });
                        },
                        child: SizedBox(
                            height: 50,
                            width: 50,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: AppColors.whiteColor,
                                  shape: BoxShape.circle),
                              child: Center(
                                child: Icon(
                                  Icons.add,
                                  color: AppColors.darkTextColor,
                                ),
                              ),
                            )),
                      ),
                    ],
                  )),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Gain 7 Kg", style: weightUnderlineTextStyle),
              SizedBox(
                width: 5,
              ),
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  image: const DecorationImage(
                      image: AssetImage('assets/images/weight_icon.png'),
                      fit: BoxFit.fill),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Lorem ipsum dolor sit amet. Id facere quam!",
            style: normalBoldTextStyle.apply(color: AppColors.greenColor),
            textAlign: TextAlign.center,
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
                Get.to(HealthIssueInfoPage());
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
                            image: AssetImage('assets/images/previous_btn.png'),
                            fit: BoxFit.fill,
                          ),
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
