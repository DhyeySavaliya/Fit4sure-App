// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
// import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:fitness/pages/home/drawer/drawer_page.dart';
import 'package:fitness/utils/app_colors.dart';
import 'package:fitness/utils/strings.dart';
import 'package:fitness/utils/strings_style.dart';

class PlansPage extends StatefulWidget {
  const PlansPage({
    Key? key,
  }) : super(key: key);

  @override
  State<PlansPage> createState() => _PlansPageState();
}

class _PlansPageState extends State<PlansPage> {
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
                  )
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
          )
        ],
      ),
      backgroundColor: AppColors.whiteColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _cardView(),
            _cardView(),
            _cardView(),
          ],
        ),
      ),
    );
  }

  _cardView() {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Card(
        elevation: 2,
        shadowColor: Colors.grey.shade50,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        color: AppColors.whiteColor,
        child: Container(
          decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(5)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 15),
              _headingListView(),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Text("Recommended",
                    style: altraSmallTextStyle.apply(
                        color: AppColors.darkTextColor)),
              ),
              SizedBox(height: 15),
              _includesView(),
            ],
          ),
        ),
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
                setState(
                  () {
                    _onSelect = index;
                  },
                );
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
                            ? AssetImage(
                                'assets/images/selected_box_bg.png',
                              )
                            : AssetImage(
                                'assets/images/unselected_box_bg.png',
                              ),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "\$4.5/month",
                            style: hintTextStyle.apply(
                              color: AppColors.darkTextColor,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
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
