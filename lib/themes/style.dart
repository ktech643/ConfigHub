
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';
import 'package:flutter/cupertino.dart';

textStyle(fontSize,appFontWeight,color,{underline=false}){

  return GoogleFonts.openSans(textStyle: TextStyle(
    fontSize: fontSize,
    fontWeight: appFontWeight,
    color: color,
    decoration: underline? TextDecoration.underline:null,
  ));
}


BoxDecoration boxDecorationWithShadow({color=AppColors.white,radius=8.0}){
  return BoxDecoration(
    color: color,
    borderRadius: BorderRadius.circular(radius),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.2),
        spreadRadius: 4,
        blurRadius: 4,
        offset: Offset(0, 3), // changes position of shadow
      ),
    ],

  );
}

BoxDecoration boxDecorationWithoutShadow({color=AppColors.white,radius=8.0}){
  return BoxDecoration(
    color: color,
    borderRadius: BorderRadius.circular(radius),

  );
}