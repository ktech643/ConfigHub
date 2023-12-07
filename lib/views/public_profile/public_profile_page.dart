import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:demo/utilities/constants.dart';
import 'package:demo/utilities/helper_ui.dart';
import 'package:demo/views/admin_channel/admin_page.dart';
import 'package:demo/views/admin_channel/member_page.dart';
import 'package:demo/views/admin_channel/remove_user_page.dart';
import 'package:demo/views/home/list_page.dart';
import 'package:demo/views/home/preview_channal_page.dart';
import 'package:demo/views/news/news_page.dart';
import 'package:demo/views/onboarding/onboarding_page.dart';
import 'package:demo/views/public_profile/widget/public_profile_dialog.dart';
import 'package:demo/views/settings/widget/notification_bottom_sheet.dart';
import 'package:flutter/cupertino.dart';
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

class PublicProfileScreen extends StatefulWidget {
  const PublicProfileScreen({Key? key}) : super(key: key);

  @override
  _PublicProfileScreenState createState() => _PublicProfileScreenState();
}

class _PublicProfileScreenState extends State<PublicProfileScreen> {
  bool media = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppColors.secondary,
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
              navigatorKey.currentState!.push(
                  MaterialPageRoute(builder: (context) => const NewsScreen()));
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Image.asset(
                'assets/dot.png',
                width: 20.w,
              ),
            ),
          )
        ],
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
                ],
              ),
              Text(
                '8.942 subscribers',
                style: textStyle(14.sm, AppFontWeights.normal, AppColors.white),
              ),
              SizedBox(
                height: 22.h,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.secondary,
                  borderRadius: BorderRadius.circular(15.r),
                ),
                child:  Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    "📈The Nation’s #1 Life & Business Strategist\n"+
                    "📚NYT Bestselling Author\n"+
                          ".\n"+
                  "👇NEW PODCAST with Ray Dalio\n"+
                  "youtu.be/q3hdisdjB",
                    style: textStyle(
                        14.sm,
                        AppFontWeights.normal,
                        AppColors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 22.h,
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        media = true;
                      });
                    },
                    child: SizedBox(
                      width: AppConstants.screenWidth * 0.5 - 20.h,
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.h),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Media',
                              style: textStyle(
                                  14.sm,
                                  AppFontWeights.normal,
                                  media
                                      ? AppColors.white
                                      : AppColors.color666666),
                            ),
                            Container(
                              height: 8.h,
                              width: 15.w,
                              decoration: BoxDecoration(
                                color: media
                                    ? AppColors.color7289DA
                                    : AppColors.background,
                                borderRadius: BorderRadius.circular(15.r),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        media = false;
                      });
                    },
                    child: SizedBox(
                      width: AppConstants.screenWidth * 0.5 - 20.h,
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.h),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'File',
                              style: textStyle(
                                  14.sm,
                                  AppFontWeights.normal,
                                  !media
                                      ? AppColors.white
                                      : AppColors.color666666),
                            ),
                            Container(
                              height: 8.h,
                              width: 15.w,
                              decoration: BoxDecoration(
                                color: !media
                                    ? AppColors.color7289DA
                                    : AppColors.background,
                                borderRadius: BorderRadius.circular(15.r),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  child: media
                      ? GridView.builder(
                          shrinkWrap: true,
                          padding: EdgeInsets.only(top: 20.h),
                          itemCount: 9,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                          ),
                          itemBuilder: (context, index) => InkWell(
                            onTap: (){
                              showDialogModel(context, PublicProfileDialog());
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Container(
                                width: 84.sm,
                                height: 84.sm,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.r),
                                    image: DecorationImage(
                                      image: AssetImage('assets/media.png'),
                                      fit: BoxFit.cover,
                                    )),
                              ),
                            ),
                          ),
                        )
                      : ListView.separated(
                          shrinkWrap: true,
                          padding: EdgeInsets.only(top: 20.h),
                          itemBuilder: (context, index) => Container(
                                decoration: BoxDecoration(
                                  color: AppColors.secondary,
                                  borderRadius: BorderRadius.circular(15.r),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 10.h, horizontal: 15.w),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Container(
                                            width: 47.sm,
                                            height: 47.sm,
                                            decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: AppColors.color7289DA),
                                            child: Padding(
                                              padding: EdgeInsets.all(10.sm),
                                              child: const Icon(
                                                Icons.file_present_rounded,
                                                color: AppColors.white,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 15.w,
                                          ),
                                          Column(
                                            children: [
                                              Text(
                                                'file name',
                                                style: textStyle(
                                                    14.sm,
                                                    AppFontWeights.liteBold,
                                                    AppColors.white),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Text(
                                                    'Size  ',
                                                    style: textStyle(
                                                        12.sm,
                                                        AppFontWeights.normal,
                                                        AppColors.color999999),
                                                  ),
                                                  Container(
                                                    width: 5.sm,
                                                    height: 5.sm,
                                                    decoration:
                                                        const BoxDecoration(
                                                            shape:
                                                                BoxShape.circle,
                                                            color: AppColors
                                                                .color999999),
                                                  ),
                                                  Text(
                                                    '  2MB',
                                                    style: textStyle(
                                                        12.sm,
                                                        AppFontWeights.medium,
                                                        AppColors.color999999),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(3.0),
                                        child: Icon(
                                          Icons.download_for_offline_outlined,
                                          color: AppColors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                          separatorBuilder: (context, index) => SizedBox(
                                height: 10.h,
                              ),
                          itemCount: 3),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
