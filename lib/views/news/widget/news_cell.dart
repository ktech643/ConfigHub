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

class NewsCell extends StatefulWidget {
  final bool isImage;
  final bool fromNnU;
  final bool isOnlyText;

  const NewsCell({Key? key,  this.isImage=false,  this.isOnlyText=false,this.fromNnU=false}) : super(key: key);

  @override
  _NewsCellState createState() => _NewsCellState();
}

class _NewsCellState extends State<NewsCell> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        InkWell(
          onTap: (){
            if(!widget.fromNnU)
            navigatorKey.currentState!.push(MaterialPageRoute(builder: (context)=>const DetailPreviewScreen()));
          },
          child: Card(
            color:AppColors.secondary,

            child: Padding(
              padding: const EdgeInsets.all(13.0),
              child: InkWell(
                //onTap: ()=>        navigatorKey.currentState!.push(MaterialPageRoute(builder: (context)=>const PreviewReportScreen())),
                child: SizedBox(
                  width: AppConstants.screenWidth,
                  child: Column(
                    children: [

                      widget.isImage?
                      Container(
                        width: double.infinity,
                        height: 159.sp,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.r),
                            color: AppColors.background,
                            image: DecorationImage(
                              image: AssetImage('assets/media.png'),
                              fit: BoxFit.fill,
                            )
                        ),
                      ):
                      widget.isOnlyText?SizedBox():
                      Container(
                        width: double.infinity,
                        height: 70.sp,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.r),
                          color: AppColors.background
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 130.w,
                              height: 70.sp,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.r),
                                  color: AppColors.background,
                                image: DecorationImage(
                                  image: AssetImage('assets/media.png'),
                                  fit: BoxFit.fill,
                                )
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 5.h),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width:198.w,
                                    child: Text(

                                      'Here is going some based title of sent link',
                                      style: textStyle(
                                          12.sm, AppFontWeights.normal,AppColors.white),
                                    ),
                                  ),
                                  SizedBox(
                                    width:198.w,
                                    child: Text(
                                      'www.site.com',
                                      style: textStyle(
                                          12.sm, AppFontWeights.normal,AppColors.white.withOpacity(0.5)),
                                    ),
                                  ),
                                ],
                              ),
                            )

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
        SizedBox(height: 8.h,),
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
    );
  }
}
