import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:demo/utilities/constants.dart';
import 'package:demo/views/home/list_page.dart';
import 'package:demo/views/home/preview_channal_page.dart';
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

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List socialLogin = [
    {
      'image': 'assets/fb.png',
      'title': 'Continue with Facebook',
      'onTap': () {}
    },
    {
      'image': 'assets/google.png',
      'title': 'Continue with Google',
      'onTap': () {}
    },
    {
      'image': 'assets/twitter.png',
      'title': 'Continue with Twitter',
      'onTap': () {}
    }
  ];
  var data = [0.0, 1.0, 1.5, 2.0, 0.0, 0.0, -0.5, -1.0, -0.5, 0.0, 0.0];
  var data2 = [0.1, 1.4, 2.5, 2.9, 2.0, 2.0, -1.5, -1.9, -1.5, 2.0, 2.0];
  var _passwordCtr = TextEditingController();
  var _mobileCtr = TextEditingController();
  var _nameCtr = TextEditingController();
  var _emailCtr = TextEditingController();
  var _cityCtr = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool loader = false;

  @override
  Widget build(BuildContext context) {
    return AbsorbPointer(
      absorbing: loader,
      child: Scaffold(
        backgroundColor: AppColors.background,
        body: Form(
          key: _formKey,
          child: Container(
            width: AppConstants.screenWidth,
            height: AppConstants.screenHeight,
            color: Colors.transparent,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w),
              child: Column(
                children: [
                  SizedBox(
                    height: 82.h,
                  ),

                  Row(
                    children: [
                      Text(
                        'Hello ',
                        style: textStyle(
                            18.sm, AppFontWeights.normal, AppColors.white),
                      ),
                      Text(
                        'User Name',
                        style: textStyle(
                            18.sm, AppFontWeights.liteBold, AppColors.color7289DA),
                      ),
                      Text(
                        ',',
                        style: textStyle(
                            18.sm, AppFontWeights.normal, AppColors.white),
                      ),
                    ],
                  ),

                  Row(
                    children: [
                      Text(
                        'Welcome to admin dashboard',
                        style: textStyle(
                            18.sm, AppFontWeights.medium, AppColors.white),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 47.h,
                  ),
                  Expanded(
                    child: Container(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Container(
                              width: double.infinity,

                              decoration: BoxDecoration(
                                color: AppColors.secondary,
                                borderRadius: BorderRadius.circular(5.r),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(10.sm),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          'Quick notice',
                                          style: textStyle(
                                              14.sm, AppFontWeights.medium, AppColors.white),
                                        ),
                                        SizedBox(height: 10.h,),
                                        SizedBox(
                                          width: 300.w,
                                          child: Text(
                                            'Today, 100 new users arrived, which is 10% more than yesterday, and a total of 40 new channels was created.',
                                            style: textStyle(
                                                12.sm, FontWeight.w300, AppColors.white),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Icon(Icons.highlight_remove_rounded,color: AppColors.white,size: 20.sp,)
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 31.h,),
                            Row(
                              children: [
                                Text(
                                  'Statistic Preview',
                                  style: textStyle(
                                      14.sm, AppFontWeights.medium, AppColors.white),
                                ),
                              ],
                            ),
                            SizedBox(height: 8.h,),
                            SizedBox(
                              height: 260.sm,
                              child: Row(
                                children: [
                                  Expanded(
                                      child: Padding(
                                        padding: EdgeInsets.only(right: 10.w),
                                        child: InkWell(
                                          onTap: ()=>navigatorKey.currentState!.push(MaterialPageRoute(builder: (context)=>const ListTabScreen())),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: AppColors.color7289DA,
                                              borderRadius: BorderRadius.circular(10.r),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(horizontal: 16.w),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(height: 24.h,),
                                                  Text(
                                                    'Channels',
                                                    style: textStyle(
                                                        18.sm, AppFontWeights.medium, AppColors.white),
                                                  ),

                                                  SizedBox(height: 16.h,),
                                                  Text(
                                                    'Total channels',
                                                    style: textStyle(
                                                        12.sm, AppFontWeights.normal, AppColors.white),
                                                  ),
                                                  Text(
                                                    '1250+',
                                                    style: textStyle(
                                                        16.sm, AppFontWeights.liteBold, AppColors.white),
                                                  ),
                                                  SizedBox(height: 24.h,),
                                                  Text(
                                                    'Today created',
                                                    style: textStyle(
                                                        12.sm, AppFontWeights.normal, AppColors.white),
                                                  ),
                                                  Text(
                                                    '25',
                                                    style: textStyle(
                                                        16.sm, AppFontWeights.liteBold, AppColors.white),
                                                  ),  Text(
                                                    '10% more than yesterday',
                                                    style: textStyle(
                                                        10.sm, FontWeight.w300, AppColors.white.withOpacity(0.5)),
                                                  ),

                                                  SizedBox(height: 24.h,),
                                                  Text(
                                                    'Last 7 day created',
                                                    style: textStyle(
                                                        12.sm, AppFontWeights.normal, AppColors.white),
                                                  ),
                                                  Text(
                                                    '324',
                                                    style: textStyle(
                                                        16.sm, AppFontWeights.liteBold, AppColors.white),
                                                  ),
                                                  Text(
                                                    '2% less compared to last week',
                                                    style: textStyle(
                                                        10.sm, FontWeight.w300, AppColors.white.withOpacity(0.5)),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      )),
                                  Expanded(
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 10.w),
                                        child: InkWell(
                                          onTap: ()=>navigatorKey.currentState!.push(MaterialPageRoute(builder: (context)=>const ListTabScreen(isUser: true,))),

                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: AppColors.secondary,
                                              borderRadius: BorderRadius.circular(10.r),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(horizontal: 16.w),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(height: 24.h,),
                                                  Text(
                                                    'Users',
                                                    style: textStyle(
                                                        18.sm, AppFontWeights.medium, AppColors.white),
                                                  ),

                                                  SizedBox(height: 16.h,),
                                                  Text(
                                                    'Total user',
                                                    style: textStyle(
                                                        12.sm, AppFontWeights.normal, AppColors.white),
                                                  ),
                                                  Text(
                                                    '1250+',
                                                    style: textStyle(
                                                        16.sm, AppFontWeights.liteBold, AppColors.white),
                                                  ),
                                                  SizedBox(height: 24.h,),
                                                  Text(
                                                    'Today created',
                                                    style: textStyle(
                                                        12.sm, AppFontWeights.normal, AppColors.white),
                                                  ),
                                                  Text(
                                                    '25',
                                                    style: textStyle(
                                                        16.sm, AppFontWeights.liteBold, AppColors.white),
                                                  ),  Text(
                                                    '10% more than yesterday',
                                                    style: textStyle(
                                                        10.sm, FontWeight.w300, AppColors.white.withOpacity(0.5)),
                                                  ),

                                                  SizedBox(height: 24.h,),
                                                  Text(
                                                    'Last 7 day created',
                                                    style: textStyle(
                                                        12.sm, AppFontWeights.normal, AppColors.white),
                                                  ),
                                                  Text(
                                                    '324',
                                                    style: textStyle(
                                                        16.sm, AppFontWeights.liteBold, AppColors.white),
                                                  ),
                                                  Text(
                                                    '2% less compared to last week',
                                                    style: textStyle(
                                                        10.sm, FontWeight.w300, AppColors.white.withOpacity(0.5)),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      )),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 25.h,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Last 7 Days',
                                  style: textStyle(
                                      14.sm, AppFontWeights.normal, AppColors.white.withOpacity(0.5)),
                                ),
                              ],
                            ),
                            SizedBox(height: 10.h,),
                            Row(
                              children: [
                                Container(
                                  width: 10.sp,
                                  height: 10.sp,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: AppColors.color7289DA
                                  ),
                                ),

                                Text(
                                  ' New Channels',
                                  style: textStyle(
                                      10.sm, AppFontWeights.normal, AppColors.color7289DA),
                                ),
                                SizedBox(width: 24.w,),
                                Container(
                                  width: 10.sp,
                                  height: 10.sp,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: AppColors.color7289DA.withOpacity(0.5)
                                  ),
                                ),
                                Text(
                                  ' New Users',
                                  style: textStyle(
                                      10.sm, AppFontWeights.normal, AppColors.color7289DA.withOpacity(0.5)),
                                ),
                              ],
                            ),
                            SizedBox(height: 20.h,),
                            Container(
                              width:double.infinity,
                              height: 127.h,
                              child: Stack(
                                children: [
                                  Positioned.fill(
                                    child: Sparkline(
                                      data: data,
                                      lineWidth: 5,
                                      lineColor: AppColors.color7289DA,
                                    ),
                                  ),
                                  Positioned.fill(
                                    child: Sparkline(
                                      data: data2,
                                      lineWidth: 5,
                                      lineColor: AppColors.color7289DA.withOpacity(0.5),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 100.h,),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
