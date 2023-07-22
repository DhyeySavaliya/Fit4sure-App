// ignore_for_file: prefer_const_constructors, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:fitness/utils/app_colors.dart';
import 'package:fitness/utils/strings_style.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
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
          "Edit Profile",
          style: appbarTitleStyle,
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: Get.width / 1,
          height: Get.height / 1,
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
                  height: Get.height / 10,
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
              _body(),
            ],
          ),
        ),
      ),
    );
  }

  _body() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 20.0),
      child: Container(
        width: Get.width / 1,
        height: Get.height / 1.4,
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          image: const DecorationImage(
              image: AssetImage('assets/images/white_box_bg.png'),
              fit: BoxFit.fill),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _profilePictureView(),
              _userInfoView(),
              SizedBox(height: 15),
              _saveProfileButtonView()
            ],
          ),
        ),
      ),
    );
  }

  _profilePictureView() {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Stack(
        children: [
          Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: AppColors.mainColor,
                shape: BoxShape.circle,
                image: const DecorationImage(
                    image: AssetImage('assets/images/user_default_image.png'),
                    fit: BoxFit.fill),
              )),
          Positioned(
            bottom: 5,
            right: 2,
            child: Bounce(
              duration: const Duration(milliseconds: 110),
              onPressed: () {},
              child: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    shape: BoxShape.circle,
                    border: Border.all(width: 1, color: AppColors.dullColor),
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.edit,
                      color: AppColors.dullColor,
                      size: 15,
                    ),
                  )),
            ),
          )
        ],
      ),
    );
  }

  _userInfoView() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: SizedBox(
                  width: Get.width / 5,
                  child: Text("Name", style: normalBoldTextStyle),
                ),
              ),
              SizedBox(
                width: Get.width / 2,
                child: TextField(
                  cursorHeight: 20,
                  keyboardType: TextInputType.name,
                  textAlignVertical: TextAlignVertical.center,
                  cursorColor: AppColors.mainColor,
                  decoration: const InputDecoration(
                    // border: OutlineInputBorder(
                    //   borderSide: BorderSide.none,
                    // ),
                    contentPadding: EdgeInsets.only(bottom: 5),
                    hintText: "Kaushiki Kumari",
                    hintStyle: normalTextStyle,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: SizedBox(
                  width: Get.width / 5,
                  child: Text("Email", style: normalBoldTextStyle),
                ),
              ),
              SizedBox(
                height: 45,
                width: Get.width / 2,
                child: TextField(
                  cursorHeight: 20,
                  keyboardType: TextInputType.emailAddress,
                  textAlignVertical: TextAlignVertical.center,
                  cursorColor: AppColors.mainColor,
                  decoration: const InputDecoration(
                    // border: OutlineInputBorder(
                    //   borderSide: BorderSide.none,
                    // ),
                    contentPadding: EdgeInsets.only(bottom: 5),
                    hintText: "kktest123@gmail.com",
                    hintStyle: normalTextStyle,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: SizedBox(
                  width: Get.width / 4,
                  child: Text("Contact No.", style: normalBoldTextStyle),
                ),
              ),
              SizedBox(
                height: 45,
                width: Get.width / 2.1,
                child: TextField(
                  cursorHeight: 20,
                  keyboardType: TextInputType.number,
                  textAlignVertical: TextAlignVertical.center,
                  cursorColor: AppColors.mainColor,
                  decoration: const InputDecoration(
                    // border: OutlineInputBorder(
                    //   borderSide: BorderSide.none,
                    // ),
                    contentPadding: EdgeInsets.only(bottom: 5),
                    hintText: "+91 9934977456",
                    hintStyle: normalTextStyle,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: SizedBox(
                  width: Get.width / 4,
                  child: Text("Age", style: normalBoldTextStyle),
                ),
              ),
              SizedBox(
                height: 45,
                width: Get.width / 7,
                child: TextField(
                  cursorHeight: 20,
                  keyboardType: TextInputType.number,
                  textAlignVertical: TextAlignVertical.center,
                  cursorColor: AppColors.mainColor,
                  decoration: const InputDecoration(
                    // border: OutlineInputBorder(
                    //   borderSide: BorderSide.none,
                    // ),
                    contentPadding: EdgeInsets.only(bottom: 5),
                    hintText: "21",
                    hintStyle: normalTextStyle,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: SizedBox(
                  width: Get.width / 4,
                  child: Text("Gender", style: normalBoldTextStyle),
                ),
              ),
              SizedBox(
                height: 45,
                width: Get.width / 4,
                child: TextField(
                  cursorHeight: 20,
                  keyboardType: TextInputType.text,
                  textAlignVertical: TextAlignVertical.center,
                  cursorColor: AppColors.mainColor,
                  decoration: const InputDecoration(
                    // border: OutlineInputBorder(
                    //   borderSide: BorderSide.none,
                    // ),
                    contentPadding: EdgeInsets.only(bottom: 5),
                    hintText: "Female",
                    hintStyle: normalTextStyle,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: SizedBox(
                  width: Get.width / 4,
                  child: Text("Height", style: normalBoldTextStyle),
                ),
              ),
              SizedBox(
                height: 45,
                width: Get.width / 4,
                child: TextField(
                  cursorHeight: 20,
                  keyboardType: TextInputType.text,
                  textAlignVertical: TextAlignVertical.center,
                  cursorColor: AppColors.mainColor,
                  decoration: const InputDecoration(
                    // border: OutlineInputBorder(
                    //   borderSide: BorderSide.none,
                    // ),
                    contentPadding: EdgeInsets.only(bottom: 5),
                    hintText: "6'22''",
                    hintStyle: normalTextStyle,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: SizedBox(
                  width: Get.width / 4,
                  child: Text("Weight", style: normalBoldTextStyle),
                ),
              ),
              SizedBox(
                height: 45,
                width: Get.width / 4,
                child: TextField(
                  cursorHeight: 20,
                  keyboardType: TextInputType.text,
                  textAlignVertical: TextAlignVertical.center,
                  cursorColor: AppColors.mainColor,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    hintText: "45 Kg",
                    contentPadding: EdgeInsets.only(bottom: 5),
                    hintStyle: normalTextStyle,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  _saveProfileButtonView() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Bounce(
        duration: const Duration(milliseconds: 110),
        onPressed: () {
          Fluttertoast.showToast(msg: "Profile Updated!");

          Get.back();
        },
        child: Container(
          height: 35,
          width: 70,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: AppColors.greyColor),
          child: Center(
            child: Text(
              'Save',
              style: smallTextStyle.apply(
                color: AppColors.whiteColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
