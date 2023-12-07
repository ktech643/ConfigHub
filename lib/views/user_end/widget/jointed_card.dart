import 'package:demo/main.dart';
import 'package:demo/themes/colors.dart';
import 'package:demo/themes/style.dart';
import 'package:demo/themes/weights.dart';
import 'package:demo/utilities/constants.dart';
import 'package:demo/views/profile/menupop.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class JoinedCard extends StatefulWidget {
  const JoinedCard({Key? key}) : super(key: key);

  @override
  State<JoinedCard> createState() => _JoinedCardState();
}

class _JoinedCardState extends State<JoinedCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: const Color(0xFF101316),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Container(
                        width: 70.sp,
                        height: 70.sp,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage('assets/profile.png'),
                              fit: BoxFit.fill,
                            )),
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: AppConstants.screenWidth * 0.70,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Text(
                                    "ConfigHub",
                                    style: textStyle(17.sm,
                                        AppFontWeights.medium, AppColors.white),
                                  ),
                                ),
                                Text(
                                  "12:23 PM",
                                  style: textStyle(12.sm, AppFontWeights.normal,
                                      AppColors.color999999),
                                ),
                              ],
                            ),
                          ),
                        ),
                        // SizedBox(
                        //   height: 5.h,
                        // ),
                        SizedBox(
                          width: AppConstants.screenWidth * 0.7,
                          child: Text(
                            "Lorem Ipsum is simply dummy text of the printing and industry.",
                            style: textStyle(12.sm, AppFontWeights.normal,
                                AppColors.color999999),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 5),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 30,
                width: 34,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/redlable.png'),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 12, left: 19),
                  child: Text(
                    "@",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontStyle: FontStyle.italic),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: dividerWidgeet(),
        ),
        SizedBox(
          height: 7,
        ),
        Container(
          color: const Color(0xFF101316),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Container(
                        width: 70.sp,
                        height: 70.sp,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage('assets/profile.png'),
                              fit: BoxFit.fill,
                            )),
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: AppConstants.screenWidth * 0.70,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Text(
                                    "ConfigHub",
                                    style: textStyle(17.sm,
                                        AppFontWeights.medium, AppColors.white),
                                  ),
                                ),
                                Text(
                                  "12:23 PM",
                                  style: textStyle(12.sm, AppFontWeights.normal,
                                      AppColors.color999999),
                                ),
                              ],
                            ),
                          ),
                        ),
                        // SizedBox(
                        //   height: 5.h,
                        // ),
                        SizedBox(
                          width: AppConstants.screenWidth * 0.7,
                          child: Text(
                            "Lorem Ipsum is simply dummy text of the printing and industry.",
                            style: textStyle(12.sm, AppFontWeights.normal,
                                AppColors.color999999),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 5),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 23,
                width: 34,
                // decoration: BoxDecoration(
                //   image: DecorationImage(
                //     image: AssetImage('assets/redlable.png'),
                //   ),
                // ),
                // child: Padding(
                //   padding: EdgeInsets.only(top: 12, left: 19),
                //   child: Text(
                //     "@",
                //     style: TextStyle(
                //         color: Colors.white,
                //         fontSize: 12,
                //         fontStyle: FontStyle.italic),
                //   ),
                // ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
