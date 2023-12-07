import 'package:demo/themes/colors.dart';
import 'package:demo/themes/style.dart';
import 'package:demo/themes/weights.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../widgets/button.dart';


class NotificationBottomSheet extends StatefulWidget {
  const NotificationBottomSheet({Key? key}) : super(key: key);

  @override
  State<NotificationBottomSheet> createState() => _NotificationBottomSheetState();
}

class _NotificationBottomSheetState extends State<NotificationBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child:  Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.all(16.h),
            child: Container(width: 50.w,height: 8.h,
              decoration: BoxDecoration(
                color: AppColors.secondary,
                borderRadius: BorderRadius.circular(10.r),
              ),),
          ),

          Text(
            'Notifications',
            style: textStyle(
                14.sm, AppFontWeights.liteBold,AppColors.white),
          ),

          Divider(color: AppColors.color777777,),
          Text(
            'Mark which notifications you want to receive',
            style: textStyle(
                14.sm, AppFontWeights.liteBold,AppColors.white),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 10.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Channel',
                  style: textStyle(
                      14.sm, AppFontWeights.normal, AppColors.white),
                ),
                CupertinoSwitch(value: true, onChanged: (bool value) {  },activeColor: AppColors.color7289DA,),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 10.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Email notification',
                  style: textStyle(
                      14.sm, AppFontWeights.normal, AppColors.white),
                ),
                CupertinoSwitch(value: true, onChanged: (bool value) {  },activeColor: AppColors.color7289DA,),
              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 10.h),
            child: Button(text: 'Save status', callback: (){}),
          ),
        ],
      ),
    );
  }
}
