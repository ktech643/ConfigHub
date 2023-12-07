import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:demo/utilities/constants.dart';
import 'package:demo/utilities/helper_ui.dart';
import 'package:demo/views/admin_channel/widget/bottom_sheet.dart';
import 'package:demo/views/home/list_page.dart';
import 'package:demo/views/home/preview_channal_page.dart';
import 'package:demo/views/user_end/hubs_details_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../../main.dart';
import '../../network/api_caller.dart';
import '../../themes/colors.dart';
import '../../themes/style.dart';
import '../../themes/weights.dart';
import '../../widgets/button.dart';
import '../../widgets/text_field.dart';
import '../bottom_nav_bar/bottom_nav_bar_page.dart';

class MemberScreen extends StatefulWidget {
  const MemberScreen({Key? key}) : super(key: key);

  @override
  _MemberScreenState createState() => _MemberScreenState();
}

class _MemberScreenState extends State<MemberScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF201F24),
      appBar: AppBar(
        toolbarHeight: 100,
        elevation: 0.0,
        backgroundColor: AppColors.secondary,
        centerTitle: true,
        leading: InkWell(
          onTap: () => navigatorKey.currentState!.pop(),
          child: Center(
              child: Icon(
            Icons.arrow_back,
            color: AppColors.white,
            size: 25.sm,
          )),
        ),
        title: Text(
          'Members',
          style: textStyle(16.sm, AppFontWeights.liteBold, AppColors.white),
        ),
      ),
      body: SizedBox(
        width: AppConstants.screenWidth,
        height: AppConstants.screenHeight,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 25.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF32B5AD),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset('assets/add_member.png',
                                width: 20.w),
                          )),
                      SizedBox(
                        width: 20.w,
                      ),
                      Text(
                        'Add Member',
                        style: textStyle(
                            16.sm, AppFontWeights.normal, AppColors.white),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: AppColors.white.withOpacity(0.5),
                    size: 24.h,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: dividerWidget(),
            ),
            Expanded(
              child: Container(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.w),
                        child: SimpleTextField(
                          hintText: 'Search for user',
                          labelText: 'Search for user',
                          hintColor: AppColors.white.withOpacity(0.5),
                          prefixIcon: Icon(
                            Icons.search,
                            color: AppColors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 22.h,
                      ),
                      ListView.separated(
                          shrinkWrap: true,
                          physics: ScrollPhysics(),
                          primary: true,
                          itemBuilder: (context, index) => InkWell(
                                onTap: () {
                                  showBottomSheetModel(
                                      context, AdminChannelBottomSheet());
                                },
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 20.w, vertical: 15.h),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Container(
                                                width: 45.sm,
                                                height: 45.sm,
                                                decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/profile.png'),
                                                      fit: BoxFit.cover,
                                                    )),
                                              ),
                                              SizedBox(
                                                width: 20.w,
                                              ),
                                              Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Essa Forbes',
                                                    style: textStyle(
                                                        16.sm,
                                                        AppFontWeights.normal,
                                                        AppColors.white),
                                                  ),
                                                  SizedBox(
                                                    height: 10.h,
                                                  ),
                                                  Text(
                                                    'Added by James',
                                                    style: textStyle(
                                                        12.sm,
                                                        AppFontWeights.normal,
                                                        Color(0xFF32B5AD)),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          SvgPicture.asset(
                                            'assets/peoplesetting.svg',
                                            // width: 24.w,
                                          ),
                                        ],
                                      ),
                                    ),
                                    dividerWidget(),
                                  ],
                                ),
                              ),
                          separatorBuilder: (context, index) => SizedBox(
                                height: 10.h,
                              ),
                          itemCount: 5),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
