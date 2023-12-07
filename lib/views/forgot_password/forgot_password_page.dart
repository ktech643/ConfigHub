import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../main.dart';
import '../../themes/colors.dart';
import '../../themes/style.dart';
import '../../themes/weights.dart';
import '../../widgets/button.dart';
import '../../widgets/text_field.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  var _emailCtr = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Form(
        key: _formKey,
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: AppColors.primary,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: 51.h, bottom: 22.h, right: 20.w, left: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                        onTap: () {
                          navigatorKey.currentState!.pop();
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: AppColors.color141414,
                          size: 25.sm,
                        )),
                    Text(
                      AppLocalizations.of(context)!.forgetPassword,
                      style: textStyle(
                          20.sm, AppFontWeights.bold, AppColors.color141414),
                    ),
                    SizedBox(
                      width: 25.sm,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.r),
                        topRight: Radius.circular(20.r)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 41.h,
                        ),
                        SimpleTextField(
                          hintText: AppLocalizations.of(context)!.email,
                          labelText: AppLocalizations.of(context)!.email,
                          image: 'assets/email.png',
                          textInputAction: TextInputAction.done,
                          keyboardType: TextInputType.emailAddress,
                          isEmail: true,
                          controller: _emailCtr,
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Button(
                            text: AppLocalizations.of(context)!.resetPassword,
                            callback: () {
                              _formKey.currentState!.validate();
                            }),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
