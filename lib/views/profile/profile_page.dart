// import 'package:darsi/state/app_state.dart';
// import 'package:darsi/themes/colors.dart';
// import 'package:darsi/utilities/constants.dart';
// import 'package:darsi/views/notifiction/notification_page.dart';
// import 'package:darsi/views/profile/completed_classes_page.dart';
// import 'package:darsi/views/profile/education_and_experiance_page.dart';
// import 'package:darsi/views/profile/manage_time_slots_page.dart';
// import 'package:darsi/views/profile/payment_history_page.dart';
// import 'package:darsi/views/settings/edit_profile_page.dart';
// import 'package:darsi/views/settings/setting_page.dart';
// import 'package:flutter/material.dart';
// import 'dart:math' as math;
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// import 'package:provider/provider.dart';
// import '../../main.dart';
// import '../../themes/colors.dart';
// import '../../themes/style.dart';
// import '../../themes/weights.dart';
// import '../../utilities/constants.dart';
// import '../../widgets/button.dart';
// import '../find_tutor/top_tutor_page.dart';

// class ProfileScreen extends StatefulWidget {
//   final bool studentViewTutorProfile;
//   const ProfileScreen({Key? key, this.studentViewTutorProfile = false})
//       : super(key: key);

//   @override
//   _ProfileScreenState createState() => _ProfileScreenState();
// }

// class _ProfileScreenState extends State<ProfileScreen> {
//   late List proItems;

//   studentItems(context) {
//     proItems = [
//       {
//         'icon': 'assets/classes.png',
//         'label': AppLocalizations.of(context)!.completed_classes
//       },
//       {
//         'icon': 'assets/card.png',
//         'label': AppLocalizations.of(context)!.payment_history
//       },
//       {
//         'icon': 'assets/teacher.png',
//         'label': AppLocalizations.of(context)!.tutor_list
//       }
//     ];
//   }

//   tutorItems(context) {
//     proItems = [
//       {
//         'icon': 'assets/calendar.png',
//         'label': AppLocalizations.of(context)!.manage_time_slots
//       },
//       {
//         'icon': 'assets/teacher.png',
//         'label': AppLocalizations.of(context)!.education_and_experience
//       },
//       {
//         'icon': 'assets/classes.png',
//         'label': AppLocalizations.of(context)!.completed_classes
//       },
//       {
//         'icon': 'assets/card.png',
//         'label': AppLocalizations.of(context)!.payment_history
//       },
//     ];
//   }

//   studentViewTutorItems(context) {
//     proItems = [
//       {
//         'icon': 'assets/teacher.png',
//         'label': AppLocalizations.of(context)!.experience_and_qualification
//       },
//       {
//         'icon': 'assets/classes.png',
//         'label': AppLocalizations.of(context)!.reviews
//       },
//     ];
//   }

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     state = Provider.of<AppState>(context, listen: false);
//   }

