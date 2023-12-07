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

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  List socialLogin = [
    // {
    //   'image': 'assets/fb.png',
    //   'title': 'Continue with Facebook',
    //   'onTap': () {}
    // },
    {
      'image': 'assets/google.png',
      'title': 'Continue with Google',
      'onTap': () {}
    },
    // {
    //   'image': 'assets/twitter.png',
    //   'title': 'Continue with Twitter',
    //   'onTap': () {}
    // }
  ];
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
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Container(
              width: AppConstants.screenWidth,
              height: AppConstants.screenHeight,
              color: Colors.transparent,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                child: Column(
                  children: [
                    SizedBox(
                      height: 156.h,
                    ),
                    Image.asset(
                      'assets/logo.png',
                      width: 150.w,
                    ),

                    Text(
                      'ConfigHub',
                      style: textStyle(
                          32.sm, AppFontWeights.liteBold, AppColors.white),
                    ),
                    SizedBox(
                      height: 36.h,
                    ),
                    SimpleTextField(
                      labelText: 'Email/Phone Number',
                      hintText: 'Email/Phone Number',
                    ),
                    SizedBox(
                      height: 36.h,
                    ),
                    SimpleTextField(
                      labelText: 'Password',
                      hintText: 'Password',
                      suffixIcon: Icon(
                        Icons.remove_red_eye_outlined,
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
                    ListView.separated(
                        shrinkWrap: true,
                        padding: EdgeInsets.zero,
                        physics: NeverScrollableScrollPhysics(),
                        primary: true,
                        itemBuilder: (context, index) => InkWell(
                              onTap: () {
                                // if(index==0) {
                                //   navigatorKey.currentState!
                                //       .pushAndRemoveUntil(
                                //       MaterialPageRoute(
                                //           builder: (context) =>
                                //               BottomNavBar()),
                                //           (Route<dynamic> route) => false);
                                // }else{
                                // navigatorKey.currentState!
                                //     .pushAndRemoveUntil(
                                //     MaterialPageRoute(
                                //         builder: (context) =>
                                //             AdminChannelScreen()),
                                //         (Route<dynamic> route) => false);
                                // }
                              },
                              child: Container(
                                width: double.infinity,
                                height: 50.h,
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(5.r),
                                    border: Border.all(color: AppColors.white)),
                                child: Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 15.w),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        socialLogin[index]['image'],
                                        width: 28.w,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        socialLogin[index]['title'],
                                        style: textStyle(
                                            16.sm,
                                            AppFontWeights.normal,
                                            AppColors.white),
                                      ),
                                      SizedBox(),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                        separatorBuilder: (context, index) => SizedBox(
                              height: 10.h,
                            ),
                        itemCount: socialLogin.length),
                    Expanded(child: Container()),
                    InkWell(
                      onTap: () {
                        push(SignupScreen(), '');
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Don't have an Account? ",
                              style: textStyle(15.sm, AppFontWeights.medium,
                                  AppColors.white),
                            ),
                            Text(
                              "Create an account",
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
                        text: 'Sign In',
                        callback: () {
                          pushAndRemoveUntil(UserHomeScreen(), '');
                        }),

                    // SizedBox(height: 30.h,),
                    // SizedBox(
                    //   width: AppConstants.screenWidth,
                    //   height:  18.sm,
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.center,
                    //     children: [
                    //       Expanded(child: Divider(color: AppColors.white,)),
                    //       Text(
                    //         "  Or  ",
                    //         style: textStyle(
                    //             16.sm,
                    //             AppFontWeights.medium,
                    //             AppColors.white),
                    //       ),
                    //       Expanded(child: Divider(color: AppColors.white,)),
                    //     ],
                    //   ),
                    // ),
                    // SizedBox(height: 20.h,),

                    SizedBox(
                      height: 40.h,
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
