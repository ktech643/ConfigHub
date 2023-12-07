import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../main.dart';
import '../themes/colors.dart';
import '../themes/style.dart';
import '../themes/weights.dart';

// showErrorDialog(
//   BuildContext context,
//   String title,
//   String desc, {
//   final haveLeftButton,
//   onRightButtonPressed,
//   final rightButtonTitle,
//   final leftButtonTitle,
//   onLeftButtonPressed,
// }) {
//   showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return StoreConnector(
//           builder: (context, store) {
//             AppState appState = store.state;
//             return AlertDialog(
//               title: Text(
//                 title,
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               ),
//               content: Text(desc),
//               actions: <Widget>[
//                 TextButton(
//                   child: Text(rightButtonTitle ?? AppLocalizations.of(navigatorKey.currentContext).close),
//                   style: haveLeftButton != null
//                       ? ButtonStyle(
//                           foregroundColor:
//                               MaterialStateProperty.all(Colors.grey))
//                       : null,
//                   onPressed: onLeftButtonPressed ??
//                       () async {
//                         Navigator.pop(context);
//                       },
//                 ),
//                 if (haveLeftButton != null && haveLeftButton)
//                   TextButton(
//                     child: Text(leftButtonTitle ?? ''),
//                     onPressed: onRightButtonPressed,
//                   ),
//               ],
//             );
//           },
//           converter: (store) => store,
//         );
//       });
// }

class AppInputField extends StatelessWidget {
  final controller;
  final prefixIcon;
  final focus;
  final keyboardType;
  final nextFocus;
  final readOnly;
  final textInputAction;
  final maxLines;
  final required;
  final secure;
  final context;
  final placeholder;
  final backgroundColor;
  final borderColor;
  final fontSize;
  final enabled;
  final padding;
  final fontColor;
  final hintColor;
  final title;
  final onFieldSubmitted;
  final postfixIcon;
  final onChanged;
  final radius;
  final removePreFixConfig;
  final removePostFixConfig;
  final autoFocus;
  final validator;

  const AppInputField({
    Key? key,
    this.controller,
    this.prefixIcon,
    this.focus,
    this.keyboardType,
    this.nextFocus,
    this.readOnly,
    this.textInputAction,
    this.maxLines,
    this.required = false,
    this.secure,
    this.context,
    this.placeholder,
    this.backgroundColor,
    this.borderColor,
    this.fontSize,
    this.padding,
    this.fontColor,
    this.enabled,
    this.postfixIcon,
    this.title,
    this.onFieldSubmitted,
    this.onChanged,
    this.radius,
    this.removePreFixConfig = false,
    this.removePostFixConfig = false,
    this.hintColor,
    this.autoFocus = false,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    InputBorder _normalBorder;
    if (radius == null) {
      _normalBorder = UnderlineInputBorder(
        borderSide: BorderSide(
          color: borderColor ?? AppColors.colorDBDBDB,
        ),
      );
    } else {
      _normalBorder = OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(radius)),
        borderSide: BorderSide(
          color: borderColor ?? AppColors.colorF3F3F3,
        ),
      );
    }

    return TextFormField(
      autofocus: autoFocus,
      maxLines: maxLines ?? 1,
      readOnly: readOnly ?? false,
      controller: controller,
      focusNode: focus,
      cursorColor: fontColor ?? AppColors.color111111,
      textInputAction: textInputAction,
      enabled: enabled ?? true,
      keyboardType: keyboardType ?? TextInputType.text,
      style: TextStyle(
          fontSize: fontSize ?? 12.sp,
          color: fontColor ?? AppColors.color111111),
      onFieldSubmitted: onFieldSubmitted ??
          (value) {
            focus.unfocus();
            FocusScope.of(context).requestFocus(nextFocus);
          },
      onChanged: onChanged,
      validator: (value) {
        if (required && value!.isEmpty) {
          return value;
        }
        if (validator != null) {
          return validator(value);
        }
        return null;
      },
      obscureText: secure ?? false,
      decoration: InputDecoration(
        errorStyle: TextStyle(
          fontSize: 10.sp,
        ),
        isDense: true,
        contentPadding: padding ?? EdgeInsets.only(bottom: 9.h),
        hintStyle: TextStyle(
          fontSize: 12.sp,
          color: hintColor ?? AppColors.color999999,
        ),
        hintText: placeholder,
        prefixIconConstraints: removePreFixConfig
            ? null
            : const BoxConstraints(minWidth: 0, minHeight: 0),
        suffixIconConstraints: removePostFixConfig
            ? null
            : const BoxConstraints(minWidth: 0, minHeight: 0),
        prefixIcon: prefixIcon,
        suffixIcon: postfixIcon,
        disabledBorder: _normalBorder,
        enabledBorder: _normalBorder,
        focusedBorder: _normalBorder,
        border: _normalBorder,
        filled: true,
        fillColor: backgroundColor ?? Colors.transparent,
        errorBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.primary,
          ),
        ),
        focusedErrorBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.primary,
          ),
        ),
      ),
    );
  }
}

class AppInkwell extends StatelessWidget {
  final onTap;
  final child;
  const AppInkwell({Key? key, this.onTap, this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: onTap,
      child: child,
    );
  }
}

class AppScrollBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}

class AppScroll extends StatelessWidget {
  final child;
  const AppScroll({Key? key, this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: AppScrollBehavior(),
      child: SingleChildScrollView(
        child: child,
      ),
    );
  }
}


oneButtonDialog(
  BuildContext context,
  String title,
  String desc, {
  onButtonPressed,
  buttonTitle,
}) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
            return AlertDialog(
              title: Text(
                title,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              content: Text(desc),
              actions: <Widget>[
                TextButton(
                  child:
                      Text('button title'),
                  onPressed: onButtonPressed ??
                      () {
                    navigatorKey.currentState!.pop();
                      },
                ),
              ],
            );

      });
}


class Button extends StatefulWidget {

  final String lable;
  final Color color;
  const Button({required this.lable,this.color=AppColors.colorBA9A75});

  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.h),
      child: Container(
        width: double.infinity,
        height: 62.h,
        decoration: BoxDecoration(
          color: widget.color,
          borderRadius: BorderRadius.circular(10.sp),
        ),
        child: Center(
          child: Text(
            widget.lable,
            style: textStyle(19.sm, AppFontWeights.normal, AppColors.white),
          ),
        ),
      ),
    );
  }
}
typedef void VoidCallback(dynamic);
class AppMenu extends StatefulWidget {
  final VoidCallback onSelected;
  final List<PopupMenuItem> childrens;
  final Widget? child;
  final Color childColor;

  const AppMenu(
      {Key? key,
        required this.onSelected,
        required this.childrens,
        required this.child,
        this.childColor = AppColors.white})
      : super(key: key);

  @override
  State<AppMenu> createState() => _AppMenuState();
}

class _AppMenuState extends State<AppMenu> {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      child: widget.child ??
          Image.asset(
            'assets/options.png',
            scale: 4,
            color: widget.childColor,
          ),
      itemBuilder: (_) => widget.childrens,
      onSelected: widget.onSelected,
    );
  }
}





void showBottomSheetModel(context,Widget widget){
  showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: AppColors.background,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.r),
      ),
      builder: (BuildContext bc){
        return widget;
      }
  );
}


showDialogModel(
    BuildContext context,widget) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: AppColors.background,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: widget,
        );
      });
}
