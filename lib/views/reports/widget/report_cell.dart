import 'package:demo/main.dart';
import 'package:demo/themes/colors.dart';
import 'package:demo/themes/style.dart';
import 'package:demo/utilities/constants.dart';
import 'package:demo/views/home/preview_channal_page.dart';
import 'package:demo/views/reports/preview_report_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../../../themes/weights.dart';

class ReportCell extends StatefulWidget {
  final data;
  final int index;
  const ReportCell({Key? key, this.data, required this.index}) : super(key: key);

  @override
  _ReportCellState createState() => _ReportCellState();
}

class _ReportCellState extends State<ReportCell> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: ()=>        navigatorKey.currentState!.push(MaterialPageRoute(builder: (context)=>const PreviewReportScreen())),
      child: SizedBox(
        width: AppConstants.screenWidth,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
          Container(
          width: 24.sm,
          height: 24.sm,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/profile.png'),
                fit: BoxFit.cover,
              )
          ),
        ),
                    SizedBox(width: 8.w,),
                    Text(
                      'Unreaded Reports',
                      style: textStyle(
                          14.sm, AppFontWeights.medium,AppColors.white),
                    ),
                  ],
                ),
                Icon(Icons.arrow_right_sharp,color: AppColors.white,),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 24.sm,
                      height: 24.sm,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('assets/profile.png'),
                            fit: BoxFit.cover,
                          )
                      ),
                    ),
                    SizedBox(width: 8.w,),
                    Text(
                      'Unreaded Reports',
                      style: textStyle(
                          14.sm, AppFontWeights.medium,AppColors.white),
                    ),
                  ],
                ),

              ],
            ),
            SizedBox(height: 8.h,),
            Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s when an unknown printer took a galley of type and ...",
              style: textStyle(
                  10.sm, AppFontWeights.normal, AppColors.white.withOpacity(0.5)),
            ),
            SizedBox(height: 8.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '22/01/2023',
                  style: textStyle(
                      10.sm, AppFontWeights.normal, AppColors.white.withOpacity(0.5)),
                ),
                Icon(Icons.arrow_right_alt,color: AppColors.white,)
              ],),
          ],
        ),
      ),
    );
  }
}
