import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:demo/utilities/constants.dart';
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

class CreateNewsAndUpdateScreen extends StatefulWidget {
  const CreateNewsAndUpdateScreen({Key? key}) : super(key: key);

  @override
  _CreateNewsAndUpdateScreenState createState() =>
      _CreateNewsAndUpdateScreenState();
}

class _CreateNewsAndUpdateScreenState extends State<CreateNewsAndUpdateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
          'Create news or updates',
          style: textStyle(16.sm, AppFontWeights.liteBold, AppColors.white),
        ),
      ),
      body: SizedBox(
        width: AppConstants.screenWidth,
        height: AppConstants.screenHeight,
        child: Padding(
          padding: EdgeInsets.all(20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'News Title',
                style: textStyle(
                    14.sm, AppFontWeights.medium, AppColors.color7289DA),
              ),
              SizedBox(
                height: 10.h,
              ),
              SimpleTextField(
                labelText: 'Type your channel name',
                hintText: 'Type your channel name',
              ),
              SizedBox(
                height: 40.h,
              ),
              Text(
                'Description',
                style: textStyle(
                    14.sm, AppFontWeights.medium, AppColors.color7289DA),
              ),
              SizedBox(
                height: 8.h,
              ),
              SimpleTextField(
                labelText: 'Description...',
                hintText: 'Description...',
                isMultiLineField: true,
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'Add Link',
                style: textStyle(14.sm, AppFontWeights.medium, AppColors.white),
              ),
              SizedBox(
                height: 20.h,
              ),
              SimpleTextField(),
              SizedBox(
                height: 17.h,
              ),
              Text(
                'Photo or video',
                style: textStyle(14.sm, AppFontWeights.medium, AppColors.white),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                width: double.infinity,
                height: 77.sm,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r),
                    color: AppColors.secondary),
                child: Center(
                    child: Image.asset(
                  'assets/photo.png',
                  height: 77.sm,
                )),
              ),
              Expanded(child: Container()),
              Button(
                text: 'Share',
                callback: () {},
                buttonColor: AppColors.secondary,
                borderColor: AppColors.secondary,
              )
            ],
          ),
        ),
      ),
    );
  }
}
