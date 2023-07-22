// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fitness/pages/home/drawer/drawer_page.dart';
import 'package:fitness/utils/app_colors.dart';
import 'package:fitness/utils/strings.dart';
import 'package:fitness/utils/strings_style.dart';

//Note that this page is only applicable to use after the 5 apis from rapid api as mentioned in the doc.
//Moreover the ixons that will be updated in the website UI will be used here, hence this page is still not updated by them. The code is ready and can befound at
// package:fitness/home/home_page.dart in line 239
class TrackPage extends StatefulWidget {
  const TrackPage({
    Key? key,
  }) : super(key: key);

  @override
  State<TrackPage> createState() => _TrackPageState();
}

class _TrackPageState extends State<TrackPage> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  final _nameList = [
    'Track your weight',
    'Track water',
    'Exercise',
    'Complete Track',
    'Check your Heart',
    'Calculate BMI',
  ];

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
                    border:
                        Border.all(color: Colors.grey.shade300, width: 0.5)),
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
                )),
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
        child: SizedBox(
          height: Get.height / 1,
          width: Get.width / 1,
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
                  height: Get.height / 11,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    image: const DecorationImage(
                        image: AssetImage('assets/images/top_2_bg.png'),
                        fit: BoxFit.fill),
                  ),
                ),
              ),
              _listView()
            ],
          ),
        ),
      ),
    );
  }

  _listView() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 10.0),
      child: GridView.builder(
        itemCount: _nameList.length,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 8.0, mainAxisSpacing: 8.0),
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              // Get.to(const ProductDetailPage());
            },
            child: Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              color: AppColors.backgroundColor,
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.lightMainColor,
                  image: const DecorationImage(
                    image: AssetImage('assets/images/white_box_bg.png'),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/default_pic_.png'),
                                    fit: BoxFit.fill),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(5),
                                  topRight: Radius.circular(5),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(5),
                                  bottomRight: Radius.circular(5),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Center(
                                  child: Text(
                                    _nameList[index],
                                  ),
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
    );
  }
}
