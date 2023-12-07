import 'package:demo/utilities/screen_navigator.dart';
import 'package:demo/views/admin_channel/remove_user_page.dart';
import 'package:demo/views/home/mediaa.dart';
import 'package:demo/views/profile/profile_edit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../themes/colors.dart';
import '../../themes/style.dart';
import '../../themes/weights.dart';
import '../../utilities/constants.dart';
import '../home/drawer.dart';

class ProfileMediaScreen extends StatefulWidget {
  ProfileMediaScreen({super.key});

  @override
  State<ProfileMediaScreen> createState() => _ProfileMediaScreenState();
}

class _ProfileMediaScreenState extends State<ProfileMediaScreen> {
  int selectedIndex = 0;
  List<Widget> screens = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    screens = [
      media(),
      links(),
      files(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF201F24),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 25, bottom: 25, right: 20, left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      pop();
                    },
                    child: Icon(
                      Icons.keyboard_backspace,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                  SvgPicture.asset(
                    'assets/dots.svg',
                    height: 20,
                  )
                ],
              ),
            ),
            CircleAvatar(
              radius: 40,
              backgroundColor: Colors.white.withOpacity(0.50),
              backgroundImage: AssetImage('assets/profile.png'),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'ConfigHub',
              style: TextStyle(
                fontSize: 18,
                fontWeight: AppFontWeights.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Info",
                    style: TextStyle(
                      color: Color(0xFFBABABA),
                      fontWeight: AppFontWeights.liteBold,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Lorem Ipsum is sipmly dummy text of the printing",
                  style: TextStyle(fontSize: 12, color: Color(0xFFBABABA)),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Bio",
                  style: TextStyle(
                      color: Color(0xFFBABABA), fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Lorem Ipsum is sipmly dummy text of the printing",
                  style: TextStyle(color: Color(0xFFBABABA), fontSize: 12),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "@sundarpuchie",
                  style: TextStyle(
                      color: Color(0xFFBABABA), fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Expanded(
              child: DefaultTabController(
                length: 3,
                initialIndex: selectedIndex,
                child: SizedBox(
                  width: Get.width,

                  // height: 400,
                  height: Get.height,
                  child: Column(
                    children: [
                      Container(
                        width: AppConstants.screenWidth,
                        color: Color(0xFF201F24),
                        child: PreferredSize(
                          preferredSize: Size(double.infinity, 100.sp),
                          child: TabBar(
                            indicatorColor: AppColors.primary,
                            indicatorWeight: 0.0000001,
                            isScrollable: true,
                            labelColor: AppColors.primary,
                            unselectedLabelColor: AppColors.color666666,
                            labelStyle: textStyle(
                              16.sp,
                              AppFontWeights.medium,
                              AppColors.color666666,
                            ),
                            // controller: _controller,
                            onTap: (index) {
                              // Tab index when user select it, it start from zero
                              setState(() {
                                selectedIndex = index;
                              });
                            },
                            tabs: [
                              Tab(
                                icon: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      color: selectedIndex == 0
                                          ? AppColors.primary
                                          : Colors.transparent,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 5.0, horizontal: 15.0),
                                      child: Text(
                                        "Media",
                                        style: textStyle(
                                            15.sm,
                                            AppFontWeights.medium,
                                            AppColors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Tab(
                                icon: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      color: selectedIndex == 1
                                          ? AppColors.primary
                                          : Colors.transparent,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 5.0, horizontal: 15.0),
                                      child: Text(
                                        "Link",
                                        style: textStyle(
                                            15.sm,
                                            AppFontWeights.medium,
                                            AppColors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Tab(
                                icon: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      color: selectedIndex == 2
                                          ? AppColors.primary
                                          : Colors.transparent,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 5.0,
                                        horizontal: 15.0,
                                      ),
                                      child: Text(
                                        "Files",
                                        style: textStyle(
                                            15.sm,
                                            AppFontWeights.medium,
                                            AppColors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              screens[selectedIndex],
                            ],
                          ),
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
}

Widget media() {
  return Padding(
    padding: const EdgeInsets.only(right: 7, left: 7),
    child: Container(
      width: Get.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
        color: Color(0xFF101316),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: ListView.separated(
            shrinkWrap: true,
            primary: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(3),
                          child: Image.asset(
                            'assets/mediaaa.png',
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(3),
                          child: Image.asset(
                            'assets/mediaaa.png',
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(3),
                          child: Image.asset(
                            'assets/mediaaa.png',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
            separatorBuilder: (context, index) => Container(
                  height: 2,
                ),
            itemCount: 10),
      ),
    ),
  );
}

Widget links() {
  return Padding(
    padding: const EdgeInsets.only(right: 7, left: 7),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
        color: Color(0xFf101316),
      ),
      child: ListView.separated(
          shrinkWrap: true,
          primary: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) => ListTile(
                leading: SvgPicture.asset('assets/pdf.svg'),
                title: Text(
                  "NapsternetV (@Capoit)",
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  "7.9 KB, 14.10.23 at 21:43",
                  style: TextStyle(color: Color(0xFF888888)),
                ),
              ),
          separatorBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: dividerWidgett(),
              ),
          itemCount: 10),
    ),
  );
}

Widget files() {
  return Padding(
    padding: EdgeInsets.only(right: 7, left: 7),
    child: Container(
      decoration: BoxDecoration(
        color: Color(0xFf101316),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      child: ListView.separated(
          shrinkWrap: true,
          primary: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) => ListTile(
                leading: SvgPicture.asset('assets/t.svg'),
                title: Text(
                  "Reality",
                  style: TextStyle(
                      color: Colors.white, fontWeight: AppFontWeights.bold),
                ),
                subtitle: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "https://dribbble.com/shots/21035694-Strix",
                        style: TextStyle(color: Color(0xFF888888)),
                      ),
                      Text(
                        "https://dribbble.com/shots/21035694-Strix",
                        style: TextStyle(color: Color(0xFF888888)),
                      ),
                      Text(
                        "https://dribbble.com/shots/21035694-Strix",
                        style: TextStyle(color: Color(0xFF888888)),
                      ),
                      Text(
                        "https://dribbble.com/shots/21035694-Strix",
                        style: TextStyle(color: Color(0xFF888888)),
                      ),
                    ]),
              ),
          separatorBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: dividerWidgett(),
              ),
          itemCount: 10),
    ),
  );
}
