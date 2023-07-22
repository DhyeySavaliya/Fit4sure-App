// ignore_for_file: prefer_const_constructors, prefer_final_fields
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:fitness/utils/app_colors.dart';
import 'package:fitness/utils/strings_style.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _isShowChangeEmail = false;
  bool _isShowResetPassword = false;
  bool _isObscure = true;
  bool _isObscure2 = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
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
          "Settings",
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
                  height: Get.height / 6,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    image: const DecorationImage(
                      image: AssetImage('assets/images/bottom_left_bg_2.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  width: Get.width / 1,
                  height: Get.height / 10,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    image: const DecorationImage(
                      image: AssetImage('assets/images/bottom_left_bg.png'),
                      fit: BoxFit.fill,
                    ),
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
                      _changeEmailView(),
                      SizedBox(height: 10),
                      Visibility(
                        visible: !_isShowChangeEmail,
                        child: Divider(
                          color: AppColors.dullColor,
                        ),
                      ),
                      SizedBox(height: 10),
                      _resetPasswordView(),
                      SizedBox(height: 10),
                      Visibility(
                        visible: !_isShowResetPassword,
                        child: Divider(
                          color: AppColors.dullColor,
                        ),
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

  _changeEmailView() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {
            setState(
              () {
                _isShowChangeEmail = !_isShowChangeEmail;
              },
            );
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Change email",
                style: normalBoldTextStyle,
              ),
              !_isShowChangeEmail
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
        SizedBox(height: _isShowChangeEmail ? 20 : 0),
        Visibility(
          visible: _isShowChangeEmail,
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
                  Text(
                    "Enter your new email id ",
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: AppColors.borderColor,
                      ),
                    ),
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
                          hintText: "Email",
                          hintStyle: hintTextStyle,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "An invite link will be sent to your updated email id. You can logout from here and login using the link sent.",
                    style: hintTextStyle.apply(color: Colors.black),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Logout from this Email?",
                    style: smallUnderlineTextStyle.apply(
                        color: AppColors.darkTextColor),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  _resetPasswordView() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {
            setState(
              () {
                _isShowResetPassword = !_isShowResetPassword;
              },
            );
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Reset password",
                style: normalBoldTextStyle,
              ),
              !_isShowResetPassword
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
        SizedBox(height: _isShowResetPassword ? 20 : 0),
        Visibility(
          visible: _isShowResetPassword,
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
                  SizedBox(height: 10),
                  Text(
                    "Your current password",
                  ),
                  SizedBox(height: 15),
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: AppColors.borderColor)),
                    child: TextField(
                      obscureText: _isObscure,
                      cursorHeight: 20,
                      controller: passwordController,
                      textAlignVertical: TextAlignVertical.center,
                      cursorColor: AppColors.mainColor,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          icon: Icon(
                            _isObscure
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: AppColors.dullColor,
                            size: 17,
                          ),
                          onPressed: () {
                            setState(
                              () {
                                _isObscure = !_isObscure;
                              },
                            );
                          },
                        ),
                        border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: const EdgeInsets.only(left: 15),
                        hintText: "Current password",
                        hintStyle: hintTextStyle,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                      "Your new password must be different from previous used passwords.",
                      style: hintTextStyle.apply(color: Colors.black)),
                  SizedBox(height: 30),
                  Text(
                    "Enter new password",
                  ),
                  SizedBox(height: 15),
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: AppColors.borderColor)),
                    child: TextField(
                      obscureText: _isObscure2,
                      cursorHeight: 20,
                      controller: newPasswordController,
                      textAlignVertical: TextAlignVertical.center,
                      cursorColor: AppColors.mainColor,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          icon: Icon(
                            _isObscure2
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: AppColors.dullColor,
                            size: 17,
                          ),
                          onPressed: () {
                            setState(
                              () {
                                _isObscure2 = !_isObscure2;
                              },
                            );
                          },
                        ),
                        border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: const EdgeInsets.only(left: 15),
                        hintText: "New password",
                        hintStyle: hintTextStyle,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Must be atleast 8 characters long.",
                    style: hintTextStyle.apply(color: Colors.black),
                  ),
                  SizedBox(height: 30),
                  Text(
                    "Confirm password",
                  ),
                  SizedBox(height: 15),
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: AppColors.borderColor),
                    ),
                    child: TextField(
                      cursorHeight: 20,
                      controller: confirmPasswordController,
                      textAlignVertical: TextAlignVertical.center,
                      cursorColor: AppColors.mainColor,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: const EdgeInsets.only(left: 15),
                        hintText: "Confirm password",
                        hintStyle: hintTextStyle,
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                  Bounce(
                    duration: const Duration(milliseconds: 110),
                    onPressed: () {
                      Fluttertoast.showToast(msg: "Password Reset!");

                      Get.back();
                    },
                    child: Container(
                      height: 35,
                      width: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: AppColors.greyColor),
                      child: Center(
                        child: Text(
                          'Reset password',
                          style: smallTextStyle.apply(
                            color: AppColors.whiteColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
