import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:demo/utilities/constants.dart';
import 'package:demo/utilities/helper_ui.dart';
import 'package:demo/utilities/screen_navigator.dart';
import 'package:demo/views/admin_channel/admin_page.dart';
import 'package:demo/views/admin_channel/member_page.dart';
import 'package:demo/views/admin_channel/remove_user_page.dart';
import 'package:demo/views/home/drawer.dart';
import 'package:demo/views/home/list_page.dart';
import 'package:demo/views/home/preview_channal_page.dart';
import 'package:demo/views/news/news_page.dart';
import 'package:demo/views/onboarding/onboarding_page.dart';
import 'package:demo/views/profile/menupop.dart';
import 'package:demo/views/public_profile/widget/public_profile_dialog.dart';
import 'package:demo/views/settings/widget/notification_bottom_sheet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../../main.dart';
import '../../network/api_caller.dart';
import '../../themes/colors.dart';
import '../../themes/style.dart';
import '../../themes/weights.dart';
import '../../widgets/button.dart';
import '../../widgets/text_field.dart';
import '../admin_channel/widget/menupop.dart';
import '../bottom_nav_bar/bottom_nav_bar_page.dart';
import '../chat/open_chat.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  bool media = true;
  final PopupMenuHandler _popupMenuHandler = PopupMenuHandler();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF201F24),
      appBar: AppBar(
        title: Text(
          "Back",
          style: TextStyle(fontSize: 16),
        ),
        elevation: 0.0,
        backgroundColor: Color(0xFF201F24),
        leading: InkWell(
          onTap: () => navigatorKey.currentState!.pop(),
          child: Center(
              child: Icon(
            Icons.keyboard_backspace,
            color: AppColors.white,
            size: 25.sm,
          )),
        ),
      ),
      body: SizedBox(
        width: AppConstants.screenWidth,
        height: AppConstants.screenHeight,
        child: Padding(
          padding: EdgeInsets.all(20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 9.h,
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    width: 138.sm,
                    height: 138.sm,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/profile.png'),
                          fit: BoxFit.cover,
                        )),
                  ),
                ),
              ),
              SizedBox(
                height: 22.h,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'OutLaw',
                    style: textStyle(
                        20.sm, AppFontWeights.liteBold, AppColors.white),
                  ),
                ],
              ),
              Text(
                '20 Members',
                style:
                    textStyle(12.sm, AppFontWeights.normal, Color(0xFFBABABA)),
              ),
              SizedBox(
                height: 22.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      child: myContainer(
                          txt: "Mute", svgg: "assets/notificationn.svg")),
                  Expanded(
                      child: myContainer(
                          txt: "Search", svgg: "assets/searchh.svg")),
                  Expanded(
                    child: menuPoppWidget(),

                    // child: myContainer(
                    //     onTapp: () {
                    //       MenuPopClass();
                    //     },
                    //     txt: "More",
                    //     svgg: "assets/threedots.svg")
                  ),
                ],
              ),
              SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  shrinkWrap: true,
                  physics: AlwaysScrollableScrollPhysics(),
                  itemBuilder: (context, index) => listwidget(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget myContainer({txt, svgg, onTapp}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 5),
    child: InkWell(
      onTap: onTapp,
      child: Container(
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          color: Color(0xFF17181C),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(svgg ?? 'assets/notificationn.svg'),
            SizedBox(
              height: 10,
            ),
            Text(
              txt ?? "Mute",
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    ),
  );
}

Widget listwidget() {
  return InkWell(
    onTap: () => push(OpenChatScreen(), ''),
    child: Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: 10,
            ),
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(
                "assets/profile.png",
              ),
              backgroundColor: Colors.transparent,
            ),
            SizedBox(width: 10),
            Text(
              "Confighub",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 17),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          child: dividerWidgett(),
        )
      ],
    ),
  );
}

Widget menuPoppWidget() {
  return PopupMenuButton(
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          color: Color(0xFF17181C),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/threedots.svg'),
            SizedBox(
              height: 10,
            ),
            Text(
              "More",
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    ),
    color: Color(0xFF353535),
    padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
    constraints: BoxConstraints(maxHeight: 100, maxWidth: 250),
    offset: Offset(0, 5),
    position: PopupMenuPosition.under,
    // iconSize: 22,
    // icon: SvgPicture.asset(
    //   'assets/dots.svg',
    //   height: 25,
    //   width: 10,
    // ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(15),
      ),
    ),
    itemBuilder: (context) {
      return [
        PopupMenuItem<int>(
          padding: EdgeInsets.all(0),
          value: 0,
          child: SizedBox(
            width: Get.width,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Leave",
                        style: TextStyle(
                            color: Color(0xFFD8453D),
                            fontWeight: FontWeight.bold),
                      ),
                      SvgPicture.asset('assets/leavee.svg')
                    ],
                  ),
                ),
                SizedBox(height: 4),
                dividerWidget()
              ],
            ),
          ),
        ),
        PopupMenuItem<int>(
          padding: EdgeInsets.all(0),
          value: 1,
          child: SizedBox(
            height: 30,
            width: Get.width,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Report",
                        style: TextStyle(
                            color: Color(0xFFD8453D),
                            fontWeight: FontWeight.bold),
                      ),
                      SvgPicture.asset('assets/reportt.svg')
                    ],
                  ),
                ),
                // SizedBox(height: 4),
                // dividerWidget()
              ],
            ),
          ),
        ),
      ];
    },
  );
}
