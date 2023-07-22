// ignore_for_file: prefer_const_constructors, prefer_final_fields, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:get/get.dart';
// import 'package:fitness/pages/home/profile/edit_profile_page.dart'; Use when you integrate backend
import 'package:fitness/utils/app_colors.dart';
import 'package:fitness/utils/strings_style.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
          "Profile",
          style: appbarTitleStyle,
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: Get.width / 1,
          height: Get.height / 1,
          child: Stack(
            children: [
              Container(
                width: Get.width / 1,
                height: Get.height / 6,
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  image: const DecorationImage(
                      image: AssetImage('assets/images/top_bg.png'),
                      fit: BoxFit.fill),
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
                      fit: BoxFit.fill,
                    ),
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
            fit: BoxFit.fill,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _profilePictureView(),
              SizedBox(height: 15),
              _userInfoView(),
              SizedBox(height: 15),
              _editProfileButtonView()
            ],
          ),
        ),
      ),
    );
  }

  _profilePictureView() {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          color: AppColors.mainColor,
          shape: BoxShape.circle,
          border: Border.all(
            width: 0.5,
            color: AppColors.whiteColor,
          ),
          image: const DecorationImage(
            image: AssetImage('assets/images/user_default_image.png'),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }

  _userInfoView() {
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Name", style: normalBoldTextStyle),
              Text("Parth", style: normalTextStyle),
            ],
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Email", style: normalBoldTextStyle),
              Text("Parth@gmail.com", style: normalTextStyle),
            ],
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Contact Number", style: normalBoldTextStyle),
              Text("8989898989", style: normalTextStyle),
            ],
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Age", style: normalBoldTextStyle),
              Text("25", style: normalTextStyle),
            ],
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Gender", style: normalBoldTextStyle),
              Text("Male", style: normalTextStyle),
            ],
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Height", style: normalBoldTextStyle),
              Text("5'9", style: normalTextStyle),
            ],
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Weight", style: normalBoldTextStyle),
              Text("70 kg", style: normalTextStyle),
            ],
          )
        ],
      ),
    );
  }

  _editProfileButtonView() {
    // The commented part can be used in case of displaying data from backend
    // return Padding(
    //   padding: const EdgeInsets.all(10.0),
    //   child: Bounce(
    //     duration: const Duration(milliseconds: 110),
    //     onPressed: () {
    //       Get.to(
    //         const EditProfilePage(),
    //       );
    //     },
    //     child: Container(
    //       height: 35,
    //       width: 100,
    //       decoration: BoxDecoration(
    //           borderRadius: BorderRadius.circular(5),
    //           color: AppColors.greyColor),
    //       child: Center(
    //         child: Row(
    //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //           children: [
    //             Icon(
    //               Icons.edit,
    //               color: AppColors.whiteColor,
    //               size: 17,
    //             ),
    //             Text(
    //               'Edit Profile',
    //               style: smallTextStyle.apply(
    //                 color: AppColors.whiteColor,
    //               ),
    //             ),
    //           ],
    //         ),
    //       ),
    //     ),
    //   ),
    // );
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all<Color>(AppColors.greyColor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        child: const Text("Edit Profile"),
      ),
    );
  }
}
