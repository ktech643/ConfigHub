import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../themes/colors.dart';
import '../themes/style.dart';
import '../themes/weights.dart';
typedef void VoidCallback();
class Button extends StatefulWidget {
  final String text;
  final VoidCallback callback;
  final bool loading;
  final double height;
  final double width;
  final Color buttonColor;
  final double textSize;
  final Color borderColor;
  final Color textColor;
  const Button({this.textSize=16,this.textColor=AppColors.white,required this.text,
    required this.callback,this.loading=false,this.buttonColor=AppColors.primary,
    this.borderColor=AppColors.primary,this.height=50,this.width=double.infinity});

  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: widget.callback,
        child: Container(
          width: widget.width,
          height: widget.height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            border: Border.all(color: widget.borderColor),
            color: widget.buttonColor,
            // gradient: LinearGradient(colors: [AppColors.colorED1C62, AppColors.primary],
            //   begin: Alignment.centerLeft,
            //   end: Alignment.centerRight,
            // ),
          ),
          child: Center(child:widget.loading?CircularProgressIndicator(color: widget.textColor,): Text(widget.text,style: textStyle(widget.textSize, AppFontWeights.liteBold,widget.textColor),)),
        ));
  }
}
