import 'package:demo/themes/colors.dart';
import 'package:demo/themes/style.dart';
import 'package:demo/themes/weights.dart';
import 'package:demo/utilities/constants.dart';
import 'package:demo/views/home/search.dart';
import 'package:demo/views/public_profile/profile_chose.dart';
import 'package:demo/views/user_end/widget/jointed_card.dart';
import 'package:demo/views/user_end/widget/social_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'drawer.dart';

class Media_Link_Screen extends StatefulWidget {
  const Media_Link_Screen({Key? key}) : super(key: key);

  @override
  State<Media_Link_Screen> createState() => _Media_Link_ScreenState();
}

class _Media_Link_ScreenState extends State<Media_Link_Screen> {
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
    return Scaffold(
      floatingActionButton: selectedIndex == 0
          ? Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.add,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            )
          : Container(),
      drawer: MyDrawer(),
      backgroundColor: Color(0xFF201F24),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
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
        padding: const EdgeInsets.only(top: 20),
        child: DefaultTabController(
          length: 3,
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
                                  "Media",
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
                                  "Link",
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
    );
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
