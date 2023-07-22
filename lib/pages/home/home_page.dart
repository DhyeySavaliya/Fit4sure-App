// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fitness/pages/home/drawer/drawer_page.dart';
import 'package:fitness/utils/app_colors.dart';
import 'package:fitness/utils/strings.dart';
import 'package:fitness/utils/strings_style.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var scaffoldKey = GlobalKey<ScaffoldState>();

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
          children: <Widget>[
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
        actions: <Widget>[
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
          children: <Widget>[
            SizedBox(height: 15),
            _headingListView(),
            SizedBox(height: 5),
            _yourReportListView(),
            SizedBox(height: 10),
            _posterView(),
            SizedBox(height: 15),
            _trendingListView(),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }

  _headingListView() {
    return SizedBox(
      width: Get.width / 1,
      height: Get.height / 6.5,
      child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, i) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(10, 5, 0, 10),
            child: InkWell(
              onTap: () {
                // Get.to(const ProductDetailPage());
              },
              child: SizedBox(
                width: Get.width / 1.5,
                height: Get.height / 7.5,
                child: Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: AppColors.lightMainColor,
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: Get.width / 4,
                        decoration: BoxDecoration(
                            color: AppColors.whiteColor,
                            border: Border.all(
                                color: AppColors.darkMainColor, width: 0.5),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15))),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: Get.width / 4,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/doctor.png'),
                                  fit: BoxFit.fill),
                              color: AppColors.whiteColor,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: AppColors.lightMainColor,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(15),
                                bottomRight: Radius.circular(15))),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              SizedBox(
                                width: Get.width / 3,
                                child: Text(
                                    "Need a dietitian who is always there for you?",
                                    textAlign: TextAlign.left,
                                    maxLines: 3,
                                    style: smallTextStyle.apply(
                                        color: AppColors.greyColor)),
                              ),
                              const SizedBox(height: 3),
                              Container(
                                height: 27,
                                width: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: AppColors.greyColor),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Text(
                                      'Know more',
                                      style: smallTextStyle.apply(
                                        color: AppColors.whiteColor,
                                      ),
                                    ),
                                    Icon(
                                      Icons.keyboard_arrow_right_outlined,
                                      color: AppColors.whiteColor,
                                      size: 19,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  _yourReportListView() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Your report", style: normalBoldTextStyle),
              Container(
                height: 17,
                width: 17,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: AppColors.greyColor),
                child: Center(
                  child: Icon(
                    Icons.keyboard_arrow_right_outlined,
                    color: AppColors.whiteColor,
                    size: 15,
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: SizedBox(
            width: Get.width / 1,
            height: Get.height / 6.3,
            child: ListView.builder(
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, i) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(5, 5, 0, 10),
                  child: InkWell(
                    onTap: () {
                      // Get.to(const ProductDetailPage());
                    },
                    child: SizedBox(
                      width: Get.width / 3.3,
                      height: Get.height / 6.3,
                      child: Card(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        color: AppColors.whiteColor,
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: AppColors.mainColor,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: AppColors.mainColor,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          bottomLeft: Radius.circular(10),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: AppColors.lightMainColor,
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(10),
                                          bottomRight: Radius.circular(10),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Center(
                              child: Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                  color: AppColors.darkMainColor,
                                  border: Border.all(
                                      color: Colors.white60, width: 3),
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }

  _posterView() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: SizedBox(
        width: Get.width / 1,
        height: Get.height / 7,
        child: Card(
          elevation: 10,
          shadowColor: Colors.grey.shade50,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          color: AppColors.whiteColor,
          child: Container(
            decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SizedBox(
                    width: Get.width / 1,
                    child: Text(
                      "Few easy steps, and know your body!",
                      textAlign: TextAlign.center,
                      maxLines: 3,
                    ),
                  ),
                  SizedBox(
                    width: Get.width / 1,
                    child: Text("Need a dietitian who is always there for you?",
                        textAlign: TextAlign.center,
                        maxLines: 3,
                        style:
                            smallTextStyle.apply(color: AppColors.greyColor)),
                  ),
                  const SizedBox(height: 3),
                  Container(
                    height: 27,
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: AppColors.greyColor),
                    child: Center(
                      child: Text(
                        'Take test',
                        style: smallTextStyle.apply(
                          color: AppColors.whiteColor,
                        ),
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

  _trendingListView() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Trending", style: normalBoldTextStyle),
              Container(
                height: 17,
                width: 17,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.greyColor,
                ),
                child: Center(
                  child: Icon(
                    Icons.keyboard_arrow_right_outlined,
                    color: AppColors.whiteColor,
                    size: 15,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: Get.width / 1,
          height: Get.height / 3.3,
          child: ListView.builder(
            itemCount: 3,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, i) {
              return Padding(
                padding: const EdgeInsets.fromLTRB(10, 5, 0, 10),
                child: InkWell(
                  onTap: () {
                    // Get.to(const ProductDetailPage());
                  },
                  child: Stack(
                    children: <Widget>[
                      SizedBox(
                        width: Get.width / 2.3,
                        height: Get.height / 3.3,
                        child: Card(
                          elevation: 5,
                          color: AppColors.whiteColor,
                          child: Container(
                            decoration: BoxDecoration(
                                color: AppColors.darkMainColor,
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/images/dummy_2.jpg'),
                                    fit: BoxFit.fill),
                                borderRadius: BorderRadius.circular(5)),
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: const <Widget>[
                                    Text("Product Name",
                                        textAlign: TextAlign.center,
                                        style: smallWhiteTextStyle),
                                    SizedBox(height: 3),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text("3.5 K views",
                                            textAlign: TextAlign.center,
                                            style: altraSmallWhiteTextStyle),
                                        SizedBox(width: 20),
                                        Icon(
                                          Icons.bookmark,
                                          color: AppColors.redColor,
                                          size: 15,
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        top: 0,
                        child: IconButton(
                          onPressed: null,
                          icon: Icon(
                            Icons.more_vert,
                            color: AppColors.whiteColor,
                            size: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
