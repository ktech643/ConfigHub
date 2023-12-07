import 'package:demo/themes/colors.dart';
import 'package:demo/themes/style.dart';
import 'package:demo/themes/weights.dart';
import 'package:demo/utilities/constants.dart';
import 'package:demo/utilities/screen_navigator.dart';
import 'package:demo/views/user_end/bottomsheet.dart';
import 'package:demo/views/user_end/collection_screen.dart';
import 'package:demo/views/user_end/hubs_screen.dart';
import 'package:demo/views/user_end/widget/social_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../home/search.dart';

class HubDetailScreen extends StatefulWidget {
  const HubDetailScreen({Key? key}) : super(key: key);

  @override
  State<HubDetailScreen> createState() => _HubDetailScreenState();
}

class _HubDetailScreenState extends State<HubDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF201F24),
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Color(0xFF201F24),
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: InkWell(
            child: Icon(
              Icons.arrow_back,
              size: 30.sp,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ),
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.home_sharp,
                size: 30.sp,
              ),
              SizedBox(
                width: 10.w,
              ),
              Text(
                "ConfigHub",
                style: textStyle(20.sm, AppFontWeights.medium, AppColors.white),
              ),
            ],
          ),
        ),
        elevation: 0.0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
              child: Icon(
                Icons.search_sharp,
                size: 30.sp,
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SearchScreen(),
                    ));
              },
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Container(
          decoration: BoxDecoration(
              color: Color(0xFF101316),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              )),
          width: AppConstants.screenWidth,
          height: AppConstants.screenHeight,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  height: 200.h,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/media.png'),
                    fit: BoxFit.cover,
                  )),
                  child: Icon(
                    Icons.play_circle,
                    size: 50.sp,
                    color: AppColors.white,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    Text(
                      "Semptember 22 at 20pm",
                      style: textStyle(
                          12.sm, AppFontWeights.normal, AppColors.color999999),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    Text(
                      "How to set up worldhub ON YOUR DEVICE",
                      style: textStyle(
                          17.sm, AppFontWeights.medium, AppColors.white),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "By John bot",
                      style: textStyle(
                          12.sm, AppFontWeights.normal, AppColors.color999999),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.thumb_up_rounded,
                              size: 15.sp,
                              color: AppColors.color999999,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              "10.k",
                              style: textStyle(12.sm, AppFontWeights.normal,
                                  AppColors.color999999),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        //

                        // Bottom Sheet Start   //

                        InkWell(
                          onTap: () {
                            ShowBottomSheet(context: context);
                          },

                          // Bottom Sheet Complete

                          //
                          child: Container(
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                    padding: const EdgeInsets.only(top: 3),
                                    child: SvgPicture.asset(
                                      'assets/message.svg',
                                      height: 12,
                                      width: 12,
                                      fit: BoxFit.scaleDown,
                                    )),
                                SizedBox(
                                  width: 2,
                                ),
                                Text(
                                  "1200",
                                  style: textStyle(12.sm, AppFontWeights.normal,
                                      AppColors.color999999),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SvgPicture.asset('assets/share.svg',
                                height: 12, width: 12, fit: BoxFit.scaleDown),
                            Text(
                              "Share",
                              style: textStyle(12.sm, AppFontWeights.normal,
                                  AppColors.color999999),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: InkWell(
                        child: Icon(
                          Icons.bookmark_rounded,
                          size: 25.sp,
                          color: AppColors.color999999,
                        ),
                        onTap: () {
                          ShowBottomSheetbbokmark(context: context);
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40.h,
                ),
                Row(
                  children: [
                    Text(
                      "Whats New",
                      style: textStyle(
                          17.sm, AppFontWeights.medium, AppColors.white),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  "Lorem Ipsum is simply dummy text of the printing and industry. Lorem Ipsum is simply dummy text of the printing and industry. Lorem Ipsum is simply dummy text of the printing and industry.",
                  style: textStyle(
                      14.sm, AppFontWeights.normal, AppColors.color999999),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget commntwidget() {
  return Container(
    color: Color(0xFF17181C),
    width: AppConstants.screenWidth,
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Container(
                width: 70.sp,
                height: 70.sp,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/profile.png'),
                      fit: BoxFit.fill,
                    )),
              ),
              SizedBox(
                width: 10.w,
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: AppConstants.screenWidth * 0.75,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Methew Andrew Tat",
                          style: textStyle(
                              17.sm, AppFontWeights.medium, AppColors.white),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            "12:23 PM",
                            style: textStyle(12.sm, AppFontWeights.normal,
                                AppColors.color999999),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  SizedBox(
                    width: AppConstants.screenWidth * 0.7,
                    child: Text(
                      "Lorem Ipsum is simply dummy text of the printing and industry.",
                      style: textStyle(
                          14.sm, AppFontWeights.normal, AppColors.color999999),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    ),
  );
}

Widget dividerWidget() {
  return Column(
    children: [
      Divider(
        color: Colors.black,
        height: 1,
      ),
      Divider(
        color: Colors.white,
        height: 1,
        thickness: 0.10,
      ),
    ],
  );
}

Widget listTileWidgett() {
  return Expanded(
    child: ListView.builder(
      itemBuilder: (context, index) => Container(
        color: Color(0xFF17181C),
        width: AppConstants.screenWidth,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Container(
                    width: 70.sp,
                    height: 70.sp,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/profile.png'),
                          fit: BoxFit.fill,
                        )),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: AppConstants.screenWidth * 0.75,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Methew Andrew Tat",
                              style: textStyle(17.sm, AppFontWeights.medium,
                                  AppColors.white),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Text(
                                "12:23 PM",
                                style: textStyle(12.sm, AppFontWeights.normal,
                                    AppColors.color999999),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      SizedBox(
                        width: AppConstants.screenWidth * 0.7,
                        child: Text(
                          "Lorem Ipsum is simply dummy text of the printing and industry.",
                          style: textStyle(14.sm, AppFontWeights.normal,
                              AppColors.color999999),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

Widget messageSendWidget() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Row(
      children: [
        Container(
          height: 30,
          width: 30,
          decoration:
              BoxDecoration(color: Color(0xFFD6D6D6), shape: BoxShape.circle),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: SizedBox(
            height: 30,
            child: TextField(
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xE8E8E8)),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xE8E8E8),
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  contentPadding: EdgeInsets.only(left: 10),
                  hintText: "Enter Message",
                  hintStyle: TextStyle(
                    color: Color(0xFFBDBDBD),
                  ),
                  filled: true,
                  fillColor: Colors.white),
            ),
          ),
        ),
        SizedBox(width: 10),
        Container(
          height: 30,
          width: 30,
          decoration:
              BoxDecoration(color: Color(0xFF32B5AD), shape: BoxShape.circle),
          child: SvgPicture.asset(
            'assets/next.svg',
            height: 20,
            width: 20,
            fit: BoxFit.scaleDown,
          ),
        ),
      ],
    ),
  );
}

Future ShowBottomSheet({BuildContext? context}) {
  return showModalBottomSheet(
      context: context!,
      elevation: 0,
      backgroundColor: Color(0xFF17181C),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(25.0),
        ),
      ),
      builder: (BuildContext context) {
        return CustomBottomSheet();
      });
}

Future ShowBottomSheetbbokmark({BuildContext? context}) {
  return showModalBottomSheet(
      enableDrag: true,
      context: context!,
      elevation: 1,
      barrierColor: Colors.transparent,
      // backgroundColor: Color(0xFF101316),
      backgroundColor: Color(0xFF201F24),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(25.0),
        ),
      ),
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
              color: Color(0xFF101316),
            ),
            height: Get.height / 1.20,
            width: Get.width,
            child: Column(
              children: [
                Container(
                  height: 110,
                  decoration: BoxDecoration(
                    color: Color(0xFF323232),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 5,
                        width: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color(0xFF9D9D9D),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Center(
                          child: ListTile(
                              title: Text(
                                "New Collections",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text("Public",
                                  style: TextStyle(color: Color(0xFF9D9D9D))),
                              minLeadingWidth: 0,
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 5),
                              leading: CircleAvatar(
                                radius: 30,
                                backgroundImage: AssetImage("assets/piccc.png"),
                              ),
                              trailing:
                                  SvgPicture.asset('assets/bookmark.svg')),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Collections",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                      InkWell(
                        child: Text(
                          "New Collection",
                          style: TextStyle(
                              color: Color(0xFF9D9D9D),
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                        onTap: () {
                          showDialoguetext(context: context);
                        },
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Container(
                      // width: Get.width,
                      decoration: BoxDecoration(
                        color: Color(0xFF101316),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: ListView.builder(
                          itemBuilder: (context, index) => InkWell(
                            onTap: () {
                              push(CollectionScreen(), '');
                            },
                            child: Column(
                              children: [
                                Container(
                                  height: 65,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF101316),
                                  ),
                                  child: Center(
                                    child: ListTile(
                                      horizontalTitleGap: 5,
                                      minLeadingWidth: 0,
                                      contentPadding:
                                          EdgeInsets.symmetric(horizontal: 5),
                                      leading: CircleAvatar(
                                        backgroundImage:
                                            AssetImage('assets/profile.png'),
                                        radius: 30,
                                      ),
                                      title: Text(
                                        "ConfigHub",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                dividerWidget(),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      });
}

Future showDialoguetext({BuildContext? context}) {
  return showDialog(
    context: context!,
    builder: (context) {
      return AlertDialog(
        contentPadding: EdgeInsets.all(0),
        insetPadding: EdgeInsets.all(0),
        backgroundColor: Colors.transparent,
        content: Padding(
          padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
          child: Container(
            height: MediaQuery.of(context).size.height / 1.2,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15)),
                color: Colors.transparent),
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 10),
                        child: TextButton(
                          onPressed: () {
                            pop();
                          },
                          child: Text(
                            'Cancel',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, right: 10),
                        child: TextButton(
                          onPressed: () {
                            pop();
                          },
                          child: Text(
                            'Save',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    height: Get.height,
                    width: Get.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color(0xff201F24),
                            ),
                            height: 130,
                            width: MediaQuery.of(context).size.width,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 10, left: 15, right: 15),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 10),
                                    child: TextField(
                                      style: TextStyle(color: Colors.white),
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: 'Collection Name',
                                          hintStyle:
                                              TextStyle(color: Colors.white)),
                                    ),
                                  ),
                                  dividerWidget(),
                                  TextField(
                                    style: TextStyle(color: Colors.white),
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'ConfigHub File',
                                        hintStyle:
                                            TextStyle(color: Colors.white)),
                                  )
                                ],
                              ),
                            ),
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
      );
    },
  );
}