//   late AppState state;
//   int? selectedIndex;
//   @override
//   Widget build(BuildContext context) {
//     // if(state.isStudent)
//     //   studentItems(context);
//     // else
//     //   tutorItems(context);
//     tutorItems(context);
//     return Scaffold(
//       body: Container(
//         width: MediaQuery.of(context).size.width,
//         height: double.infinity,
//         color: AppColors.white,
//         child: Column(
//           children: [
//             SizedBox(
//               width: MediaQuery.of(context).size.width,
//               height: 220.h,
//               child: Stack(
//                 children: [
//                   Align(
//                     alignment: Alignment.topCenter,
//                     child: Container(
//                       width: MediaQuery.of(context).size.width,
//                       height: 154.h,
//                       decoration: BoxDecoration(
//                         color: AppColors.primary,
//                         borderRadius: BorderRadius.only(
//                             bottomRight: Radius.circular(20.sm),
//                             bottomLeft: Radius.circular(20.sm)),
//                       ),
//                       child: Column(
//                         children: [
//                           SizedBox(
//                             height: 30.h,
//                           ),
//                           Padding(
//                             padding: EdgeInsets.symmetric(horizontal: 10.w),
//                             child: !widget.studentViewTutorProfile
//                                 ? Row(
//                                     mainAxisAlignment: MainAxisAlignment.end,
//                                     children: [
//                                       InkWell(
//                                         onTap: () {
//                                           navigatorKey.currentState!.push(
//                                               MaterialPageRoute(
//                                                   builder: (context) =>
//                                                       NotificationScreen()));
//                                         },
//                                         child: Padding(
//                                           padding: const EdgeInsets.all(10.0),
//                                           child: Icon(
//                                             Icons.notifications,
//                                             size: 20.sp,
//                                             color: AppColors.white,
//                                           ),
//                                         ),
//                                       ),
//                                       InkWell(
//                                         onTap: () {
//                                           navigatorKey.currentState!.push(
//                                               MaterialPageRoute(
//                                                   builder: (context) =>
//                                                       SettingsScreen()));
//                                         },
//                                         child: Padding(
//                                           padding: const EdgeInsets.all(10),
//                                           child: Icon(
//                                             Icons.settings,
//                                             size: 20.sp,
//                                             color: AppColors.white,
//                                           ),
//                                         ),
//                                       ),
//                                     ],
//                                   )
//                                 : Row(
//                                     mainAxisAlignment: MainAxisAlignment.end,
//                                     children: [
//                                       InkWell(
//                                         onTap: () {},
//                                         child: Padding(
//                                           padding: const EdgeInsets.all(10.0),
//                                           child: Transform.rotate(
//                                               angle: (-math.pi * 0.25),
//                                               child: Icon(
//                                                 Icons.send,
//                                                 size: 20.sp,
//                                                 color: AppColors.white,
//                                               )),
//                                         ),
//                                       ),
//                                       InkWell(
//                                         onTap: () {},
//                                         child: Padding(
//                                           padding: const EdgeInsets.all(10.0),
//                                           child: Icon(
//                                             Icons.message,
//                                             size: 20.sp,
//                                             color: AppColors.white,
//                                           ),
//                                         ),
//                                       ),
//                                       InkWell(
//                                         onTap: () {},
//                                         child: Padding(
//                                           padding: const EdgeInsets.all(10),
//                                           child: Icon(
//                                             Icons.share,
//                                             size: 20.sp,
//                                             color: AppColors.white,
//                                           ),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   Align(
//                     alignment: Alignment.bottomCenter,
//                     child: Container(
//                       width: 120.sm,
//                       height: 120.sm,
//                       decoration: BoxDecoration(
//                         shape: BoxShape.circle,
//                         border: Border.all(color: AppColors.white, width: 3.0),
//                         image: const DecorationImage(
//                           image: AssetImage('assets/sliderImage.png'),
//                           fit: BoxFit.fill,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: 10.h,
//             ),
//             Row(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Text(
//                   state.isStudent ? 'Student Name' : 'Tutor Name',
//                   style: textStyle(
//                       18.sm, AppFontWeights.semiBold, AppColors.color141414),
//                 ),
//                 InkWell(
//                   onTap: () {
//                     navigatorKey.currentState!.push(MaterialPageRoute(
//                         builder: (context) => const EditProfileScreen()));
//                   },
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Icon(
//                       Icons.edit,
//                       size: 20.sp,
//                       color: AppColors.color999999,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 10.h,
//             ),
//             Text(
//               'Grade',
//               style: textStyle(
//                   16.sm, AppFontWeights.normal, AppColors.color666666),
//             ),
//             SizedBox(
//               height: 10.h,
//             ),
//             if (!state.isStudent)
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Container(
//                     width: 32.sp,
//                     height: 32.sp,
//                     decoration: BoxDecoration(
//                         border: Border.all(color: AppColors.color999999),
//                         shape: BoxShape.circle),
//                     child: Padding(
//                       padding: const EdgeInsets.all(5.0),
//                       child: Image.asset('assets/skype.png'),
//                     ),
//                   ),
//                   SizedBox(
//                     width: 20.w,
//                   ),
//                   Container(
//                     width: 32.sp,
//                     height: 32.sp,
//                     decoration: BoxDecoration(
//                         border: Border.all(color: AppColors.color999999),
//                         shape: BoxShape.circle),
//                     child: Padding(
//                       padding: const EdgeInsets.all(5.0),
//                       child: Image.asset('assets/facetime.png'),
//                     ),
//                   ),
//                   SizedBox(
//                     width: 20.w,
//                   ),
//                   Container(
//                     width: 32.sp,
//                     height: 32.sp,
//                     decoration: BoxDecoration(
//                         border: Border.all(color: AppColors.color999999),
//                         shape: BoxShape.circle),
//                     child: Padding(
//                       padding: const EdgeInsets.all(5.0),
//                       child: Image.asset('assets/google_meet.png'),
//                     ),
//                   ),
//                 ],
//               ),
//             if (!state.isStudent)
//               SizedBox(
//                 height: 20.h,
//               ),
//             if (widget.studentViewTutorProfile)
//               Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 90.w),
//                 child: Button(
//                   text: AppLocalizations.of(context)!.available_time_slot,
//                   textSize: 14,
//                   callback: () {},
//                   textColor: AppColors.color141414,
//                   buttonColor: AppColors.colorFFE08E,
//                   borderColor: AppColors.colorFFE08E,
//                 ),
//               ),
//             SizedBox(
//               height: 20.h,
//             ),
//             Divider(
//               color: AppColors.color666666,
//               height: 0.h,
//               thickness: 1,
//             ),
//             if (!state.isStudent)
//               Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Row(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.symmetric(vertical: 10),
//                         child: Container(
//                           width: AppConstants.screenWidth / 4,
//                           child: Center(
//                             child: Column(
//                               mainAxisSize: MainAxisSize.min,
//                               children: [
//                                 Text(
//                                   'Live in',
//                                   style: textStyle(10.sm, AppFontWeights.normal,
//                                       AppColors.color666666),
//                                 ),
//                                 Text(
//                                   'Riyadh',
//                                   style: textStyle(14.sm, AppFontWeights.normal,
//                                       AppColors.black),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                       SizedBox(
//                           height: 50.h,
//                           child: VerticalDivider(
//                             color: AppColors.color666666,
//                             thickness: 1,
//                             width: 0,
//                           )),
//                       Padding(
//                         padding: const EdgeInsets.symmetric(vertical: 10),
//                         child: Container(
//                           width: AppConstants.screenWidth / 4,
//                           child: Center(
//                             child: Column(
//                               mainAxisSize: MainAxisSize.min,
//                               children: [
//                                 Text(
//                                   'Teaching Hours',
//                                   style: textStyle(10.sm, AppFontWeights.normal,
//                                       AppColors.color666666),
//                                 ),
//                                 Text(
//                                   '12hrs',
//                                   style: textStyle(14.sm, AppFontWeights.normal,
//                                       AppColors.black),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                       SizedBox(
//                           height: 50.h,
//                           child: VerticalDivider(
//                             color: AppColors.color666666,
//                             thickness: 1,
//                             width: 0,
//                           )),
//                       Padding(
//                         padding: const EdgeInsets.symmetric(vertical: 10),
//                         child: Container(
//                           width: AppConstants.screenWidth / 4,
//                           child: Center(
//                             child: Column(
//                               mainAxisSize: MainAxisSize.min,
//                               children: [
//                                 Text(
//                                   'Rating & Review',
//                                   style: textStyle(10.sm, AppFontWeights.normal,
//                                       AppColors.color666666),
//                                 ),
//                                 Row(
//                                   mainAxisSize: MainAxisSize.min,
//                                   children: [
//                                     Icon(
//                                       Icons.star,
//                                       color: Colors.amberAccent,
//                                       size: 15,
//                                     ),
//                                     Text(
//                                       '4.7 (100)',
//                                       style: textStyle(
//                                           14.sm,
//                                           AppFontWeights.normal,
//                                           AppColors.black),
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                       SizedBox(
//                           height: 50.h,
//                           child: VerticalDivider(
//                             color: AppColors.color666666,
//                             thickness: 1,
//                             width: 0,
//                           )),
//                       Padding(
//                         padding: const EdgeInsets.symmetric(vertical: 10),
//                         child: Container(
//                           width: AppConstants.screenWidth / 4,
//                           child: Center(
//                             child: Column(
//                               mainAxisSize: MainAxisSize.min,
//                               children: [
//                                 Text(
//                                   'Charges',
//                                   style: textStyle(10.sm, AppFontWeights.normal,
//                                       AppColors.color666666),
//                                 ),
//                                 Text(
//                                   '12SR/hr',
//                                   style: textStyle(14.sm, AppFontWeights.normal,
//                                       AppColors.black),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             if (!state.isStudent)
//               Divider(
//                 color: AppColors.color666666,
//                 height: 0.h,
//                 thickness: 1,
//               ),
//             Expanded(
//               child: Container(
//                 child: SingleChildScrollView(
//                   child: Column(
//                     children: [
//                       SizedBox(
//                         height: 20.h,
//                       ),
//                       Padding(
//                         padding: EdgeInsets.symmetric(horizontal: 20.w),
//                         child: ListView.separated(
//                             padding: EdgeInsets.all(0),
//                             shrinkWrap: true,
//                             primary: true,
//                             physics: NeverScrollableScrollPhysics(),
//                             itemBuilder: (BuildContext context, int index) {
//                               return InkWell(
//                                 onTap: () {
//                                   if (state.isStudent) {
//                                     if (index == 2) {
//                                       navigatorKey.currentState!.push(
//                                           MaterialPageRoute(
//                                               builder: (context) =>
//                                                   const TopTutorScreen()));
//                                     } else if (index == 0) {
//                                       navigatorKey.currentState!.push(
//                                           MaterialPageRoute(
//                                               builder: (context) =>
//                                                   const CompleteClassesScreen()));
//                                     } else if (index == 1) {
//                                       navigatorKey.currentState!.push(
//                                           MaterialPageRoute(
//                                               builder: (context) =>
//                                                   const PaymentHistoryScreen()));
//                                     }
//                                   } else if (!state.isStudent) {
//                                     if (index == 0) {
//                                       navigatorKey.currentState!.push(
//                                           MaterialPageRoute(
//                                               builder: (context) =>
//                                                   const ManageTimeSlotScreen()));
//                                     } else if (index == 1) {
//                                       navigatorKey.currentState!.push(
//                                           MaterialPageRoute(
//                                               builder: (context) =>
//                                                   const EducationAndExperienceScreen()));
//                                     } else if (index == 2) {
//                                       navigatorKey.currentState!.push(
//                                           MaterialPageRoute(
//                                               builder: (context) =>
//                                                   const CompleteClassesScreen()));
//                                     } else if (index == 3) {
//                                       navigatorKey.currentState!.push(
//                                           MaterialPageRoute(
//                                               builder: (context) =>
//                                                   const PaymentHistoryScreen()));
//                                     }
//                                   } else {
//                                     if (selectedIndex != null &&
//                                         selectedIndex == index) {
//                                       selectedIndex = null;
//                                     } else {
//                                       selectedIndex = index;
//                                     }
//                                     setState(() {});
//                                   }
//                                 },
//                                 child: Column(
//                                   mainAxisSize: MainAxisSize.min,
//                                   children: [
//                                     Row(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.spaceBetween,
//                                       children: [
//                                         Row(
//                                           mainAxisSize: MainAxisSize.min,
//                                           children: [
//                                             Container(
//                                               width: 42.sp,
//                                               height: 42.sp,
//                                               decoration: BoxDecoration(
//                                                 color: AppColors.primary
//                                                     .withOpacity(0.05),
//                                                 borderRadius:
//                                                     BorderRadius.circular(
//                                                         10.sm),
//                                               ),
//                                               child: Padding(
//                                                 padding:
//                                                     const EdgeInsets.all(10.0),
//                                                 child: Image.asset(
//                                                     proItems[index]['icon']),
//                                               ),
//                                             ),
//                                             SizedBox(
//                                               width: 16.w,
//                                             ),
//                                             Text(
//                                               proItems[index]['label'],
//                                               style: textStyle(
//                                                   16.sm,
//                                                   AppFontWeights.normal,
//                                                   AppColors.color141414),
//                                             ),
//                                           ],
//                                         ),
//                                         Transform.rotate(
//                                             angle: selectedIndex != null &&
//                                                     selectedIndex == index
//                                                 ? (-math.pi / 2)
//                                                 : 0,
//                                             child: Icon(
//                                               Icons.arrow_forward_ios_rounded,
//                                               size: 20.sp,
//                                               color: AppColors.color141414,
//                                             )),
//                                       ],
//                                     ),
//                                     if (selectedIndex != null &&
//                                         selectedIndex == index)
//                                       Column(
//                                         mainAxisSize: MainAxisSize.min,
//                                         children: [
//                                           Divider(
//                                             color: AppColors.color666666,
//                                             height: 32.h,
//                                           ),
//                                           Row(
//                                             crossAxisAlignment:
//                                                 CrossAxisAlignment.start,
//                                             children: [
//                                               Padding(
//                                                 padding:
//                                                     const EdgeInsets.all(10.0),
//                                                 child: Container(
//                                                   width: 30.sm,
//                                                   height: 30.sm,
//                                                   decoration: BoxDecoration(
//                                                     shape: BoxShape.circle,
//                                                     color:
//                                                         AppColors.color707070,
//                                                   ),
//                                                 ),
//                                               ),
//                                               SizedBox(
//                                                 width:
//                                                     AppConstants.screenWidth *
//                                                         0.7,
//                                                 child: Column(
//                                                   children: [
//                                                     Row(
//                                                       mainAxisAlignment:
//                                                           MainAxisAlignment
//                                                               .spaceBetween,
//                                                       children: [
//                                                         Text(
//                                                           'Student Name',
//                                                           style: textStyle(
//                                                               16.sm,
//                                                               AppFontWeights
//                                                                   .bold,
//                                                               AppColors
//                                                                   .color141414),
//                                                         ),
//                                                         SizedBox(
//                                                           height: 20.sm,
//                                                           child: ListView
//                                                               .separated(
//                                                                   shrinkWrap:
//                                                                       true,
//                                                                   scrollDirection:
//                                                                       Axis
//                                                                           .horizontal,
//                                                                   itemBuilder:
//                                                                       (BuildContext
//                                                                               context,
//                                                                           int
//                                                                               index) {
//                                                                     return Icon(
//                                                                       Icons
//                                                                           .star,
//                                                                       color: AppColors
//                                                                           .colorFFE08E,
//                                                                       size:
//                                                                           20.sm,
//                                                                     );
//                                                                   },
//                                                                   separatorBuilder:
//                                                                       (BuildContext
//                                                                               context,
//                                                                           int index) {
//                                                                     return SizedBox(
//                                                                         width: 2
//                                                                             .w);
//                                                                   },
//                                                                   itemCount: 5),
//                                                         ),
//                                                       ],
//                                                     ),
//                                                     SizedBox(
//                                                       height: 10.h,
//                                                     ),
//                                                     SizedBox(
//                                                       child: Text(
//                                                         'I really enjoyed the class, and learned a lot. Will definitely recommend this tutor',
//                                                         style: textStyle(
//                                                             16.sm,
//                                                             AppFontWeights
//                                                                 .normal,
//                                                             AppColors
//                                                                 .color141414),
//                                                       ),
//                                                     ),
//                                                   ],
//                                                 ),
//                                               ),
//                                             ],
//                                           )
//                                         ],
//                                       ),
//                                   ],
//                                 ),
//                               );
//                             },
//                             separatorBuilder:
//                                 (BuildContext context, int index) {
//                               return SizedBox(height: 10.h);
//                             },
//                             itemCount: proItems.length),
//                       ),
//                       SizedBox(
//                         height: 100.h,
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
