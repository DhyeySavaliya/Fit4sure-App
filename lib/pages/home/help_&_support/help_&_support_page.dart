// ignore_for_file: prefer_const_constructors, prefer_final_fields, file_names
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:get/get.dart';
import 'package:fitness/utils/app_colors.dart';
import 'package:fitness/utils/strings_style.dart';

class HelpAndSupportPage extends StatefulWidget {
  const HelpAndSupportPage({Key? key}) : super(key: key);

  @override
  _HelpAndSupportPageState createState() => _HelpAndSupportPageState();
}

class _HelpAndSupportPageState extends State<HelpAndSupportPage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        elevation: 1,
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
                gradient: const LinearGradient(
                    colors: [AppColors.lightMainColor, AppColors.mainColor]),
                shape: BoxShape.circle,
                border: Border.all(width: 1, color: AppColors.mainColor),
              ),
              child: const Center(
                child: Icon(
                  Icons.keyboard_arrow_left,
                  color: AppColors.greyColor,
                  size: 20,
                ),
              ),
            ),
          ),
        ),
        title: const Text(
          "Help & Supports",
          style: appbarTitleStyle,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 15),
              _faqView(),
              SizedBox(height: 40),
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
    );
  }

  _faqView() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "FAQ's",
          style: bigTextStyle.apply(color: AppColors.greyColor),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: 7,
            padding: EdgeInsets.zero,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: <Widget>[
                      Column(
                        children: [
                          Visibility(
                            // ignore: unrelated_type_equality_checks
                            visible: selectedIndex != index,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 15,
                                vertical: 10,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: <Widget>[
                                  Expanded(
                                    child: Text(
                                      "data.faqQuestion",
                                      style: normalTextStyle,
                                    ),
                                    flex: 1,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      right: 10,
                                      left: 10,
                                    ),
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_down,
                                    color: AppColors.greyColor,
                                    size: 25,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Visibility(
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                padding: EdgeInsets.only(
                                  top: 5,
                                  right: 5,
                                  left: 5,
                                  bottom: 10,
                                ),
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 223, 234, 248),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        // ignore: prefer_const_literals_to_create_immutables
                                        children: <Widget>[
                                          Expanded(
                                            child: Text(
                                              "data.faqQuestion",
                                              style: normalTextStyle,
                                            ),
                                            flex: 1,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              right: 10,
                                              left: 10,
                                            ),
                                          ),
                                          selectedIndex == index
                                              ? Icon(
                                                  Icons.keyboard_arrow_down,
                                                  color: AppColors.greyColor,
                                                  size: 25,
                                                )
                                              : Icon(
                                                  Icons.keyboard_arrow_up,
                                                  color: AppColors.greyColor,
                                                  size: 25,
                                                ),
                                        ],
                                      ),
                                      SizedBox(height: 13),
                                      Text(
                                        "data.faqAnswer",
                                        style: normalTextStyle,
                                      )
                                      // )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            visible: selectedIndex == index,
                          ),
                        ],
                      ),
                      Visibility(
                        child: SizedBox(
                          height: 20,
                        ),
                        visible: selectedIndex != index,
                      )
                    ],
                  ),
                ),
                onTap: () {
                  //   onClick(index);
                },
              );
            },
          ),
        ),
      ],
    );
  }

  _previousPlanView() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Previous Plans",
          style: bigTextStyle.apply(color: AppColors.greyColor),
        ),
        Icon(
          Icons.keyboard_arrow_down,
          color: AppColors.greyColor,
          size: 25,
        ),
      ],
    );
  }

  _paymentHistoryView() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Payment History",
          style: bigTextStyle.apply(color: AppColors.greyColor),
        ),
        Icon(
          Icons.keyboard_arrow_down,
          color: AppColors.greyColor,
          size: 25,
        ),
      ],
    );
  }
}
