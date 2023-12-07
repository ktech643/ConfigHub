import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:demo/utilities/constants.dart';
import 'package:demo/views/home/list_page.dart';
import 'package:demo/views/home/preview_channal_page.dart';
import 'package:demo/views/news/create_news_and_updates_page.dart';
import 'package:demo/views/news/widget/news_cell.dart';
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

class NewsAndUpdateScreen extends StatefulWidget {
  const NewsAndUpdateScreen({Key? key}) : super(key: key);

  @override
  _NewsAndUpdateScreenState createState() => _NewsAndUpdateScreenState();
}

class _NewsAndUpdateScreenState extends State<NewsAndUpdateScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppColors.secondary,
        centerTitle: true,
        leading: InkWell(
          onTap: ()=>navigatorKey.currentState!.pop(),
          child: Center(child: Icon(Icons.arrow_back,color: AppColors.white,size: 25.sm,)),
        ),
        title:  Text(
          'News and updates',
          style: textStyle(
              16.sm, AppFontWeights.liteBold, AppColors.white),
        ),
      ),
      body: SizedBox(
        width: AppConstants.screenWidth,
        height: AppConstants.screenHeight,
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 15.w,vertical: 20.h),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        NewsCell(fromNnU: true,),
                        NewsCell(isImage: true,fromNnU: true,),
                        NewsCell(isOnlyText: true,fromNnU: true,),

                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(left: 15.w,bottom: 20.h,right: 15.w),
              child: Button(text: 'Create news or updates', callback: (){
                navigatorKey.currentState!.push(MaterialPageRoute(builder: (context)=>const CreateNewsAndUpdateScreen()));

              },borderColor: AppColors.secondary,buttonColor: AppColors.secondary,),
            ),
          ],
        ),
      ),
    );
  }
}
