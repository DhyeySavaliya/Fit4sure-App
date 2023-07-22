import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fitness/pages/home/about_us/about_us_page.dart';
import 'package:fitness/pages/home/help_&_support/help_&_support_page.dart';
import 'package:fitness/pages/home/profile/profile_page.dart';
import 'package:fitness/pages/home/settings/settings_page.dart';
import 'package:fitness/pages/home/subscriptions_&_payment/subscriptions_&_payment_page.dart';
import 'package:fitness/pages/home/wishlist/your_wishlist_page.dart';
import 'package:fitness/pages/on_board/personal_info_page.dart';
import 'package:fitness/utils/app_colors.dart';
import 'package:fitness/utils/strings_style.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width / 1.4,
      child: Drawer(
        backgroundColor: AppColors.whiteColor,
        child: SingleChildScrollView(
          child: Container(
            color: AppColors.whiteColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                _profileView(),
                const SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: <Widget>[
                      const SizedBox(height: 10),
                      _myProfileView(),
                      const SizedBox(height: 10),
                      _aboutUsView(),
                      const SizedBox(height: 10),
                      _subscriptionAndPaymentView(),
                      const SizedBox(height: 10),
                      _notificationsView(),
                      const SizedBox(height: 10),
                      _helpAndSupportView(),
                      const SizedBox(height: 10),
                      _yourWishlistView(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const SizedBox(height: 15),
                      _settingsView(),
                      const SizedBox(height: 5),
                      _logoutView(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _profileView() {
    return SizedBox(
      width: Get.width / 1,
      height: Get.height / 5,
      child: Container(
        color: AppColors.greyColor,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15.0, 30.0, 15.0, 0.0),
          child: Row(
            //  mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 60,
                width: 60,
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
              const SizedBox(width: 10),
              // ignore: prefer_const_literals_to_create_immutables
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: <Widget>[
                  Text("Your Name",
                      style: normalBoldTextStyle.apply(
                          color: AppColors.whiteColor)),
                  const SizedBox(height: 5),
                  const Text(
                    "+91 89896 65522",
                    style: TextStyle(
                      color: AppColors.whiteColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  _myProfileView() {
    return Material(
      color: AppColors.whiteColor,
      child: InkWell(
        splashColor: AppColors.mainColor,
        onTap: () {
          Get.to(
            const ProfilePage(),
          );
        },
        child: SizedBox(
          width: Get.width / 1,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 12),
            child: Row(
              children: <Widget>[
                const Icon(Icons.person, color: AppColors.greyColor, size: 23),
                const SizedBox(width: 15),
                Text(
                  "My Profile",
                  style: normalTextStyle.apply(
                    color: AppColors.greyColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _aboutUsView() {
    return Material(
      color: AppColors.whiteColor,
      child: InkWell(
        splashColor: AppColors.mainColor,
        onTap: () {
          Get.to(
            const AboutUsPage(),
          );
        },
        child: SizedBox(
          width: Get.width / 1,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 12),
            child: Row(
              children: [
                const Icon(Icons.info, color: AppColors.greyColor, size: 23),
                const SizedBox(width: 15),
                Text(
                  "About Us",
                  style: normalTextStyle.apply(
                    color: AppColors.greyColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _subscriptionAndPaymentView() {
    return Material(
      color: AppColors.whiteColor,
      child: InkWell(
        splashColor: AppColors.mainColor,
        onTap: () {
          Get.to(
            const SubscriptionsAndPaymentPage(),
          );
        },
        child: SizedBox(
          width: Get.width / 1,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 12),
            child: Row(
              children: [
                const Icon(Icons.money, color: AppColors.greyColor, size: 23),
                const SizedBox(width: 15),
                Text(
                  "Subscription & Payment",
                  style: normalTextStyle.apply(
                    color: AppColors.greyColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _yourWishlistView() {
    return Material(
      color: AppColors.whiteColor,
      child: InkWell(
        splashColor: AppColors.mainColor,
        onTap: () {
          Get.to(
            const YourWishlistPage(),
          );
        },
        child: SizedBox(
          width: Get.width / 1,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 12),
            child: Row(
              children: [
                const Icon(Icons.favorite,
                    color: AppColors.greyColor, size: 23),
                const SizedBox(width: 15),
                Text(
                  "Your Wishlist",
                  style: normalTextStyle.apply(
                    color: AppColors.greyColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _notificationsView() {
    return Material(
      color: AppColors.whiteColor,
      child: InkWell(
        splashColor: AppColors.mainColor,
        onTap: () {
          // Get.to(
          //   CmsPage(
          //     title: 'Privacy Policy',
          //   ),
          // );
        },
        child: SizedBox(
          width: Get.width / 1,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 12),
            child: Row(
              children: [
                const Icon(Icons.notifications,
                    color: AppColors.greyColor, size: 23),
                const SizedBox(width: 15),
                Text(
                  "Notifications",
                  style: normalTextStyle.apply(
                    color: AppColors.greyColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _helpAndSupportView() {
    return Material(
      color: AppColors.whiteColor,
      child: InkWell(
        splashColor: AppColors.mainColor,
        onTap: () {
          Get.to(
            const HelpAndSupportPage(),
          );
        },
        child: SizedBox(
          width: Get.width / 1,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 12),
            child: Row(
              children: [
                const Icon(Icons.help, color: AppColors.greyColor, size: 23),
                const SizedBox(width: 15),
                Text(
                  "Help & Support",
                  style: normalTextStyle.apply(
                    color: AppColors.greyColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _settingsView() {
    return Material(
      color: AppColors.whiteColor,
      child: InkWell(
        splashColor: AppColors.mainColor,
        onTap: () {
          Get.to(
            const SettingsPage(),
          );
        },
        child: SizedBox(
          width: Get.width / 1,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 12),
            child: Row(
              children: [
                const Icon(Icons.settings,
                    color: AppColors.greyColor, size: 23),
                const SizedBox(width: 15),
                Text(
                  "Settings",
                  style: normalTextStyle.apply(
                    color: AppColors.greyColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _logoutView() {
    return Material(
      color: AppColors.whiteColor,
      child: InkWell(
        splashColor: AppColors.mainColor,
        onTap: () {
          // SharedPreferences pref = await SharedPreferences.getInstance();
          // pref.remove(NetworkConstant.TOKEN);
          Get.offAll(
            const PersonalInfoPage(),
          );
        },
        child: SizedBox(
          width: Get.width / 1,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 12),
            child: Row(
              children: [
                const Icon(Icons.logout, color: AppColors.greyColor, size: 23),
                const SizedBox(width: 15),
                Text(
                  "Logout",
                  style: normalTextStyle.apply(
                    color: AppColors.greyColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
