import 'package:demo/themes/colors.dart';
import 'package:demo/themes/style.dart';
import 'package:demo/themes/weights.dart';
import 'package:demo/utilities/constants.dart';
import 'package:demo/utilities/screen_navigator.dart';
import 'package:demo/views/home/drawer.dart';
import 'package:demo/views/public_profile/profile_chose.dart';
import 'package:demo/views/user_end/hubs_details_page.dart';
import 'package:demo/views/user_end/widget/jointed_card.dart';
import 'package:demo/views/user_end/widget/social_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../chat/open_chat.dart';
import 'bottomsheet.dart';

class HubsScreen extends StatefulWidget {
  const HubsScreen({Key? key}) : super(key: key);

  @override
  State<HubsScreen> createState() => _HubsScreenState();
}

class _HubsScreenState extends State<HubsScreen> {
  int selectedIndex = 0;
  List<Widget> screens = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    screens = [
      foryou(),
      joined(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF201F24),
      // backgroundColor: const Color(0xFF101316),
      body: DefaultTabController(
        length: 2,
        initialIndex: selectedIndex,
        child: SizedBox(
          width: AppConstants.screenWidth,
          height: AppConstants.screenHeight,
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
                                "For You",
                                style: textStyle(15.sm, AppFontWeights.medium,
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
                                "Joined",
                                style: textStyle(15.sm, AppFontWeights.medium,
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
                  child: screens[selectedIndex],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: selectedIndex == 1
          ? Padding(
              padding: const EdgeInsets.only(left: 30, bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      ShowBottomSheet(
                        context: context,
                      );
                    },
                    child: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                      child: Icon(
                        Icons.add,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            )
          : Container(),
    );
  }

  Widget foryou() {
    return Container(
      height: Get.height,
      width: Get.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            color: const Color(0xFF101316),
          ),
          width: Get.width,
          child: ListView.separated(
              shrinkWrap: true,
              primary: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) => const SocialCard(),
              separatorBuilder: (context, index) => Container(),
              itemCount: 10),
        ),
      ),
    );
  }

  Widget joined() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
          color: const Color(0xFF101316),
        ),
        width: Get.width,
        child: ListView.separated(
            shrinkWrap: true,
            primary: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                      ),
                      child: const JoinedCard()),
                ),
            separatorBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: dividerWidgett(),
                ),
            //  Divider(
            //       color: AppColors.color666666,
            //       height: 0,
            //     ),
            itemCount: 10),
      ),
    );
  }
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
      return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            color: Color(0xFF17181C)),
        height: Get.height / 6,
        width: Get.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: InkWell(
                    onTap: () {
                      push(ChoseMembersScreen(), '');
                    },
                    child: myContainerr(
                        svgg: "assets/hub.svg", txtt: "Create Hub")),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    push(OpenChatScreen(), '');
                  },
                  child: myContainerr(
                      svgg: "assets/chatt.svg", txtt: "Create Chat"),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}

Widget myContainerr({txtt, svgg}) {
  return Container(
      height: 50,
      //  width: Get.width / 2.50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFF32B5AD),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 20,
          ),
          SvgPicture.asset(
            svgg ?? 'assets/hub.svg',
            height: 15,
            width: 15,
            fit: BoxFit.scaleDown,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            txtt ?? "Create Hub",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ],
      ));
}
