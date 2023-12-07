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

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {

  List items=[
    {
      'image':'assets/user.png',
      'title':'Appearance',
      'color':AppColors.color235610,
    },
    {
      'image':'assets/not.png',
      'title':'Notifications',
      'color':AppColors.color8D5C47,
    },
    {
      'image':'assets/pp.png',
      'title':'Privacy and security',
      'color':AppColors.colorAC3D44,
    },
    {
      'image':'assets/logout.png',
      'title':'Logout',
      'color':AppColors.color606060,
    },
  ];

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppColors.secondary,

        leading: InkWell(
          onTap: ()=>navigatorKey.currentState!.pop(),
          child: Center(child: Icon(Icons.arrow_back,color: AppColors.white,size: 25.sm,)),
        ),
        actions: [
          InkWell(
            onTap: (){
              navigatorKey.currentState!.push(MaterialPageRoute(builder: (context)=>const NewsScreen()));
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Image.asset('assets/dot.png',width: 20.w,),
            ),
          )
        ],
      ),
      body: SizedBox(
        width: AppConstants.screenWidth,
        height: AppConstants.screenHeight,
        child: Padding(
          padding:  EdgeInsets.all(20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 9.h,),
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
                        )
                    ),
                  ),
                ),
              ),
              SizedBox(height: 22.h,),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Channel Name',
                    style: textStyle(
                        20.sm, AppFontWeights.liteBold, AppColors.white),
                  ),
                  SizedBox(width: 10.w,),
                  Icon(Icons.edit,color: AppColors.white,),
                ],
              ),
              Text(
                '8.942 subscribers',
                style: textStyle(
                    14.sm, AppFontWeights.normal, AppColors.white),
              ),
              SizedBox(height: 22.h,),
              Divider(color: AppColors.secondary,height: 40.h,thickness: 10.h,),
              ListView.separated(
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  itemBuilder: (context,index)=> Container(
                    width: double.infinity,
                    child: InkWell(
                      onTap: (){
                        if(index==0) {
                          // navigatorKey.currentState!.push(MaterialPageRoute(
                          //     builder: (context) => const MemberScreen()));
                        }else if(index==1) {
                          showBottomSheetModel(context, NotificationBottomSheet());
                          // navigatorKey.currentState!.push(MaterialPageRoute(
                          //     builder: (context) => const AdminScreen()));
                        }else if(index==2) {
                          // navigatorKey.currentState!.push(MaterialPageRoute(
                          //     builder: (context) => const RemoveUserScreen()));
                        }else {
                          navigatorKey.currentState!.push(MaterialPageRoute(
                              builder: (context) => const OnboardingScreen()));
                        }
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 0.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color:items[index]['color'],
                                    ),
                                    child: Padding(
                                      padding:  EdgeInsets.all(10.sm),
                                      child: Image.asset(items[index]['image'],width:22.w),
                                    )),
                                SizedBox(width: 20.w,),
                                Text(
                                  items[index]['title'],
                                  style: textStyle(
                                      16.sm, AppFontWeights.normal, AppColors.white),
                                ),

                              ],
                            ),
                            Icon(Icons.arrow_forward_ios_rounded,color: AppColors.white.withOpacity(0.5),size: 24.h,),
                          ],
                        ),
                      ),
                    ),
                  ), separatorBuilder: (context,index)=>SizedBox(height: 25.h,), itemCount: items.length),
              Divider(color: AppColors.secondary,height: 40.h,thickness: 10.h,),
            ],
          ),
        ),
      ),
    );
  }
}

