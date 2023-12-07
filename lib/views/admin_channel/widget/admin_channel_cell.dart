import 'package:demo/main.dart';
import 'package:demo/themes/colors.dart';
import 'package:demo/themes/style.dart';
import 'package:demo/utilities/constants.dart';
import 'package:demo/utilities/helper_ui.dart';
import 'package:demo/views/admin_channel/widget/bottom_sheet.dart';
import 'package:demo/views/detail_preview/detail_preview_page.dart';
import 'package:demo/views/home/preview_channal_page.dart';
import 'package:demo/views/reports/preview_report_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../../../themes/weights.dart';

class AdminChannelCell extends StatefulWidget {
  final bool isImage;
  final bool isOnlyText;

  const AdminChannelCell({Key? key,  this.isImage=false,  this.isOnlyText=false}) : super(key: key);

  @override
  _AdminChannelCellState createState() => _AdminChannelCellState();
}

class _AdminChannelCellState extends State<AdminChannelCell> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: Stack(
       fit: StackFit.passthrough,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 10.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  InkWell(
                    onTap: (){
                      // navigatorKey.currentState!.push(MaterialPageRoute(builder: (context)=>const DetailPreviewScreen()));
                      showBottomSheetModel(context, CommentBottomSheet());
                    },
                    child: Card(
                      color:AppColors.secondary,

                      child: Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 13.w,vertical: 5.h),
                        child: InkWell(
                          //onTap: ()=>        navigatorKey.currentState!.push(MaterialPageRoute(builder: (context)=>const PreviewReportScreen())),
                          child: SizedBox(
                            width: AppConstants.screenWidth,
                            child: Column(
                              children: [
                                if(!widget.isOnlyText)
                                Padding(
                                  padding: EdgeInsets.only(left: 70.w),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'file name',
                                            style: textStyle(
                                                14.sm, AppFontWeights.liteBold,AppColors.white),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'Size  ',
                                            style: textStyle(
                                                12.sm, AppFontWeights.normal,AppColors.white),
                                          ),
                                          Container(
                                            width:5.sm,
                                            height: 5.sm,
                                            decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: AppColors.white
                                            ),

                                          ),
                                          Text(
                                            '  2MB',
                                            style: textStyle(
                                                12.sm, AppFontWeights.medium,AppColors.white),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                if(!widget.isOnlyText)
                                SizedBox(height: 13.h,),
                                Text(
                                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s when an unknown printer took a galley of type and ...",
                                  style: textStyle(
                                      12.sm, AppFontWeights.normal, AppColors.white),
                                ),
                                SizedBox(height: 16.5.h,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [

                                            Image.asset('assets/comment.png',width: 16.w,),
                                            Text(
                                              '  222',
                                              style: textStyle(
                                                  12.sm, AppFontWeights.liteBold, AppColors.white),
                                            ),
                                          ],),
                                        SizedBox(width: 22.w,),
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [

                                            Image.asset('assets/downloads.png',width: 16.w,),
                                            Text(
                                              '  22',
                                              style: textStyle(
                                                  12.sm, AppFontWeights.liteBold, AppColors.white),
                                            ),
                                          ],),
                                        SizedBox(width: 22.w,),
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [

                                            Image.asset('assets/view.png',width: 16.w,),
                                            Text(
                                              '  12k',
                                              style: textStyle(
                                                  12.sm, AppFontWeights.liteBold, AppColors.white),
                                            ),
                                          ],),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          '1.2k  ',
                                          style: textStyle(
                                              12.sm, AppFontWeights.normal, AppColors.white.withOpacity(0.5)),
                                        ),

                                        Image.asset('assets/1e.png',width: 18.w,),
                                        SizedBox(width: 5.w,),
                                        Image.asset('assets/2e.png',width: 18.w,),
                                        SizedBox(width: 5.w,),
                                        Image.asset('assets/3e.png',width: 18.w,),
                                        SizedBox(width: 5.w,),
                                        Image.asset('assets/4e.png',width: 18.w,),

                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 3.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        '22. October 2022  18:45',
                        style: textStyle(
                            12.sm, AppFontWeights.normal, AppColors.white.withOpacity(0.5)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          if(!widget.isOnlyText)
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                width:50.sm,
                height: 50.sm,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.color7289DA,
                ),
                child: Padding(
                  padding: EdgeInsets.all(10.sm),
                  child: const Icon(Icons.file_present_rounded,color: AppColors.white,),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
