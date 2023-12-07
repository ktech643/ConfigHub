import 'package:demo/main.dart';
import 'package:demo/themes/colors.dart';
import 'package:demo/utilities/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import '../../state/app_state.dart';
import '../../themes/style.dart';
import '../../themes/weights.dart';

class PreviewReportScreen extends StatefulWidget {
  const PreviewReportScreen({Key? key}) : super(key: key);

  @override
  _PreviewReportScreenState createState() => _PreviewReportScreenState();
}

class _PreviewReportScreenState extends State<PreviewReportScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  late List<String> settingItems;
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  List items=[
    {
      'title':'Ban @Frenkie for period',
      'color':AppColors.colorCA6134,
      'image':'assets/period.png',
      'ontap':(){}
    },
    {
      'title':'Ban @Frankie forever',
      'color':AppColors.colorAC3D44,
      'image':'assets/forever.png',
      'ontap':(){}
    },
    {
      'title':'Reject this report',
      'color':AppColors.color7289DA,
      'image':'assets/reject.png',
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
          'Preview Report',
          style: textStyle(
              16.sm, AppFontWeights.liteBold, AppColors.white),
        ),
      ),
      body: Container(
        width: AppConstants.screenWidth,
        height: AppConstants.screenHeight,
        color: AppColors.background,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 18.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 38.w,
                          height: 38.h,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage('assets/profile.png'),
                                fit: BoxFit.cover,
                              )
                          ),
                        ),
                        SizedBox(width: 0.w,),
                        Text(
                          'Unreaded Reports',
                          style: textStyle(
                              16.sm, AppFontWeights.normal,AppColors.white),
                        ),
                      ],
                    ),
                    Icon(Icons.arrow_right_sharp,color: AppColors.white,),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 38.w,
                          height: 38.h,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage('assets/profile.png'),
                                fit: BoxFit.cover,
                              )
                          ),
                        ),
                        SizedBox(width: 0.w,),
                        Text(
                          'Unreaded Reports',
                          style: textStyle(
                              16.sm, AppFontWeights.normal,AppColors.white),
                        ),
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
                        Icon(Icons.calendar_month,color: AppColors.white.withOpacity(0.5),size: 20.sp,),
                        Text(
                          '21.08.2022  23:24',
                          style: textStyle(
                              14.sm,AppFontWeights.normal, AppColors.white.withOpacity(0.5)),
                        ),
                        SizedBox(width: 20.sp,),

                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 28.h,
                ),
                Row(
                  children: [
                    Text(
                      'Report reason',
                      style: textStyle(
                          14.sm,AppFontWeights.medium, AppColors.white),
                    ),
                  ],
                ),
                Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem. ",
                  style: textStyle(
                      12.sm,AppFontWeights.normal, AppColors.white.withOpacity(0.9)),
                ),
                SizedBox(
                  height: 28.h,
                ),
                Row(
                  children: [
                    Text(
                      'Additional media evidence',
                      style: textStyle(
                          14.sm,AppFontWeights.medium, AppColors.white),
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
                              image: AssetImage('assets/preview.png'),
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
                    itemBuilder: (context,index)=>Row(
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

                    separatorBuilder: (context,index)=>SizedBox(height: 23.h,), itemCount: items.length),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
