import 'package:demo/main.dart';
import 'package:demo/themes/colors.dart';
import 'package:demo/utilities/constants.dart';
import 'package:demo/views/home/preview_channal_page.dart';
import 'package:demo/views/home/widget/list_cell.dart';
import 'package:demo/views/reports/widget/report_cell.dart';
import 'package:demo/widgets/text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import '../../state/app_state.dart';
import '../../themes/style.dart';
import '../../themes/weights.dart';

class UserChannelReportScreen extends StatefulWidget {
  const UserChannelReportScreen({Key? key}) : super(key: key);

  @override
  _UserChannelReportScreenState createState() => _UserChannelReportScreenState();
}

class _UserChannelReportScreenState extends State<UserChannelReportScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  late List<String> settingItems;
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  List items = [
    {
      'title': 'AspectChannel',
      'subTitle': 'Sports Channel',
      'member': '203 members',
      'online': '70 online',
      'image': 'assets/profile.png',
      'ontap': () {
        navigatorKey.currentState!.push(MaterialPageRoute(
            builder: (context) => const PreviewChannelScreen()));
      }
    },
    {
      'title': 'AspectChannel',
      'subTitle': 'Sports Channel',
      'member': '203 members',
      'online': '70 online',
      'image': 'assets/profile.png',
      'ontap': () {
        navigatorKey.currentState!.push(MaterialPageRoute(
            builder: (context) => const PreviewChannelScreen()));
      }
    },
    {
      'title': 'AspectChannel',
      'subTitle': 'Sports Channel',
      'member': '203 members',
      'online': '70 online',
      'image': 'assets/profile.png',
      'ontap': () {
        navigatorKey.currentState!.push(MaterialPageRoute(
            builder: (context) => const PreviewChannelScreen()));
      }
    },
    {
      'title': 'AspectChannel',
      'subTitle': 'News Channel',
      'member': '203 members',
      'online': '70 online',
      'image': 'assets/profile.png',
      'ontap': () {
        navigatorKey.currentState!.push(MaterialPageRoute(
            builder: (context) => const PreviewChannelScreen()));
      }
    },
    {
      'title': 'AspectChannel',
      'subTitle': 'Sports Channel',
      'member': '203 members',
      'online': '70 online',
      'image': 'assets/profile.png',
      'ontap': () {
        navigatorKey.currentState!.push(MaterialPageRoute(
            builder: (context) => const PreviewChannelScreen()));
      }
    },
    {
      'title': 'AspectChannel',
      'subTitle': 'Entertainment Channel',
      'member': '203 members',
      'online': '70 online',
      'image': 'assets/profile.png',
      'ontap': () {
        navigatorKey.currentState!.push(MaterialPageRoute(
            builder: (context) => const PreviewChannelScreen()));
      }
    },
    {
      'title': 'AspectChannel',
      'subTitle': 'Sports Channel',
      'member': '203 members',
      'online': '70 online',
      'image': 'assets/profile.png',
      'ontap': () {
        navigatorKey.currentState!.push(MaterialPageRoute(
            builder: (context) => const PreviewChannelScreen()));
      }
    },
    {
      'title': 'AspectChannel',
      'subTitle': 'Sports Channel',
      'member': '203 members',
      'online': '70 online',
      'image': 'assets/profile.png',
      'ontap': () {
        navigatorKey.currentState!.push(MaterialPageRoute(
            builder: (context) => const PreviewChannelScreen()));
      }
    },
    {
      'title': 'AspectChannel',
      'subTitle': 'Sports Channel',
      'member': '203 members',
      'online': '70 online',
      'image': 'assets/profile.png',
      'ontap': () {
        navigatorKey.currentState!.push(MaterialPageRoute(
            builder: (context) => const PreviewChannelScreen()));
      }
    },
    {
      'title': 'AspectChannel',
      'subTitle': 'Entertainment Channel',
      'member': '203 members',
      'online': '70 online',
      'image': 'assets/profile.png',
      'ontap': () {
        navigatorKey.currentState!.push(MaterialPageRoute(
            builder: (context) => const PreviewChannelScreen()));
      }
    },
    {
      'title': 'AspectChannel',
      'subTitle': 'Sports Channel',
      'member': '203 members',
      'online': '70 online',
      'image': 'assets/profile.png',
      'ontap': () {
        navigatorKey.currentState!.push(MaterialPageRoute(
            builder: (context) => const PreviewChannelScreen()));
      }
    },
    {
      'title': 'AspectChannel',
      'subTitle': 'Sports Channel',
      'member': '203 members',
      'online': '70 online',
      'image': 'assets/profile.png',
      'ontap': () {
        navigatorKey.currentState!.push(MaterialPageRoute(
            builder: (context) => const PreviewChannelScreen()));
      }
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppConstants.screenWidth,
      height: AppConstants.screenHeight,
      color: AppColors.background,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            SizedBox(
              height: 37.h,
            ),
            Row(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 24.sm,
                      height: 24.sm,
                      decoration:const BoxDecoration(
                        color: AppColors.colorDC5050,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text(
                          '2',
                          style: textStyle(
                              10.sm, AppFontWeights.medium,AppColors.white),
                        ),
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
                SizedBox(width: 20.w,),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 24.sm,
                      height: 24.sm,
                      decoration:const BoxDecoration(
                        color: AppColors.secondary,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text(
                          '22',
                          style: textStyle(
                              10.sm, AppFontWeights.medium,AppColors.background),
                        ),
                      ),
                    ),
                    SizedBox(width: 8.w,),
                    Text(
                      'Unreaded Reports',
                      style: textStyle(
                          14.sm, AppFontWeights.medium,AppColors.color7D7D7D),
                    ),
                  ],
                ),

              ],
            ),
            SizedBox(
              height: 23.h,
            ),
            Expanded(
              child: Container(
                child: ListView.separated(
                    padding: EdgeInsets.only(top: 8.h),
                    shrinkWrap: true,
                    itemBuilder: (context, index) => ReportCell(
                      data: items,
                      index: index,
                    ),
                    separatorBuilder: (context, index) => SizedBox(
                      height: 16.h,
                    ),
                    itemCount: items.length),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
