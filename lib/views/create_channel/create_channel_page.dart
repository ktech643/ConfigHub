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

class CreateChannelScreen extends StatefulWidget {
  const CreateChannelScreen({Key? key}) : super(key: key);

  @override
  _CreateChannelScreenState createState() => _CreateChannelScreenState();
}

class _CreateChannelScreenState extends State<CreateChannelScreen> {
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
          'Create Channel',
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
              SizedBox(
                height: 10.h,
              ),
              Container(
                width: 100.sm,
                height: 100.sm,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: AppColors.secondary),
                child: Center(
                    child: Icon(Icons.camera_enhance,
                        color: AppColors.white.withOpacity(0.5), size: 20.w)),
              ),
              SizedBox(
                height: 22.h,
              ),
              Text(
                'Channel Name',
                style: textStyle(14.sm, AppFontWeights.medium, AppColors.white),
              ),
              SizedBox(
                height: 10.h,
              ),
              SimpleTextField(
                labelText: 'Type your channel name',
                hintText: 'Type your channel name',
              ),
              SizedBox(
                height: 22.h,
              ),
              Text(
                'Description',
                style: textStyle(14.sm, AppFontWeights.medium, AppColors.white),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                'The description of the group will help other people to get to know the content of your group better and join you',
                style: textStyle(12.sm, AppFontWeights.normal,
                    AppColors.white.withOpacity(0.5)),
              ),
              SizedBox(
                height: 10.h,
              ),
              SimpleTextField(
                labelText: 'Description...',
                hintText: 'Description...',
                isMultiLineField: true,
              ),
              Expanded(child: Container()),
              Button(
                text: 'Create Channel',
                callback: () {},
                buttonColor: AppColors.color7289DA,
                borderColor: AppColors.color7289DA,
              )
            ],
          ),
        ),
      ),
    );
  }
}
