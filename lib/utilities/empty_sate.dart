import 'package:demo/main.dart';
import 'package:demo/themes/colors.dart';
import 'package:demo/themes/style.dart';
import 'package:demo/themes/weights.dart';
import 'package:demo/utilities/constants.dart';
import 'package:demo/views/bottom_nav_bar/bottom_nav_bar_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../widgets/button.dart';

class EmptyState extends StatefulWidget {
  final String image;
  final String title;
  final String subTitle;
  final bool showButton;
  const EmptyState({Key? key, required this.image, required this.title, required this.subTitle, this.showButton=false}) : super(key: key);

  @override
  State<EmptyState> createState() => _EmptyStateState();
}

class _EmptyStateState extends State<EmptyState> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppConstants.screenWidth,
      height: AppConstants.screenHeight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(widget.image,width: 89.sp,),
          SizedBox(height: 43.h,),
          SizedBox(
            width: 312.w,
            child: Text(
              widget.title,
              textAlign: TextAlign.center,
              style: textStyle(
                  24.sm, AppFontWeights.medium, AppColors.color141414),
            ),
          ),
          SizedBox(height: 12.h,),
          SizedBox(
            width: 312.w,
            child: Text(
              widget.subTitle,
              textAlign: TextAlign.center,
              style: textStyle(
                  14.sm, AppFontWeights.normal, AppColors.color999999),
            ),
          ),
          SizedBox(height: 24.h,),
          SizedBox(
              width: 113.w,
              child: Button( text: 'text', callback: () {
                // navigatorKey.currentState!
                //     .pushAndRemoveUntil(
                //     MaterialPageRoute(
                //         builder: (context) =>
                //             BottomNavBar(b_index: 1,)),
                //         (Route<dynamic> route) => false);

              },)),
        ],
      ),
    );
  }
}
