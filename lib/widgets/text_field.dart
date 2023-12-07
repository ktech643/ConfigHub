import 'package:demo/themes/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SimpleTextField extends StatefulWidget {
  FontWeight fontWeight;
  String? labelText, hintText;
  String? image;
  TextInputType? keyboardType;
  bool? isPasswordField;
  bool isMultiLineField;
  double padding;
  VoidCallback? onTap;
  bool dateField;
  TextEditingController? controller;
  String? yourInitialData;
  FocusNode? myFocusNode;
  bool isEmail,
      isFullname,
      isDropdown,
      isMobileNumber,
      isPrice,
      isAdTitle,
      isCity,
      isAdDetails;

  String? email, name;
  bool labelTextBehaveAuto, readOnly;
  TextInputAction? textInputAction;
  int? maxLen;
  Widget? prefixIcon;
  Widget? postfixIcon;
  Widget? suffixIcon;

  Color? hintColor;
  SimpleTextField(
      {Key? key,
      this.suffixIcon,
      this.hintColor,
      this.prefixIcon,
      this.postfixIcon,
      this.readOnly = false,
      this.maxLen,
      this.isMobileNumber = false,
      this.isAdTitle = false,
      this.isAdDetails = false,
      this.isCity = false,
      this.isPrice = false,
      this.isMultiLineField = false,
      this.labelText = ' ',
      this.hintText = ' ',
      this.isDropdown = false,
      this.image,
      this.labelTextBehaveAuto = false,
      this.padding = 0,
      this.keyboardType,
      this.isPasswordField = false,
      this.onTap = null,
      this.isEmail = false,
      this.isFullname = false,
      this.dateField = false,
      this.yourInitialData,
      this.myFocusNode,
      this.textInputAction,
      this.fontWeight = FontWeight.normal,
      this.controller})
      : super(key: key);

  @override
  State<SimpleTextField> createState() => _SimpleTextFieldState();
}

class _SimpleTextFieldState extends State<SimpleTextField> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: widget.padding),
      child: TextFormField(
        textAlign: widget.maxLen != null ? TextAlign.center : TextAlign.start,
        enabled: true,
        maxLength: widget.maxLen,
        maxLines: widget.isMultiLineField ? 4 : 1,
        focusNode: widget.myFocusNode,
        onTap: widget.onTap,
        controller: widget.controller,
        textInputAction: TextInputAction.done,
        readOnly: widget.readOnly,
        cursorColor: AppColors.white,
        keyboardType: widget.keyboardType,
        obscureText: widget.isPasswordField! ? obscureText : false,
        obscuringCharacter: '*',
        style: const TextStyle(
          color: AppColors.white,
        ),
        initialValue: widget.yourInitialData,
        decoration: InputDecoration(
          filled: true,
          counterText: '',
          fillColor: AppColors.secondary,
          labelText: widget.labelText,
          labelStyle: TextStyle(
            color: AppColors.color999999,
          ),

          hintText: widget.hintText,
          floatingLabelBehavior: widget.labelTextBehaveAuto
              ? FloatingLabelBehavior.auto
              : FloatingLabelBehavior.never,
          hintStyle: TextStyle(
            color: widget.hintColor ?? AppColors.color999999,
          ),

          contentPadding: widget.isMultiLineField
              ? EdgeInsets.all(20)
              : EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          suffixIcon: widget.suffixIcon ??
              (widget.isPasswordField!
                  ? InkWell(
                      onTap: () {
                        setState(() {
                          obscureText = !obscureText;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Icon(
                          obscureText ? Icons.visibility : Icons.visibility_off,
                          color: AppColors.color999999,
                        ),
                      ),
                    )
                  : null),
          prefixIcon: widget.prefixIcon ??
              (widget.isMultiLineField ||
                      widget.maxLen != null ||
                      widget.image == null
                  ? null
                  : InkWell(
                      onTap: widget.onTap,
                      child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Image.asset(
                            widget.image!,
                            scale: 3.5,
                            color: AppColors.color999999,
                            height: 20.h,
                          )),
                    )),
          border: myinputborder(isMulti: widget.isMultiLineField),
          focusedErrorBorder: myinputborder(isMulti: widget.isMultiLineField),
          errorBorder: myinputborder(isMulti: widget.isMultiLineField),
          enabledBorder: myinputborder(isMulti: widget.isMultiLineField),
          //enabled border
          focusedBorder:
              myfocusborder(isMulti: widget.isMultiLineField), //focused border
        ),
        onChanged: (value) {
          if (widget.maxLen != null) {
            if (value.trim().isNotEmpty) {
              FocusScope.of(context).nextFocus();
            } else {
              FocusScope.of(context).previousFocus();
            }
          }
        },
        validator: (String? value) {
          if (widget.isPasswordField!) {
            return passwordFieldError(value);
          } else if (widget.isMobileNumber) {
            return mobileFieldError(value);
          } else if (widget.isFullname) {
            return nameFieldError(value);
          } else if (widget.isEmail) {
            return emailFieldError(value);
          } else if (widget.isCity) {
            return cityFieldError(value);
          } else if (widget.readOnly) {
            return dobFieldError(value);
          }
          return null;
        },
      ),
    );
  }

  String? mobileFieldError(String? value) {
    if (value!.isEmpty) {
      return 'Enter Phone Number';
    } else if (value.length < 11) {
      return 'Enter valid Phone Number';
    }
    return null;
  }

  String? passwordFieldError(String? value) {
    if (value!.isEmpty) {
      return 'Enter Password';
    }
    return null;
  }

  String? nameFieldError(String? value) {
    if (value!.isEmpty) {
      return 'Enter Your Name';
    }
    return null;
  }

  String? dobFieldError(String? value) {
    if (value!.isEmpty) {
      return 'Enter Your Date of Birth';
    }
    return null;
  }

  String? cityFieldError(String? value) {
    if (value!.isEmpty) {
      return 'Enter City';
    }
    return null;
  }

  String? emailFieldError(String? value) {
    if (value!.isEmpty) {
      return 'Enter Your Email';
    } else if (!RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(value)) {
      return 'Enter Valid Email';
    }
    return null;
  }
}

OutlineInputBorder myinputborder({isMulti = false}) {
  //return type is OutlineInputBorder
  return OutlineInputBorder(

      //Outline border type for TextFeild
      borderRadius: BorderRadius.all(Radius.circular(10.r)),
      borderSide: BorderSide(
        color: AppColors.secondary,
      ));
}

OutlineInputBorder myfocusborder({isMulti = false}) {
  return OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10.r)),
      borderSide: BorderSide(
        color: AppColors.secondary,
      ));
}
