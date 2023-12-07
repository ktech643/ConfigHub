import 'package:demo/themes/colors.dart';
import 'package:demo/themes/style.dart';
import 'package:demo/themes/weights.dart';
import 'package:demo/utilities/constants.dart';
import 'package:demo/views/home/drawer.dart';
import 'package:demo/views/home/search.dart';
import 'package:demo/views/user_end/hubs_screen.dart';
import 'package:demo/views/user_end/widget/social_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'people_page.dart';

class UserHomeScreen extends StatefulWidget {
  const UserHomeScreen({Key? key}) : super(key: key);

  @override
  State<UserHomeScreen> createState() => _UserHomeScreenState();
}

class _UserHomeScreenState extends State<UserHomeScreen> {
  int selectedIndex = 0;
  List<Widget> screens = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    screens = [
      HubsScreen(),
      PeopleScreen(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: selectedIndex,
      child: Scaffold(
        drawer: MyDrawer(),
        backgroundColor: Color(0xFF201F24),
        appBar: AppBar(
          backgroundColor: Color(0xFF201F24),
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
                  style:
                      textStyle(20.sm, AppFontWeights.medium, AppColors.white),
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
          bottom: PreferredSize(
            preferredSize: Size(double.infinity, 100.sp),
            child: TabBar(
              indicatorColor: AppColors.primary,
              indicatorWeight: 0.0000001,
              labelColor: AppColors.white,
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
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: Text(
                          "Hubs",
                          style: textStyle(
                              20.sm,
                              AppFontWeights.medium,
                              selectedIndex == 0
                                  ? AppColors.white
                                  : AppColors.color666666),
                        ),
                      ),
                    ],
                  ),
                ),
                Tab(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: Text(
                          "People",
                          style: textStyle(
                              20.sm,
                              AppFontWeights.medium,
                              selectedIndex == 1
                                  ? AppColors.white
                                  : AppColors.color666666),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        body: screens[selectedIndex],
      ),
    );
  }
}
