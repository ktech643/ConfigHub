import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:demo/utilities/constants.dart';
import 'package:demo/views/admin_channel/admin_channel_setting_page.dart';
import 'package:demo/views/admin_channel/widget/admin_channel_cell.dart';
import 'package:demo/views/create_channel/create_channel_page.dart';
import 'package:demo/views/home/list_page.dart';
import 'package:demo/views/home/preview_channal_page.dart';
import 'package:demo/views/news/widget/news_cell.dart';
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

class AdminChannelSettingAnalyticsScreen extends StatefulWidget {
  const AdminChannelSettingAnalyticsScreen({Key? key}) : super(key: key);

  @override
  _AdminChannelSettingAnalyticsScreenState createState() =>
      _AdminChannelSettingAnalyticsScreenState();
}

class _AdminChannelSettingAnalyticsScreenState
    extends State<AdminChannelSettingAnalyticsScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  List topCat = [
    'Last 7 Days',
    'Last 30 Days',
    'Last 1 Year',
  ];
  var data = [3.0, 3.0, 3.5, 2.0, 3.0, 0.0, -3.5, -1.0, -0.5, 3.0, 0.0];
  var data2 = [0.1, 1.4, 2.5, 2.9, 2.0, 2.0, -1.5, -1.9, -1.5, 2.0, 2.0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: AppColors.background,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppColors.secondary,
        centerTitle: true,
        // leading: InkWell(
        //   onTap: ()=>navigatorKey.currentState!.pop(),
        //   child: Center(child: Icon(Icons.arrow_back,color: AppColors.white,size: 25.sm,)),
        // ),

        title: Text(
          'Analytics',
          style: textStyle(16.sm, AppFontWeights.liteBold, AppColors.white),
        ),
      ),
      body: Container(
          width: AppConstants.screenWidth,
          height: AppConstants.screenHeight,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.w),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: 35.h,
                      ),
                      Container(
                        height: 40.h,
                        child: ListView.separated(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) => Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30.r),
                                    color: AppColors.secondary,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 20.w, vertical: 10.h),
                                    child: Text(
                                      topCat[index].toString(),
                                      style: textStyle(
                                          14.sm,
                                          AppFontWeights.normal,
                                          AppColors.white),
                                    ),
                                  ),
                                ),
                            separatorBuilder: (context, index) => SizedBox(
                                  width: 20.w,
                                ),
                            itemCount: topCat.length),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Image.asset('assets/calunderr.png'),
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        children: [
                          Text(
                            'Percentage for period',
                            style: textStyle(14.sm, AppFontWeights.liteBold,
                                AppColors.white),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                width: 10.sm,
                                height: 10.sm,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.color76CE8F,
                                ),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                'Followers',
                                style: textStyle(14.sm, AppFontWeights.normal,
                                    AppColors.white.withOpacity(0.5)),
                              ),
                            ],
                          ),
                          Text(
                            '4200',
                            style: textStyle(
                                14.sm, AppFontWeights.normal, AppColors.white),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                width: 10.sm,
                                height: 10.sm,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.color7289DA,
                                ),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                'Unfollowers',
                                style: textStyle(14.sm, AppFontWeights.normal,
                                    AppColors.white.withOpacity(0.5)),
                              ),
                            ],
                          ),
                          Text(
                            '4200',
                            style: textStyle(
                                14.sm, AppFontWeights.normal, AppColors.white),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                width: 10.sm,
                                height: 10.sm,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.colorDC5050,
                                ),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                'Overall',
                                style: textStyle(14.sm, AppFontWeights.normal,
                                    AppColors.white.withOpacity(0.5)),
                              ),
                            ],
                          ),
                          Text(
                            '4200',
                            style: textStyle(14.sm, AppFontWeights.liteBold,
                                AppColors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: AppColors.secondary,
                  height: 50.h,
                  thickness: 10.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Percentage for data',
                            style: textStyle(14.sm, AppFontWeights.liteBold,
                                AppColors.white),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 29.h,
                      ),
                      Container(
                        width: double.infinity,
                        height: 127.h,
                        child: Stack(
                          children: [
                            Positioned.fill(
                              child: Sparkline(
                                data: data,
                                lineWidth: 5,
                                lineColor: AppColors.colorDC5050,
                                fillMode: FillMode.below,
                                fillGradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    AppColors.colorDC5050,
                                    AppColors.colorDC5050.withOpacity(0.5)
                                  ],
                                ),
                              ),
                            ),
                            Positioned.fill(
                              child: Sparkline(
                                data: data2,
                                lineWidth: 5,
                                gridLinelabelPrefix: '\$',
                                gridLineLabelPrecision: 3,
                                enableGridLines: true,
                                lineColor:
                                    AppColors.color76CE8F.withOpacity(0.5),
                                fillMode: FillMode.below,
                                kLine: ['max', 'min', 'first', 'last'],
                                fillGradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    AppColors.color76CE8F,
                                    AppColors.color76CE8F.withOpacity(0.5)
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      Text(
                        'Review for date',
                        style: textStyle(12.sm, AppFontWeights.normal,
                            AppColors.white.withOpacity(0.5)),
                      ),
                      Text(
                        'Monday, Sep 14. 2022.',
                        style: textStyle(
                            14.sm, AppFontWeights.normal, AppColors.white),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                width: 10.sm,
                                height: 10.sm,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.color76CE8F,
                                ),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                'Followers',
                                style: textStyle(14.sm, AppFontWeights.normal,
                                    AppColors.white.withOpacity(0.5)),
                              ),
                            ],
                          ),
                          Text(
                            '4200',
                            style: textStyle(
                                14.sm, AppFontWeights.normal, AppColors.white),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                width: 10.sm,
                                height: 10.sm,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.color7289DA,
                                ),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                'Unfollowers',
                                style: textStyle(14.sm, AppFontWeights.normal,
                                    AppColors.white.withOpacity(0.5)),
                              ),
                            ],
                          ),
                          Text(
                            '4200',
                            style: textStyle(
                                14.sm, AppFontWeights.normal, AppColors.white),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                width: 10.sm,
                                height: 10.sm,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.colorDC5050,
                                ),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                'Overall',
                                style: textStyle(14.sm, AppFontWeights.normal,
                                    AppColors.white.withOpacity(0.5)),
                              ),
                            ],
                          ),
                          Text(
                            '4200',
                            style: textStyle(14.sm, AppFontWeights.liteBold,
                                AppColors.white),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
