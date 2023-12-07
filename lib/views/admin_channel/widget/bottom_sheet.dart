import 'package:demo/main.dart';
import 'package:demo/themes/colors.dart';
import 'package:demo/themes/style.dart';
import 'package:demo/utilities/constants.dart';
import 'package:demo/utilities/screen_navigator.dart';
import 'package:demo/views/detail_preview/detail_preview_page.dart';
import 'package:demo/views/home/preview_channal_page.dart';
import 'package:demo/views/reports/preview_report_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../../themes/weights.dart';
import '../remove_user_page.dart';

class CommentBottomSheet extends StatefulWidget {
  const CommentBottomSheet({Key? key}) : super(key: key);

  @override
  _CommentBottomSheetState createState() => _CommentBottomSheetState();
}

class _CommentBottomSheetState extends State<CommentBottomSheet> {
  List items = [
    {
      'title': 'Delete message',
      'icon': Icons.delete_outline_outlined,
      'onTap': () {},
      'color': AppColors.colorDC5050,
    },
    {
      'title': 'Pin Message',
      'icon': Icons.mode_edit_outline_outlined,
      'onTap': () {},
      'color': AppColors.colorF5692D,
    },
    {
      'title': 'Edit message',
      'icon': Icons.mode_edit_outline_outlined,
      'onTap': () {},
      'color': AppColors.colorF5692D,
    },
    {
      'title': 'Copy message',
      'icon': Icons.copy,
      'onTap': () {},
      'color': AppColors.color898989,
    },
    {
      'title': 'Share',
      'icon': Icons.share,
      'onTap': () {},
      'color': AppColors.color34A2DF,
    },
    {
      'title': 'Copy link',
      'icon': Icons.copy,
      'onTap': () {},
      'color': AppColors.colorCBB439,
    },
    {
      'title': 'Download',
      'icon': Icons.download,
      'onTap': () {},
      'color': AppColors.color7289DA,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.all(16.h),
            child: Container(
              width: 50.w,
              height: 8.h,
              decoration: BoxDecoration(
                color: AppColors.secondary,
                borderRadius: BorderRadius.circular(10.r),
              ),
            ),
          ),
          ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      // if(index==0)
                      //   navigatorKey.currentState!.push(MaterialPageRoute(builder: (context)=>const MemberScreen()));
                      // else if(index==1)
                      //   navigatorKey.currentState!.push(MaterialPageRoute(builder: (context)=>const AdminScreen()));
                      // else if(index==2)
                      //   navigatorKey.currentState!.push(MaterialPageRoute(builder: (context)=>const RemoveUserScreen()));
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 10.h, horizontal: 33.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                items[index]['icon'],
                                size: 24.w,
                                color: items[index]['color'],
                              ),
                              SizedBox(
                                width: 28.w,
                              ),
                              Text(
                                items[index]['title'],
                                style: textStyle(
                                    14.sm,
                                    AppFontWeights.normal,
                                    index == 0
                                        ? items[index]['color']
                                        : AppColors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
              separatorBuilder: (context, index) => Divider(
                    color: AppColors.color666666,
                  ),
              itemCount: items.length),
        ],
      ),
    );
  }
}

class AdminChannelBottomSheet extends StatefulWidget {
  final bool fromAdministration;
  const AdminChannelBottomSheet({Key? key, this.fromAdministration = false})
      : super(key: key);

  @override
  _AdminChannelBottomSheetState createState() =>
      _AdminChannelBottomSheetState();
}

class _AdminChannelBottomSheetState extends State<AdminChannelBottomSheet> {
  List items = [
    {
      'title': 'Promote to administrator',
      'icon': 'assets/admin.png',
      'onTap': () {},
      'color': AppColors.color7D7D7D,
    },
    {
      'title': 'Remove from channel',
      'icon': 'assets/reject.png',
      'onTap': () {
        push(RemoveUserScreen(), '');
      },
      'color': AppColors.colorDC5050,
    },
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    items = [];
    if (widget.fromAdministration) {
      items.add(
        {
          'title': 'Promote to administrator',
          'icon': 'assets/admin.png',
          'onTap': () {},
          'color': AppColors.color7D7D7D,
        },
      );
    }
    items.add(
      {
        'title': 'Remove from channel',
        'icon': 'assets/reject.png',
        'onTap': () {},
        'color': AppColors.colorDC5050,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.all(16.h),
            child: Container(
              width: 50.w,
              height: 8.h,
              decoration: BoxDecoration(
                color: AppColors.secondary,
                borderRadius: BorderRadius.circular(10.r),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 33.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        // color: AppColors.color7289DA,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                          width: 45.sm,
                          height: 45.sm,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage('assets/profile.png'),
                                fit: BoxFit.cover,
                              )),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 22.w,
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Arnold kelly',
                          style: textStyle(
                              16.sm, AppFontWeights.liteBold, AppColors.white),
                        ),
                        Text(
                          'Self joined',
                          style: TextStyle(
                              color: Color(0xFF32B5AD).withOpacity(0.50),
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              height: 0),
                        ),
                      ],
                    ),
                  ],
                ),
                Icon(
                  Icons.close,
                  color: AppColors.white,
                  size: 24.h,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: dividerWidget(),
          ),
          ListView.separated(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      push(RemoveUserScreen(), '');
                      // if(index==0)
                      //   navigatorKey.currentState!.push(MaterialPageRoute(builder: (context)=>const MemberScreen()));
                      // else if(index==1)
                      //   navigatorKey.currentState!.push(MaterialPageRoute(builder: (context)=>const AdminScreen()));
                      // else if(index==2)
                      //   navigatorKey.currentState!.push(MaterialPageRoute(builder: (context)=>const RemoveUserScreen()));
                    },
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 10.h, horizontal: 33.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xFF7D7D7D),
                                        ),
                                        child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: SvgPicture.asset(
                                                'assets/adminn.svg'))),
                                    SizedBox(
                                      width: 28.w,
                                    ),
                                    Text(
                                      "Promote to administrator",
                                      style: textStyle(
                                          14.sm,
                                          AppFontWeights.normal,
                                          index == 0
                                              ? Colors.white
                                              : AppColors.white),
                                    ),
                                  ],
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xFF7D7D7D),
                                size: 20.h,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 10.h, horizontal: 33.w),
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
                                        color: items[index]['color'],
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image.asset(
                                          items[index]['icon'],
                                          width: 24.w,
                                        ),
                                      )),
                                  SizedBox(
                                    width: 28.w,
                                  ),
                                  Text(
                                    items[index]['title'],
                                    style: textStyle(
                                        14.sm,
                                        AppFontWeights.normal,
                                        index == 0
                                            ? Colors.white
                                            : AppColors.white),
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xFF7D7D7D),
                                size: 20.h,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
              separatorBuilder: (context, index) => Divider(
                    color: AppColors.color666666,
                  ),
              itemCount: items.length),
        ],
      ),
    );
  }
}
