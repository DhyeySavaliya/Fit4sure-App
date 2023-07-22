// ignore_for_file: prefer_const_constructors, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
// import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:fitness/pages/auth/sign_in_page.dart';
// import 'package:fitness/pages/on_board/gender_info_page.dart';
import 'package:fitness/utils/app_colors.dart';
import 'package:fitness/utils/strings_style.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SingleChildScrollView(
        child: _body(),
      ),
    );
  }

  _body() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: <Widget>[
          SizedBox(height: 20),
          _headingView(),
          SizedBox(height: 40),
          _textFeildView(),
          SizedBox(height: 80),
          _buttonView(),
          SizedBox(height: 5),
          _signInOptionView(),
          SizedBox(height: 15),
        ],
      ),
    );
  }

  _headingView() {
    return Column(
      children: <Widget>[
        SizedBox(height: 15),
        Text(
          "Welcome to",
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w400,
            color: AppColors.textColor,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            height: 50,
            width: 70,
            decoration: BoxDecoration(
              color: AppColors.whiteColor,
              border: Border.all(
                width: 0.5,
                color: AppColors.whiteColor,
              ),
              image: const DecorationImage(
                image: AssetImage('assets/images/logo.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Text(
          "Fit4sure",
          style: weightTextStyle,
        ),
        SizedBox(height: 40),
        Text(
          "Create your account.",
          style: appbarTitleStyle,
        ),
      ],
    );
  }

  _textFeildView() {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                  )),
              SizedBox(height: 20),
              Text(
                "Password",
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
                      hintText: "Password",
                      hintStyle: hintTextStyle,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Confirm password",
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
                      hintText: "Confirm password",
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Bounce(
              duration: const Duration(milliseconds: 110),
              onPressed: () {
                Get.to(
                  SignInPage(),
                );
              },
              child: Container(
                height: 40,
                width: Get.width / 1,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: AppColors.greyColor),
                child: Center(
                  child: Text(
                    'Sign up',
                    style: smallTextStyle.apply(
                      color: AppColors.whiteColor,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Bounce(
              duration: const Duration(milliseconds: 110),
              onPressed: () {
                // Get.to(GenderInfoPage());
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
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: AppColors.whiteColor,
                          image: const DecorationImage(
                              image:
                                  AssetImage('assets/images/google_icon.png'),
                              fit: BoxFit.fill),
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Sign up with Google',
                        style: TextStyle(
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

  _signInOptionView() {
    return Center(
      child: InkWell(
        onTap: () {
          Get.to(SignInPage());
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Already have an account? ',
              style: normalTextStyle.apply(
                color: AppColors.dullColor,
              ),
            ),
            Text('Sign in', style: normalBoldTextStyle),
          ],
        ),
      ),
    );
  }
}
