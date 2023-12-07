import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:demo/utilities/constants.dart';
import 'package:demo/views/admin_channel/admin_channel_setting_page.dart';
import 'package:demo/views/admin_channel/widget/admin_channel_cell.dart';
import 'package:demo/views/create_channel/create_channel_page.dart';
import 'package:demo/views/hash_tag/hash_tag_page.dart';
import 'package:demo/views/home/list_page.dart';
import 'package:demo/views/home/preview_channal_page.dart';
import 'package:demo/views/news/news_page.dart';
import 'package:demo/views/news/widget/news_cell.dart';
import 'package:demo/views/settings/setting_page.dart';
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

class AdminChannelScreen extends StatefulWidget {
  const AdminChannelScreen({Key? key}) : super(key: key);

  @override
  _AdminChannelScreenState createState() => _AdminChannelScreenState();
}

class _AdminChannelScreenState extends State<AdminChannelScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: AppColors.background,
      drawer: Container(
        width: AppConstants.screenWidth * 0.6,
        height: AppConstants.screenHeight,
        color: AppColors.secondary,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 17.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50.h,
              ),
              InkWell(
                onTap: () {
                  navigatorKey.currentState!.push(MaterialPageRoute(
                      builder: (context) => const SettingsScreen()));
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.color7289DA,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                          width: 50.sm,
                          height: 50.sm,
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
                      width: 22.w,
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Name',
                          style: textStyle(
                              16.sm, AppFontWeights.liteBold, AppColors.white),
                        ),
                        Text(
                          'Username',
                          style: textStyle(12.sm, AppFontWeights.normal,
                              AppColors.color777777),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 23.h,
              ),
              Text(
                'Channels',
                style: textStyle(
                    12.sm, AppFontWeights.liteBold, AppColors.color7289DA),
              ),
              Container(
                height: AppConstants.screenHeight * 0.2,
                child: ListView.separated(
                    shrinkWrap: true,
                    padding: EdgeInsets.only(top: 10.h),
                    itemBuilder: (context, index) => Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppColors.white,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(1.0),
                                    child: Container(
                                      width: 40.sm,
                                      height: 40.sm,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                            image: AssetImage(
                                                'assets/profile.png'),
                                            fit: BoxFit.cover,
                                          )),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 12.w,
                                ),
                                Text(
                                  'Channel Name',
                                  style: textStyle(12.sm,
                                      AppFontWeights.liteBold, AppColors.white),
                                ),
                              ],
                            ),
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.colorDC5050,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  index.toString(),
                                  style: textStyle(10.sm,
                                      AppFontWeights.liteBold, AppColors.white),
                                ),
                              ),
                            )
                          ],
                        ),
                    separatorBuilder: (context, index) => SizedBox(
                          height: 12.h,
                        ),
                    itemCount: 15),
              ),
              SizedBox(
                height: 22.h,
              ),
              Text(
                'Favorites',
                style: textStyle(
                    12.sm, AppFontWeights.liteBold, AppColors.color7289DA),
              ),
              Container(
                height: AppConstants.screenHeight * 0.15,
                child: ListView.separated(
                    padding: EdgeInsets.only(top: 10.h),
                    shrinkWrap: true,
                    itemBuilder: (context, index) => InkWell(
                          onTap: () {
                            navigatorKey.currentState!.push(MaterialPageRoute(
                                builder: (context) => const NewsScreen()));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'News',
                                style: textStyle(16.sm, AppFontWeights.liteBold,
                                    AppColors.white),
                              ),
                              Icon(
                                Icons.star,
                                color: AppColors.colorFFD233,
                              )
                            ],
                          ),
                        ),
                    separatorBuilder: (context, index) => SizedBox(
                          height: 15.h,
                        ),
                    itemCount: 15),
              ),
              SizedBox(
                height: 22.h,
              ),
              Text(
                'Explore popular Tag',
                style: textStyle(
                    12.sm, AppFontWeights.liteBold, AppColors.color7289DA),
              ),
              Container(
                height: AppConstants.screenHeight * 0.15,
                child: ListView.separated(
                    shrinkWrap: true,
                    padding: EdgeInsets.only(top: 10.h),
                    itemBuilder: (context, index) => InkWell(
                          onTap: () {
                            navigatorKey.currentState!.push(MaterialPageRoute(
                                builder: (context) => const HashTagScreen()));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '#football',
                                style: textStyle(16.sm, AppFontWeights.liteBold,
                                    AppColors.white),
                              ),
                              Icon(
                                Icons.star_border_outlined,
                                color: AppColors.color777777,
                              )
                            ],
                          ),
                        ),
                    separatorBuilder: (context, index) => SizedBox(
                          height: 10.h,
                        ),
                    itemCount: 15),
              ),
              Expanded(child: Container()),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      navigatorKey.currentState!.push(MaterialPageRoute(
                          builder: (context) => const CreateChannelScreen()));
                    },
                    child: Container(
                      width: 50.sm,
                      height: 50.sm,
                      decoration: BoxDecoration(
                        color: AppColors.color7289DA,
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                      child: Center(
                          child: Image.asset(
                        'assets/create_channel.png',
                        width: 18.w,
                      )),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      _scaffoldKey.currentState!.closeDrawer();
                    },
                    child: Container(
                      width: 50.sm,
                      height: 50.sm,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                      child: Center(
                          child: Icon(
                        Icons.arrow_back_ios_new_outlined,
                        color: AppColors.white,
                        size: 18.w,
                      )),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 19.h,
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppColors.secondary,
        centerTitle: true,
        // leading: InkWell(
        //   onTap: ()=>navigatorKey.currentState!.pop(),
        //   child: Center(child: Icon(Icons.arrow_back,color: AppColors.white,size: 25.sm,)),
        // ),
        actions: [
          InkWell(
            onTap: () {
              navigatorKey.currentState!.push(MaterialPageRoute(
                  builder: (context) => const AdminChannelSettingScreen()));
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Icon(
                Icons.settings,
                color: AppColors.white,
                size: 25.sm,
              ),
            ),
          )
        ],
        title: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Channel Name',
              style: textStyle(16.sm, AppFontWeights.liteBold, AppColors.white),
            ),
            Text(
              '1234 Members',
              style: textStyle(
                  12.sm, AppFontWeights.normal, AppColors.color7289DA),
            ),
          ],
        ),
      ),
      body: Container(
        width: AppConstants.screenWidth,
        height: AppConstants.screenHeight,
        child: Row(
          children: [
            Container(
              width: 70.w,
              height: AppConstants.screenHeight,
              decoration: const BoxDecoration(
                color: AppColors.secondary,
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: AppConstants.screenHeight * 0.68,
                      child: ListView.separated(
                          shrinkWrap: true,
                          itemBuilder: (context, index) => Container(
                                width: 50.sm,
                                height: 50.sm,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: AssetImage('assets/profile.png'),
                                      fit: BoxFit.cover,
                                    )),
                              ),
                          separatorBuilder: (context, index) => SizedBox(
                                height: 10.h,
                              ),
                          itemCount: 15),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        InkWell(
                          onTap: () {
                            navigatorKey.currentState!.push(MaterialPageRoute(
                                builder: (context) =>
                                    const CreateChannelScreen()));
                          },
                          child: Container(
                            width: 50.sm,
                            height: 50.sm,
                            decoration: BoxDecoration(
                              color: AppColors.color7289DA,
                              borderRadius: BorderRadius.circular(15.r),
                            ),
                            child: Center(
                                child: Image.asset(
                              'assets/create_channel.png',
                              width: 18.w,
                            )),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            _scaffoldKey.currentState!.openDrawer();
                          },
                          child: Container(
                            width: 50.sm,
                            height: 50.sm,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.r),
                            ),
                            child: Center(
                                child: Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: AppColors.white,
                              size: 18.w,
                            )),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: AppColors.color7289DA,
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.w, vertical: 10.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Pinned Message',
                                    style: textStyle(
                                        12.sm,
                                        AppFontWeights.liteBold,
                                        AppColors.black),
                                  ),
                                  SizedBox(
                                    width: 250.w,
                                    child: Text(
                                      'nbsfsbf sdfdsbfskd jnf sd fsd fs f f shf s fsj fs fsd f fsjdf dsfs jdfs b dshf sfc sdf dsf sdhf sf',
                                      style: textStyle(
                                          14.sm,
                                          AppFontWeights.normal,
                                          AppColors.white),
                                    ),
                                  ),
                                ],
                              ),
                              Image.asset(
                                'assets/pin.png',
                                width: 17,
                              )
                            ],
                          ),
                        ),
                      ),
                      AdminChannelCell(),
                      AdminChannelCell(
                        isImage: true,
                      ),
                      AdminChannelCell(
                        isOnlyText: true,
                      ),
                      AdminChannelCell(
                        isOnlyText: true,
                      ),
                      AdminChannelCell(
                        isOnlyText: true,
                      ),
                      AdminChannelCell(
                        isOnlyText: true,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
          decoration: BoxDecoration(
            color: AppColors.secondary,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15.r),
                topRight: Radius.circular(15.r)),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
            child: TextFormField(
              // focusNode: focusNode,
              onChanged: (value) {},
              textInputAction: TextInputAction.send,
              // controller: _searchCtr,
              enableSuggestions: false,
              autocorrect: false,
              cursorColor: Colors.grey,
              keyboardType: TextInputType.text,
              style: textStyle(
                  19.sm, AppFontWeights.medium, AppColors.color999999),
              onFieldSubmitted: (value) {},
              decoration: InputDecoration(
                border: myinputborder(),
                errorBorder: myinputborder(),
                disabledBorder: myinputborder(),
                focusedBorder: myinputborder(),
                enabledBorder: myfocusborder(),
                hintText: 'Send a message',
                hintStyle: TextStyle(
                  color: AppColors.color999999,
                ),
                contentPadding: EdgeInsets.zero,
                suffixIcon: InkWell(
                  onTap: () async {},
                  child: Icon(
                    Icons.attach_file_outlined,
                    color: AppColors.white.withOpacity(0.5),
                  ),
                ),
                prefixIcon: InkWell(
                  onTap: () async {
                    // buildSticker();
                  },
                  child: Icon(
                    Icons.emoji_emotions_rounded,
                    color: AppColors.white.withOpacity(0.5),
                  ),
                ),
                filled: true,
                fillColor: AppColors.background,
                focusColor: AppColors.background,
                hoverColor: AppColors.background,
              ),
            ),
          )),
    );
  }
}
