import 'package:demo/main.dart';
import 'package:demo/themes/colors.dart';
import 'package:demo/themes/style.dart';
import 'package:demo/themes/weights.dart';
import 'package:demo/utilities/constants.dart';
import 'package:demo/utilities/screen_navigator.dart';
import 'package:demo/views/user_end/hubs_details_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class SocialCard extends StatefulWidget {
  const SocialCard({Key? key}) : super(key: key);

  @override
  State<SocialCard> createState() => _SocialCardState();
}

class _SocialCardState extends State<SocialCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
      child: Container(
        color: const Color(0xFF101316),
        child: InkWell(
          onTap: () {
            push(const HubDetailScreen(), '');
          },
          child: Container(
            color: const Color(0xFF101316),
            width: Get.height,
            child: Padding(
              padding: const EdgeInsets.all(0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 70.sp,
                        height: 70.sp,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF101316),
                            image: DecorationImage(
                              image: AssetImage('assets/profile.png'),
                              fit: BoxFit.fill,
                            )),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: Get.width * 0.70,
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Methew Andrew Tat",
                                  style: textStyle(17.sm, AppFontWeights.medium,
                                      AppColors.white),
                                ),
                                Text(
                                  "12:23 PM",
                                  style: textStyle(12.sm, AppFontWeights.normal,
                                      AppColors.color999999),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          SizedBox(
                            width: AppConstants.screenWidth * 0.7,
                            child: Text(
                              "Lorem Ipsum is simply dummy text of the printing and industry.",
                              style: textStyle(14.sm, AppFontWeights.normal,
                                  AppColors.color999999),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: dividerWidget(),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SvgPicture.asset(
                                'assets/likeblue.svg',
                                height: 15,
                                width: 15,
                                fit: BoxFit.scaleDown,
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                "10.k",
                                style: textStyle(12.sm, AppFontWeights.normal,
                                    AppColors.color999999),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                  padding: const EdgeInsets.only(top: 2.5),
                                  child: SvgPicture.asset(
                                    'assets/redcomment.svg',
                                    height: 15,
                                    width: 15,
                                    fit: BoxFit.scaleDown,
                                  )),
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                "1200",
                                style: textStyle(12.sm, AppFontWeights.normal,
                                    AppColors.color999999),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SvgPicture.asset(
                                'assets/shareee.svg',
                                height: 15,
                                width: 15,
                                fit: BoxFit.scaleDown,
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                "Share",
                                style: textStyle(12.sm, AppFontWeights.normal,
                                    AppColors.color999999),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.visibility_outlined,
                              size: 20.sp,
                              color: AppColors.color999999,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              "25",
                              style: textStyle(12.sm, AppFontWeights.normal,
                                  AppColors.color999999),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: dividerWidget(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
