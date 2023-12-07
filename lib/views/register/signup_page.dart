import 'package:demo/utilities/constants.dart';
import 'package:demo/utilities/screen_navigator.dart';
import 'package:demo/views/admin_channel/admin_channel_page.dart';
import 'package:demo/views/register/signup_page.dart';
import 'package:demo/views/user_end/home_page.dart';
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

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  var _passwordCtr = TextEditingController();
  var _mobileCtr = TextEditingController();
  var _nameCtr = TextEditingController();
  var _emailCtr = TextEditingController();
  var _cityCtr = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool loader = false;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return AbsorbPointer(
      absorbing: loader,
      child: Scaffold(
        backgroundColor: AppColors.background,
        body: Form(
          key: _formKey,
          child: Container(
            width: AppConstants.screenWidth,
            height: AppConstants.screenHeight,
            color: Colors.transparent,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 156.h,
                    ),
                    Row(
                      children: [
                        Text(
                          'Register',
                          style: textStyle(
                              32.sm, AppFontWeights.liteBold, AppColors.white),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      'Sign up to access your package history and get real time update on all your shipments',
                      style: textStyle(
                          18.sm, AppFontWeights.normal, AppColors.color999999),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    SimpleTextField(
                      labelText: 'First Name',
                      hintText: 'First Name',
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    SimpleTextField(
                      labelText: 'Second Name',
                      hintText: 'Second Name',
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    SimpleTextField(
                      labelText: 'Username',
                      hintText: 'Username',
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    SimpleTextField(
                      labelText: 'Phone Number',
                      hintText: 'Phone Number',
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    SimpleTextField(
                      labelText: 'Email',
                      hintText: 'Email',
                    ),
                    SizedBox(
                      height: 36.h,
                    ),
                    SimpleTextField(
                      labelText: 'Password',
                      hintText: 'Password',
                      suffixIcon: Icon(
                        Icons.remove_red_eye_outlined,
                        size: 24.w,
                        color: Colors.white.withOpacity(0.50),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(
                                width: 20,
                                child: Checkbox(
                                    splashRadius: 0.0,
                                    side: BorderSide(
                                      // width: 1,
                                      color: Colors.white.withOpacity(0.50),
                                    ),
                                    activeColor: AppColors.primary,
                                    value: isChecked,
                                    onChanged: (v) {
                                      setState(() {
                                        isChecked = v!;
                                      });
                                    }),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Remember Me',
                                style: textStyle(16.sm, AppFontWeights.normal,
                                    AppColors.color666666),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Text(
                            'Forgot Password',
                            style: textStyle(
                                16.sm, AppFontWeights.normal, AppColors.white),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    InkWell(
                      onTap: () {
                        pop();
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Already have an Account? ",
                              style: textStyle(15.sm, AppFontWeights.medium,
                                  AppColors.white),
                            ),
                            Text(
                              "Sign In",
                              style: textStyle(16.sm, AppFontWeights.normal,
                                  AppColors.primary),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Button(
                        text: 'Sign Up',
                        callback: () {
                          pushAndRemoveUntil(UserHomeScreen(), '');
                        }),
                    SizedBox(
                      height: 25.h,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
