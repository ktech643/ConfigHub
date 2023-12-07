import 'package:demo/main.dart';
import 'package:demo/themes/colors.dart';
import 'package:demo/utilities/constants.dart';
import 'package:demo/views/admin_channel/member_page.dart';
import 'package:demo/views/news/news_and_updates_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import '../../state/app_state.dart';
import '../../themes/style.dart';
import '../../themes/weights.dart';

class PreviewChannelScreen extends StatefulWidget {
  const PreviewChannelScreen({Key? key}) : super(key: key);

  @override
  _PreviewChannelScreenState createState() => _PreviewChannelScreenState();
}

class _PreviewChannelScreenState extends State<PreviewChannelScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  late List<String> settingItems;
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  List items=[
    {
      'title':'Members',
      'color':AppColors.colorCA6134,
      'image':'assets/members.png',
      'ontap':(){}
    },
    {
      'title':'Chat',
      'color':AppColors.color777777,
      'image':'assets/chat.png',
      'ontap':(){}
    },
    {
      'title':'News and updates',
      'color':AppColors.color7289DA,
      'image':'assets/info.png',
      'ontap':(){}
    },
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      key: _key,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppColors.secondary,
        centerTitle: true,
        leading: InkWell(
          onTap: ()=>navigatorKey.currentState!.pop(),
          child: Center(child: Icon(Icons.arrow_back,color: AppColors.white,size: 25.sm,)),
        ),
        title:  Text(
          'Preview Channel',
          style: textStyle(
              16.sm, AppFontWeights.liteBold, AppColors.white),
        ),
      ),
      body: Container(
        width: AppConstants.screenWidth,
        height: AppConstants.screenHeight,
        color: AppColors.background,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 32.5.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 84.sm,
                              height: 84.sm,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage('assets/profile.png'),
                                    fit: BoxFit.cover,
                                  )
                              ),
                            ),
                            SizedBox(width: 22.w,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'AspectChannel',
                                  style: textStyle(
                                      20.sm, AppFontWeights.medium, AppColors.white),
                                ),
                                SizedBox(height: 15.h,),
                                Row(
                                  children: [
                                    Text(
                                      'owner:',
                                      style: textStyle(
                                          12.sm, AppFontWeights.liteBold, AppColors.white),
                                    ),
                                    Text(
                                      ' James Corell',
                                      style: textStyle(
                                          12.sm, AppFontWeights.liteBold, AppColors.color7289DA),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 15.h,),
                                Text(
                                  'Type: Sport chanel',
                                  style: textStyle(
                                      12.sm, AppFontWeights.normal, AppColors.color7289DA),
                                ),
                              ],
                            )


                          ],
                        )
                      ],
                    ),

                  ],
                ),
                SizedBox(
                  height: 42.5.h,
                ),
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
                            SizedBox(
                              width:360.w,
                              child: Text(
                                'AspectChannel is the place where you can get news, coin & token reviews, wallet reviews, parodies, & much more.focus on altcoins & cryptocurrency.',
                                style: textStyle(
                                    14.sm, AppFontWeights.normal, AppColors.white),
                              ),
                            ),
                            SizedBox(height: 10.h,),
                            Row(
                              children: [
                                Icon(Icons.videocam_rounded,color: AppColors.white.withOpacity(0.8),size: 20.sp,),
                                Text(
                                  ' 5 videos / day',
                                  style: textStyle(
                                      10.sm,AppFontWeights.normal, AppColors.color7289DA),
                                ),
                                SizedBox(width: 22.w,),
                                Container(
                                  width: 7.sp,
                                  height: 7.sp,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppColors.white.withOpacity(0.8)
                                  ),
                                ),
                                SizedBox(width: 22.w,),
                                Icon(Icons.info_outline,color: AppColors.white.withOpacity(0.8),size: 20.sp,),
                                Text(
                                  ' Feb 2018',
                                  style: textStyle(
                                      10.sm, AppFontWeights.normal, AppColors.color7289DA),
                                ),


                              ],
                            )
                          ],
                        ),

                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 28.h,
                ),
                Container(
                  width: double.infinity,

                  decoration: BoxDecoration(
                    color: AppColors.secondary,
                    borderRadius: BorderRadius.circular(5.r),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10.sm),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Members:',
                              style: textStyle(
                                  14.sm,AppFontWeights.normal, AppColors.white),
                            ),
                            Text(
                              '  2,5k',
                              style: textStyle(
                                  16.sm,AppFontWeights.medium, AppColors.white),
                            ),
                          ],
                        ),

                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Online:',
                              style: textStyle(
                                  14.sm,AppFontWeights.normal, AppColors.white),
                            ),
                            Text(
                              '  572',
                              style: textStyle(
                                  16.sm,AppFontWeights.medium, AppColors.white),
                            ),
                          ],
                        ),


                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 28.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Last send media',
                      style: textStyle(
                          16.sm,AppFontWeights.medium, AppColors.white),
                    ),
                    Text(
                      ' See More',
                      style: textStyle(
                          12.sm, AppFontWeights.liteBold, AppColors.color7289DA),
                    ),
                  ],
                ),
                SizedBox(
                  height: 90.sm,
                  child: ListView.separated(
                    padding: EdgeInsets.only(top: 8.h),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index)=>Container(
                        width: 70.sm,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          image:const DecorationImage(
                            image: AssetImage('assets/media.png'),
                            fit: BoxFit.cover,
                          )
                        ),
                      ), separatorBuilder: (context,index)=>SizedBox(width: 10.w,), itemCount: 10),
                ),
                SizedBox(
                  height: 42.h,
                ),
                ListView.separated(
                    padding: EdgeInsets.only(top: 8.h),
                    primary: true,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context,index)=>InkWell(
                      onTap: (){
                        if(index==0){
                          navigatorKey.currentState!.push(MaterialPageRoute(builder: (context)=>const MemberScreen()));
                        }else if(index==1){

                        }else{
                          navigatorKey.currentState!.push(MaterialPageRoute(builder: (context)=>const NewsAndUpdateScreen()));
                        }
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                            Container(
                              width: 45.sm,
                              height: 45.sm,
                              decoration: BoxDecoration(
                                color: items[index]['color'],
                                shape: BoxShape.circle
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(10.sm),
                                child: Image.asset(items[index]['image']),
                              ),
                            ),
                              SizedBox(width: 20.w,),
                              Text(
                                items[index]['title'],
                                style: textStyle(
                                    16.sm,AppFontWeights.normal, AppColors.white),
                              ),
                          ],),
                          Icon(Icons.arrow_forward_ios_rounded,size: 20.sm,color: AppColors.color7D7D7D,)
                        ],
                      ),
                    ),

                    separatorBuilder: (context,index)=>SizedBox(height: 23.h,), itemCount: items.length),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
