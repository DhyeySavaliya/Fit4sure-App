// ignore_for_file: prefer_const_constructors, prefer_final_fields
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:get/get.dart';
import 'package:fitness/pages/on_board/gender_info_page.dart';
import 'package:fitness/utils/app_colors.dart';
import 'package:fitness/utils/strings_style.dart';

class PersonalInfoPage extends StatefulWidget {
  const PersonalInfoPage({Key? key}) : super(key: key);

  @override
  _PersonalInfoPageState createState() => _PersonalInfoPageState();
}

class _PersonalInfoPageState extends State<PersonalInfoPage> {
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
          "Step 1/6",
          style: appbarTitleStyle,
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: Get.width / 1,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Positioned(
                bottom: 0,
                child: Container(
                  width: Get.width / 1,
                  height: Get.height / 5,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    image: const DecorationImage(
                        image: AssetImage('assets/images/bottom_center_bg.png'),
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
                        image: AssetImage('assets/images/top_center_bg.png'),
                        fit: BoxFit.fill),
                  ),
                ),
              ),
              Positioned(bottom: 15, right: 15, left: 15, child: _buttonView()),
              _body(),
            ],
          ),
        ),
      ),
    );
  }

  _body() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          _headingView(),
          SizedBox(height: 100),
          _textFeildView(),
        ],
      ),
    );
  }

  _headingView() {
    return Column(
      children: const [
        SizedBox(height: 15),
        Text(
          "Your  personal info",
          style: appbarTitleStyle,
        ),
        Padding(
          padding: EdgeInsets.all(15.0),
          child: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et.",
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  _textFeildView() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Name",
              ),
              SizedBox(height: 10),
              Container(
                height: 40,
                decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: AppColors.borderColor)),
                child: Center(
                  child: TextField(
                    cursorHeight: 20,
                    keyboardType: TextInputType.text,
                    textAlignVertical: TextAlignVertical.center,
                    cursorColor: AppColors.mainColor,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: EdgeInsets.only(left: 15),
                      hintText: "Name",
                      hintStyle: hintTextStyle,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Email ID",
              ),
              SizedBox(height: 10),
              Container(
                height: 40,
                decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: AppColors.borderColor)),
                child: Center(
                  child: TextField(
                    cursorHeight: 20,
                    keyboardType: TextInputType.emailAddress,
                    textAlignVertical: TextAlignVertical.center,
                    cursorColor: AppColors.mainColor,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: EdgeInsets.only(left: 15),
                      hintText: "Email ID",
                      hintStyle: hintTextStyle,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  _buttonView() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Center(
        child: Bounce(
          duration: const Duration(milliseconds: 110),
          onPressed: () {
            Get.to(GenderInfoPage());
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
                        image: AssetImage(
                          'assets/images/next_btn.png',
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
