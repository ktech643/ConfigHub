import 'package:demo/main.dart';
import 'package:demo/themes/colors.dart';
import 'package:demo/themes/style.dart';
import 'package:demo/utilities/constants.dart';
import 'package:demo/views/home/preview_channal_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../../../themes/weights.dart';

class ListCell extends StatefulWidget {
  final data;
  final int index;
  const ListCell({Key? key, this.data, required this.index}) : super(key: key);

  @override
  _ListCellState createState() => _ListCellState();
}

class _ListCellState extends State<ListCell> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: ()=>        navigatorKey.currentState!.push(MaterialPageRoute(builder: (context)=>const PreviewChannelScreen())),
      child: SizedBox(
        width: AppConstants.screenWidth,
        child: Row(
          children: [
            Container(
              width: 50.sm,
              height: 50.sm,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/profile.png'),
                    fit: BoxFit.cover,
                  )
              ),
            ),
            SizedBox(width: 16.w,),

            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.data[widget.index]['title'],
                  style: textStyle(
                      16.sm, AppFontWeights.liteBold, AppColors.white),
                ),
                SizedBox(height: 8.h,),
                SizedBox(
                  width: AppConstants.screenWidth*0.7,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text(
                      widget.data[widget.index]['subTitle'],
                      style: textStyle(
                          12.sm, AppFontWeights.normal, AppColors.color7289DA),
                    ),
                    Text(
                      widget.data[widget.index]['member'],
                      style: textStyle(
                          12.sm, AppFontWeights.normal, AppColors.color7D7D7D),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 7.sp,
                          height: 7.sp,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.color235610,
                          ),
                        ),
                        Text(
                          ' '+widget.data[widget.index]['online'],
                          style: textStyle(
                              12.sm, AppFontWeights.normal, AppColors.color7D7D7D),
                        ),
                      ],
                    ),
                  ],),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
