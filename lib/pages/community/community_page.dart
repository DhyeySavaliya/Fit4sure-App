// ignore_for_file: prefer_const_constructors, unused_element

import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
// import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:fitness/pages/home/drawer/drawer_page.dart';
import 'package:fitness/utils/app_colors.dart';
import 'package:fitness/utils/strings.dart';
import 'package:fitness/utils/strings_style.dart';

class CommunityPage extends StatefulWidget {
  const CommunityPage({
    Key? key,
  }) : super(key: key);

  @override
  State<CommunityPage> createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  var _onSelect = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: const DrawerPage(),
      appBar: AppBar(
        elevation: 1,
        surfaceTintColor: AppColors.primaryColor,
        foregroundColor: AppColors.primaryColor,
        backgroundColor: AppColors.appBarBackgroundColor,
        shadowColor: Colors.grey.shade50,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.notes,
                color: AppColors.greyColor,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        leadingWidth: 30,
        title: Row(
          children: [
            Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                color: AppColors.mainColor,
                shape: BoxShape.circle,
                border: Border.all(
                  width: 0.5,
                  color: AppColors.whiteColor,
                ),
                image: const DecorationImage(
                    image: AssetImage('assets/images/user_default_image.png'),
                    fit: BoxFit.fill),
              ),
            ),
            SizedBox(width: 5),
            Text(
              Strings.WELCOME,
              style: smallDullTextStyle,
            ),
            SizedBox(width: 2),
            Text(
              'Parth',
              style: smallTextStyle,
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            child: Container(
              height: 30,
              width: 90,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.grey.shade300, width: 0.5)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Today',
                    style:
                        altraSmallTextStyle.apply(color: AppColors.dullColor),
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    color: AppColors.greyColor,
                    size: 19,
                  ),
                ],
              ),
            ),
          ),
          const IconButton(
            onPressed: null,
            icon: Icon(
              Icons.notifications,
              // color: AppColors.greyColor,
              color: Color(0xFFBD3C2A),
              size: 25,
            ),
          ),
        ],
      ),
      backgroundColor: AppColors.whiteColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _searchView(),
            _cardView(),
          ],
        ),
      ),
    );
  }

  _searchView() {
    return SizedBox(
      width: Get.width / 1,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: Get.width / 1 - Get.width / 2.2,
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: AppColors.borderColor)),
                child: TextField(
                  cursorHeight: 20,
                  textAlignVertical: TextAlignVertical.center,
                  cursorColor: AppColors.mainColor,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: AppColors.darkIconColor,
                      size: 20,
                    ),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: const EdgeInsets.only(left: 15),
                    hintText: "",
                    hintStyle: hintTextStyle,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: Get.width / 3,
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: AppColors.borderColor)),
                child: TextField(
                  cursorHeight: 20,
                  textAlignVertical: TextAlignVertical.center,
                  cursorColor: AppColors.mainColor,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.filter_alt,
                      color: AppColors.darkIconColor,
                      size: 20,
                    ),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: const EdgeInsets.only(left: 0),
                    hintText: "All",
                    hintStyle: greenTextStyle.apply(color: AppColors.textColor),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _cardView() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        width: Get.width / 1,
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          image: const DecorationImage(
              image: AssetImage('assets/images/white_box_bg.png'),
              fit: BoxFit.fill),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 5, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: AppColors.mainColor,
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 0.5,
                          color: AppColors.whiteColor,
                        ),
                        image: const DecorationImage(
                            image:
                                AssetImage('assets/images/default_image1.png'),
                            fit: BoxFit.fill),
                      ),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hermione Granger',
                          style: smallBoldTextStyle,
                        ),
                        SizedBox(height: 3),
                        Text(
                          '2 days ago',
                          style: altraSmall400TextStyle.apply(
                              color: AppColors.dullColor),
                        ),
                      ],
                    ),
                  ],
                ),
                IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.bookmark,
                      color: AppColors.dullColor,
                      size: 17,
                    ))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam?',
              style: altraSmall400TextStyle.apply(color: AppColors.dullColor),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.favorite_border,
                      color: AppColors.dullColor,
                      size: 17,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '101',
                      style: altraSmall400TextStyle.apply(
                          color: AppColors.textColor),
                    ),
                  ],
                ),
                SizedBox(
                  width: 30,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.message_outlined,
                      color: AppColors.dullColor,
                      size: 17,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '34',
                      style: altraSmall400TextStyle.apply(
                          color: AppColors.textColor),
                    ),
                  ],
                ),
                SizedBox(
                  width: 30,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.share_outlined,
                      color: AppColors.dullColor,
                      size: 17,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '14',
                      style: altraSmall400TextStyle.apply(
                          color: AppColors.textColor),
                    ),
                  ],
                )
              ],
            ),
          )
        ]),
      ),
    );
  }

  _headingListView() {
    return SizedBox(
      height: Get.height / 7,
      width: Get.width / 1,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {
                setState(() {
                  _onSelect = index;
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: SizedBox(
                  height: Get.height / 7,
                  width: Get.width / 3,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      image: DecorationImage(
                          image: _onSelect == index
                              ? AssetImage('assets/images/selected_box_bg.png')
                              : AssetImage(
                                  'assets/images/unselected_box_bg.png'),
                          fit: BoxFit.fill),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "\$4.5/month",
                            style: hintTextStyle.apply(
                              color: AppColors.darkTextColor,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "12 months plan",
                            style: hintTextStyle.apply(
                              color: AppColors.darkTextColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  _includesView() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Text("Includes", style: normalBoldTextStyle),
        ),
        ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, i) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                width: Get.width / 1,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(width: 5),
                    Icon(Icons.check, color: AppColors.greenColor, size: 20),
                    SizedBox(width: 15),
                    SizedBox(
                      width: Get.width / 1.3,
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur.",
                        maxLines: 3,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Bounce(
            duration: const Duration(milliseconds: 110),
            onPressed: () {
              // Fluttertoast.showToast(msg: "Profile Updated!");

              Get.back();
            },
            child: Container(
              height: 35,
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: AppColors.greyColor),
              child: Center(
                child: Text(
                  'Try it now',
                  style: smallTextStyle.apply(
                    color: AppColors.whiteColor,
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
