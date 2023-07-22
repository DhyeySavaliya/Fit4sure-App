// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fitness/pages/home/drawer/drawer_page.dart';
import 'package:fitness/utils/app_colors.dart';
import 'package:fitness/utils/strings.dart';
import 'package:fitness/utils/strings_style.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({
    Key? key,
  }) : super(key: key);

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
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
                children: <Widget>[
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
            _blogsListView(),
            SizedBox(height: 10),
            _transformationListView(),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }

  _headingListView() {
    return SizedBox(
      height: Get.height / 4.5,
      width: Get.width / 1,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {
                // Get.to(const ProductDetailPage());
              },
              child: SizedBox(
                height: Get.height / 4.5,
                width: Get.width / 2,
                child: Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  color: AppColors.whiteColor,
                  child: Stack(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                            color: AppColors.mainColor,
                            borderRadius: BorderRadius.circular(5)),
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: AppColors.lightMainColor,
                                    image: const DecorationImage(
                                        image: AssetImage(
                                            'assets/images/default_pic.png'),
                                        fit: BoxFit.fill),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(5),
                                        topRight: Radius.circular(5))),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                // height: 50,
                                decoration: BoxDecoration(
                                  color: AppColors.lightMainColor,
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(5),
                                      bottomRight: Radius.circular(5)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        "Healthy salad",
                                        style: hintTextStyle.apply(
                                            color: AppColors.textColor),
                                      ),
                                      Icon(
                                        Icons.favorite_outline,
                                        color: AppColors.redColor,
                                        size: 15,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  _blogsListView() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Blogs", style: normalBoldTextStyle),
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
          padding: const EdgeInsets.only(left: 5.0, right: 5.0),
          child: SizedBox(
            width: Get.width / 1,
            height: Get.height / 3.3,
            child: ListView.builder(
              itemCount: 15,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, i) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(5, 5, 5, 10),
                  child: InkWell(
                    onTap: () {
                      // Get.to(const ProductDetailPage());
                    },
                    child: SizedBox(
                      width: Get.width / 1.05,
                      height: Get.height / 3.3,
                      child: Card(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        color: AppColors.whiteColor,
                        child: Stack(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                color: AppColors.mainColor,
                                image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/default_pic.jpg'),
                                    fit: BoxFit.fill),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    height: 40,
                                    width: Get.width / 1.075,
                                    decoration: BoxDecoration(
                                      color: Colors.black26,
                                    ),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          "Track Your Meals",
                                          style: greenTextStyle.apply(
                                            color: AppColors.whiteColor,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: Get.width / 1.075,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10),
                                      ),
                                      color: AppColors.cardColor,
                                    ),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            SizedBox(
                                              width: Get.width / 2,
                                              child: Text(
                                                "Lorem ipsum dolor sit amet. Et rerum quibusdam est rerum quis id omnis omnis. Et fuga...",
                                                style: hintTextStyle.apply(
                                                    color: Colors.black),
                                                maxLines: 4,
                                              ),
                                            ),
                                            Text("Read more",
                                                style: smallBoldTextStyle),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
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

  _transformationListView() {
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
          padding: const EdgeInsets.all(15.0),
          child: Container(
            width: Get.width / 1,
            height: Get.height / 2,
            decoration: BoxDecoration(
              color: AppColors.whiteColor,
              image: const DecorationImage(
                image: AssetImage('assets/images/white_box_bg.png'),
                fit: BoxFit.fill,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(30, 15, 30, 70),
              child: Container(
                height: Get.height / 3,
                width: Get.width / 3,
                decoration: BoxDecoration(
                  color: AppColors.lightMainColor,
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/default_image.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
