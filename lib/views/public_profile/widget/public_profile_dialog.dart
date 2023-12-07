import 'package:demo/main.dart';
import 'package:demo/themes/colors.dart';
import 'package:demo/themes/style.dart';
import 'package:demo/utilities/constants.dart';
import 'package:demo/views/detail_preview/detail_preview_page.dart';
import 'package:demo/views/home/preview_channal_page.dart';
import 'package:demo/views/reports/preview_report_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../../../themes/weights.dart';

class PublicProfileDialog extends StatefulWidget {


  const PublicProfileDialog(
      {Key? key,})
      : super(key: key);

  @override
  _PublicProfileDialogState createState() => _PublicProfileDialogState();
}

class _PublicProfileDialogState extends State<PublicProfileDialog> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: AppConstants.screenWidth,

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          color: AppColors.background,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: double.infinity,
                height: 203.sp,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r),
                    color: AppColors.background,
                    image: DecorationImage(
                      image: AssetImage('assets/media.png'),
                      fit: BoxFit.fill,
                    )),
              ),
              SizedBox(height: 10.h),
              Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s when an unknown printer took a galley of type and ...",
                style: textStyle(12.sm, AppFontWeights.normal, AppColors.white),
              ),
              InkWell(
                onTap: () {
                  navigatorKey.currentState!.pop();
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Close',
                    style: textStyle(
                        12.sm, AppFontWeights.normal, AppColors.color666666),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
