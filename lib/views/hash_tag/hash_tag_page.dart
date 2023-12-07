import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:demo/utilities/constants.dart';
import 'package:demo/views/create_channel/create_channel_page.dart';
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

class HashTagScreen extends StatefulWidget {
  const HashTagScreen({Key? key}) : super(key: key);

  @override
  _HashTagScreenState createState() => _HashTagScreenState();
}

class _HashTagScreenState extends State<HashTagScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppColors.secondary,
        centerTitle: true,
        leading: InkWell(
          onTap: ()=>navigatorKey.currentState!.pop(),
          child: Center(child: Icon(Icons.arrow_back,color: AppColors.white,size: 25.sm,)),
        ),
        title:  Text(
          'Remove users',
          style: textStyle(
              16.sm, AppFontWeights.liteBold, AppColors.white),
        ),
      ),
      body: SizedBox(
        width: AppConstants.screenWidth,
        height: AppConstants.screenHeight,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: SimpleTextField(
                  hintText: 'Search by hashing',
                  labelText: 'Search by hashing',
                  hintColor: AppColors.white.withOpacity(0.5),
                  prefixIcon: Icon(
                    Icons.search,
                    color: AppColors.white,
                  ),
                ),
              ),
              SizedBox(height: 22.h,),
              ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  primary: true,
                  itemBuilder: (context,index)=>  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 15.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              width: 50.sm,
                              height: 50.sm,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.secondary,
                              ),
                              child: Center(
                                child: Text(
                                  '#',
                                  style: textStyle(
                                      30.sm, AppFontWeights.normal, AppColors.color666666),
                                ),
                              ),
                            ),
                            SizedBox(width: 20.w,),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '#football',
                                  style: textStyle(
                                      16.sm, AppFontWeights.medium, AppColors.white),
                                ),
                                SizedBox(height: 10.h,),
                                Text(
                                  '139 m posts',
                                  style: textStyle(
                                      12.sm, AppFontWeights.normal, AppColors.white.withOpacity(0.5)),
                                ),

                              ],
                            ),
                          ],
                        ),
                        Text(
                          '23 m Members',
                          style: textStyle(
                              12.sm, AppFontWeights.normal, AppColors.white.withOpacity(0.5)),
                        ),
                      ],
                    ),
                  ), separatorBuilder: (context,index)=>SizedBox(height: 10.h,), itemCount: 5),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.color7289DA,
        child: Icon(Icons.add,color: AppColors.white,),
        onPressed: () {
          navigatorKey.currentState!.push(MaterialPageRoute(builder: (context)=>const CreateChannelScreen()));
        },),
    );
  }
}
