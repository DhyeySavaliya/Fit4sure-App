// ignore_for_file: prefer_const_constructors, prefer_final_fields, file_names
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:get/get.dart';
import 'package:fitness/utils/app_colors.dart';
import 'package:fitness/utils/strings_style.dart';

class SubscriptionsAndPaymentPage extends StatefulWidget {
  const SubscriptionsAndPaymentPage({Key? key}) : super(key: key);

  @override
  _SubscriptionsAndPaymentPageState createState() =>
      _SubscriptionsAndPaymentPageState();
}

class _SubscriptionsAndPaymentPageState
    extends State<SubscriptionsAndPaymentPage> {
  bool _isShowCurrentPlan = false;
  bool _isShowPreviousPlan = false;
  bool _isShowPaymentHistory = false;
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
                )),
          ),
        ),
        title: const Text(
          "Subscriptions & payments",
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
                        image: AssetImage('assets/images/top_bg.png'),
                        fit: BoxFit.fill),
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
                        fit: BoxFit.fill),
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
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 15),
                      _currentPlanView(),
                      SizedBox(height: 10),
                      Divider(
                        color: AppColors.dullColor,
                      ),
                      SizedBox(height: 10),
                      _previousPlanView(),
                      SizedBox(height: 10),
                      Divider(
                        color: AppColors.dullColor,
                      ),
                      SizedBox(height: 10),
                      _paymentHistoryView(),
                      SizedBox(height: 10),
                      Divider(
                        color: AppColors.dullColor,
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _currentPlanView() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {
            setState(
              () {
                _isShowCurrentPlan = !_isShowCurrentPlan;
              },
            );
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Current Plans",
                style: normalBoldTextStyle,
              ),
              !_isShowCurrentPlan
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
        SizedBox(height: _isShowCurrentPlan ? 20 : 0),
        Visibility(
          visible: _isShowCurrentPlan,
          child: Container(
            width: Get.width / 1,
            decoration: BoxDecoration(
              color: AppColors.backgroundColor,
              image: const DecorationImage(
                  image: AssetImage('assets/images/white_box_bg.png'),
                  fit: BoxFit.fill),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Weight Managment Plan", style: normalBoldTextStyle),
                  SizedBox(height: 5),
                  Text("24 Hours remaining",
                      style: TextStyle(color: AppColors.textColor)),
                  SizedBox(height: 30),
                  Row(
                    children: const [
                      Text("Subscription Date : ",
                          style: TextStyle(color: AppColors.textColor)),
                      SizedBox(width: 10),
                      Text("July 12, 2022",
                          style: TextStyle(color: AppColors.textColor)),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Text("Payment Status : ",
                          style: TextStyle(color: AppColors.textColor)),
                      SizedBox(width: 20),
                      Text("Completed", style: greenTextStyle),
                      SizedBox(width: 3),
                      Container(
                        height: 14,
                        width: 14,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          image: DecorationImage(
                              image:
                                  AssetImage('assets/images/complete_icon.png'),
                              fit: BoxFit.fill),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      Bounce(
                        duration: const Duration(milliseconds: 110),
                        onPressed: () {
                          // Get.back();
                        },
                        child: Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: AppColors.greyColor),
                          child: Center(
                            child: Text(
                              'Upgrade Plan',
                              style: smallTextStyle.apply(
                                color: AppColors.whiteColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 15),
                      Bounce(
                        duration: const Duration(milliseconds: 110),
                        onPressed: () {
                          // Get.back();
                        },
                        child: Container(
                          height: 40,
                          width: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: AppColors.whiteColor,
                            border: Border.all(
                              color: AppColors.greyColor,
                              width: 1,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Cancel Subscription',
                              style: smallTextStyle.apply(
                                color: AppColors.greyColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Container(
                        height: 13,
                        width: 13,
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
                      SizedBox(width: 5),
                      Text(
                        'Download Invoice',
                        style: greenTextStyle.apply(
                          color: AppColors.textColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  _previousPlanView() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {
            setState(
              () {
                _isShowPreviousPlan = !_isShowPreviousPlan;
              },
            );
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Previous Plans",
                style: normalBoldTextStyle,
              ),
              !_isShowPreviousPlan
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
        SizedBox(height: _isShowPreviousPlan ? 20 : 0),
        Visibility(
          visible: _isShowPreviousPlan,
          child: Container(
            width: Get.width / 1,
            decoration: BoxDecoration(
              color: AppColors.backgroundColor,
              image: const DecorationImage(
                  image: AssetImage('assets/images/white_box_bg.png'),
                  fit: BoxFit.fill),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Weight Managment Plan", style: normalBoldTextStyle),
                  SizedBox(height: 5),
                  Text(
                    "24 Hours remaining",
                    style: TextStyle(
                      color: AppColors.textColor,
                    ),
                  ),
                  SizedBox(height: 30),
                  Row(
                    children: const [
                      Text(
                        "Subscription Date : ",
                        style: TextStyle(
                          color: AppColors.textColor,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "July 12, 2022",
                        style: TextStyle(
                          color: AppColors.textColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Text(
                        "Payment Status : ",
                        style: TextStyle(
                          color: AppColors.textColor,
                        ),
                      ),
                      SizedBox(width: 20),
                      Text("Completed", style: greenTextStyle),
                      SizedBox(width: 3),
                      Container(
                        height: 14,
                        width: 14,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/images/complete_icon.png',
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      Bounce(
                        duration: const Duration(milliseconds: 110),
                        onPressed: () {
                          // Get.back();
                        },
                        child: Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: AppColors.greyColor),
                          child: Center(
                            child: Text(
                              'Upgrade Plan',
                              style: smallTextStyle.apply(
                                color: AppColors.whiteColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 15),
                      Bounce(
                        duration: const Duration(milliseconds: 110),
                        onPressed: () {
                          // Get.back();
                        },
                        child: Container(
                          height: 40,
                          width: 130,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: AppColors.whiteColor,
                              border: Border.all(
                                  color: AppColors.greyColor, width: 1)),
                          child: Center(
                            child: Text(
                              'Cancel Subscription',
                              style: smallTextStyle.apply(
                                color: AppColors.greyColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Container(
                        height: 13,
                        width: 13,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          image: DecorationImage(
                              image:
                                  AssetImage('assets/images/download_icon.png'),
                              fit: BoxFit.fill),
                        ),
                      ),
                      SizedBox(width: 5),
                      Text(
                        'Download Invoice',
                        style: greenTextStyle.apply(
                          color: AppColors.textColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  _paymentHistoryView() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {
            setState(() {
              _isShowPaymentHistory = !_isShowPaymentHistory;
            });
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Payment History",
                style: normalBoldTextStyle,
              ),
              !_isShowPaymentHistory
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
        SizedBox(height: _isShowPaymentHistory ? 20 : 0),
        Visibility(
          visible: _isShowPaymentHistory,
          child: Container(
            width: Get.width / 1,
            decoration: BoxDecoration(
              color: AppColors.backgroundColor,
              image: const DecorationImage(
                  image: AssetImage('assets/images/white_box_bg.png'),
                  fit: BoxFit.fill),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Weight Managment Plan", style: normalBoldTextStyle),
                  SizedBox(height: 5),
                  Text("24 Hours remaining",
                      style: TextStyle(color: AppColors.textColor)),
                  SizedBox(height: 30),
                  Row(
                    children: const [
                      Text("Subscription Date : ",
                          style: TextStyle(color: AppColors.textColor)),
                      SizedBox(width: 10),
                      Text("July 12, 2022",
                          style: TextStyle(color: AppColors.textColor)),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Text("Payment Status : ",
                          style: TextStyle(color: AppColors.textColor)),
                      SizedBox(width: 20),
                      Text("Completed", style: greenTextStyle),
                      SizedBox(width: 3),
                      Container(
                        height: 14,
                        width: 14,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/images/complete_icon.png',
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      Bounce(
                        duration: const Duration(milliseconds: 110),
                        onPressed: () {
                          // Get.back();
                        },
                        child: Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: AppColors.greyColor),
                          child: Center(
                            child: Text(
                              'Upgrade Plan',
                              style: smallTextStyle.apply(
                                color: AppColors.whiteColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 15),
                      Bounce(
                        duration: const Duration(milliseconds: 110),
                        onPressed: () {
                          // Get.back();
                        },
                        child: Container(
                          height: 40,
                          width: 130,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: AppColors.whiteColor,
                              border: Border.all(
                                  color: AppColors.greyColor, width: 1)),
                          child: Center(
                            child: Text(
                              'Cancel Subscription',
                              style: smallTextStyle.apply(
                                color: AppColors.greyColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Container(
                        height: 13,
                        width: 13,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          image: DecorationImage(
                              image:
                                  AssetImage('assets/images/download_icon.png'),
                              fit: BoxFit.fill),
                        ),
                      ),
                      SizedBox(width: 5),
                      Text(
                        'Download Invoice',
                        style: greenTextStyle.apply(
                          color: AppColors.textColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
