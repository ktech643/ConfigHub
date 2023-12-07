import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:demo/utilities/constants.dart';
import 'package:demo/utilities/helper_ui.dart';
import 'package:demo/views/admin_channel/widget/bottom_sheet.dart';
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

class AdminScreen extends StatefulWidget {
  const AdminScreen({Key? key}) : super(key: key);

  @override
  _AdminScreenState createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
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
          'Administrators',
          style: textStyle(16.sm, AppFontWeights.liteBold, AppColors.white),
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
                  physics: NeverScrollableScrollPhysics(),
                  primary: true,
                  itemBuilder: (context, index) => InkWell(
                        onTap: () {
                          showBottomSheetModel(
                              context,
                              AdminChannelBottomSheet(
                                fromAdministration: true,
                              ));
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.w, vertical: 15.h),
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
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                          image:
                                              AssetImage('assets/profile.png'),
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
                                        'Member name',
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
                                            AppColors.color7289DA),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Image.asset(
                                'assets/add_member.png',
                                width: 24.w,
                                color: AppColors.white.withOpacity(0.5),
                              ),
                            ],
                          ),
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
    );
  }
}
