import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:demo/utilities/constants.dart';
import 'package:demo/views/admin_channel/admin_channel_setting_analytics_page.dart';
import 'package:demo/views/admin_channel/admin_page.dart';
import 'package:demo/views/admin_channel/member_page.dart';
import 'package:demo/views/admin_channel/remove_user_page.dart';
import 'package:demo/views/home/list_page.dart';
import 'package:demo/views/home/preview_channal_page.dart';
import 'package:demo/views/news/news_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../../main.dart';
import '../../network/api_caller.dart';
import '../../themes/colors.dart';
import '../../themes/style.dart';
import '../../themes/weights.dart';
import '../../widgets/button.dart';
import '../../widgets/text_field.dart';
import '../bottom_nav_bar/bottom_nav_bar_page.dart';

class AdminChannelSettingScreen extends StatefulWidget {
  const AdminChannelSettingScreen({Key? key}) : super(key: key);

  @override
  _AdminChannelSettingScreenState createState() =>
      _AdminChannelSettingScreenState();
}

class _AdminChannelSettingScreenState extends State<AdminChannelSettingScreen> {
  List items = [
    {
      'image': 'assets/admin.png',
      'title': 'Administrators   •   ',
      'count': '10'
    },
    {'image': 'assets/member.png', 'title': 'Members   •   ', 'count': '110'},
    {
      'image': 'assets/rejectt.png',
      'title': 'Removed users   •   ',
      'count': '150'
    },
    {'image': 'assets/delete.png', 'title': 'DELETE CHANNEL', 'count': ''},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppColors.secondary,
        centerTitle: true,
        leading: InkWell(
          onTap: () => navigatorKey.currentState!.pop(),
          child: Center(
              child: Icon(
            Icons.arrow_back,
            color: AppColors.white,
            size: 25.sm,
          )),
        ),
        actions: [
          InkWell(
            onTap: () {
              navigatorKey.currentState!.push(MaterialPageRoute(
                  builder: (context) =>
                      const AdminChannelSettingAnalyticsScreen()));
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Icon(
                Icons.signal_cellular_alt,
                color: AppColors.color7289DA,
                size: 25.sm,
              ),
            ),
          )
        ],
        title: Text(
          'Channel Settings',
          style: textStyle(16.sm, AppFontWeights.liteBold, AppColors.white),
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
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.color7289DA,
                ),
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
                    'Channel Name',
                    style: textStyle(
                        20.sm, AppFontWeights.liteBold, AppColors.white),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Icon(
                    Icons.edit,
                    color: AppColors.white,
                  ),
                ],
              ),
              Text(
                '8.942 subscribers',
                style: textStyle(14.sm, AppFontWeights.normal, AppColors.white),
              ),
              SizedBox(
                height: 22.h,
              ),
              ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) => Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: AppColors.secondary,
                          borderRadius: BorderRadius.circular(15.r),
                        ),
                        child: InkWell(
                          onTap: () {
                            if (index == 0)
                              navigatorKey.currentState!.push(MaterialPageRoute(
                                  builder: (context) => const MemberScreen()));
                            else if (index == 1)
                              navigatorKey.currentState!.push(MaterialPageRoute(
                                  builder: (context) => const AdminScreen()));
                            else if (index == 2)
                              navigatorKey.currentState!.push(MaterialPageRoute(
                                  builder: (context) => RemoveUserScreen()));
                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.w, vertical: 15.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Image.asset(items[index]['image'],
                                        width: 24.w),
                                    SizedBox(
                                      width: 20.w,
                                    ),
                                    Text(
                                      items[index]['title'],
                                      style: textStyle(
                                          14.sm,
                                          AppFontWeights.normal,
                                          AppColors.white),
                                    ),
                                    Text(
                                      items[index]['count'],
                                      style: textStyle(
                                          14.sm,
                                          AppFontWeights.liteBold,
                                          AppColors.white),
                                    ),
                                  ],
                                ),
                                Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: AppColors.white.withOpacity(0.5),
                                  size: 24.h,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                  separatorBuilder: (context, index) => SizedBox(
                        height: 10.h,
                      ),
                  itemCount: items.length),
              Expanded(child: Container()),
              Button(
                text: 'Save Changes',
                callback: () {},
                buttonColor: AppColors.color7289DA,
                borderColor: AppColors.color7289DA,
              )
            ],
          ),
        ),
      ),
    );
  }
}
