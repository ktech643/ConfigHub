// import 'package:darsi/main.dart';
// import 'package:darsi/themes/colors.dart';
// import 'package:darsi/utilities/constants.dart';
// import 'package:darsi/views/classes/widget/date_cell.dart';
// import 'package:darsi/views/classes/widget/date_detail_cell.dart';
// import 'package:darsi/views/find_tutor/widget/top_tutor_description_cell.dart';
// import 'package:darsi/views/payment/payment_details_page.dart';
// import 'package:darsi/widgets/button.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_phoenix/flutter_phoenix.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// import 'package:provider/provider.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import '../../state/app_state.dart';
// import '../../themes/style.dart';
// import '../../themes/weights.dart';
// import '../home/widget/banner_slider.dart';
//
// class LanguageScreen extends StatefulWidget {
//   const LanguageScreen({Key? key}) : super(key: key);
//
//   @override
//   _LanguageScreenState createState() => _LanguageScreenState();
// }
// enum groupHost { english, arabic }
// class _LanguageScreenState extends State<LanguageScreen> {
//   int? selectedIndex;
//   groupHost? _gh = groupHost.english;
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     var state = Provider.of<AppState>(context, listen: false);
//     if (state.language == 'en') {
//       _gh=groupHost.english;
//       english = true;
//       arabic = false;
//     } else {
//       _gh=groupHost.arabic;
//       arabic = true;
//       english = false;
//     }
//   }
//
//   late List<String> settingItems;
//   final GlobalKey<ScaffoldState> _key = GlobalKey();
//   bool arabic = false;
//   bool english = false;
//
//   @override
//   Widget build(BuildContext context) {
//     settingItems = [
//       AppLocalizations.of(context)!.english,
//       AppLocalizations.of(context)!.arabic,
//     ];
//
//     return Scaffold(
//       key: _key,
//       resizeToAvoidBottomInset: false,
//       appBar: AppBar(
//         elevation: 0.0,
//         backgroundColor: AppColors.white,
//         leading: InkWell(
//           onTap: () => navigatorKey.currentState!.pop(),
//           child: Center(
//               child: Icon(
//             Icons.arrow_back,
//             color: AppColors.color141414,
//             size: 25.sm,
//           )),
//         ),
//         title: Text(
//           AppLocalizations.of(context)!.language,
//           style: textStyle(22.sm, AppFontWeights.normal, AppColors.color141414),
//         ),
//       ),
//       body: Container(
//         width: double.infinity,
//         height: double.infinity,
//         color: AppColors.white,
//         child: Padding(
//           padding: EdgeInsets.symmetric(horizontal: 20.w),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               SizedBox(
//                 height: 34.h,
//               ),
//               ListView.separated(
//                   padding: EdgeInsets.all(0),
//                   shrinkWrap: true,
//                   itemBuilder: (BuildContext context, int index) {
//                     return InkWell(
//                       onTap: () async {
//                         setState(() {
//                           selectedIndex = index;
//                         });
//                         if (selectedIndex == 0) {
//                           await Provider.of<AppState>(context, listen: false)
//                               .updateLanguage(language: 'en');
//                           SharedPreferences.getInstance().then((value) {
//                             value.setString(AppConstants.LANGUAGE_KEY, 'en');
//                           });
//                           Phoenix.rebirth(context);
//                           setState(() {
//                             _gh=groupHost.english;
//                             arabic = false;
//                             english = true;
//                           });
//                         } else {
//                           await Provider.of<AppState>(context, listen: false)
//                               .updateLanguage(language: 'ar');
//                           SharedPreferences.getInstance().then((value) {
//                             value.setString(AppConstants.LANGUAGE_KEY, 'ar');
//                           });
//                           Phoenix.rebirth(context);
//                           setState(() {
//                             _gh=groupHost.arabic;
//                             arabic = true;
//                             english = false;
//                           });
//                         }
//                       },
//                       child: SizedBox(
//                         height: 50.h,
//                         child: Stack(
//                           children: [
//                             Positioned.fill(
//                               child: Row(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   Text(
//                                     settingItems[index],
//                                     style: textStyle(
//                                         16.sm,
//                                         AppFontWeights.normal,
//                                         AppColors.color141414),
//                                   ),
//                                   Radio<groupHost>(
//                                       value: index==0?groupHost.english:groupHost.arabic,
//                                       groupValue: _gh,
//                                       activeColor: AppColors.primary,
//                                       onChanged: (value) {
//                                         _gh = value;
//                                         setState(() {});
//                                         // this.is_host=value!;
//                                       }),
//                                   // Theme(
//                                   //     data: ThemeData(
//                                   //         unselectedWidgetColor:
//                                   //             AppColors.primary),
//                                   //     child: Checkbox(
//                                   //         activeColor: AppColors.primary,
//                                   //         value: selectedIndex != null
//                                   //             ? selectedIndex == index
//                                   //             : false,
//                                   //         onChanged: (v) {})),
//                                 ],
//                               ),
//                             ),
//                             Positioned.fill(child: Container()),
//                           ],
//                         ),
//                       ),
//                     );
//                   },
//                   separatorBuilder: (BuildContext context, int index) {
//                     return index == 1 || index == 4
//                         ? Divider(
//                             color: AppColors.color999999,
//                             height: 40.h,
//                           )
//                         : SizedBox(
//                             height: 20.h,
//                           );
//                   },
//                   itemCount: settingItems.length),
//               SizedBox(
//                 height: 20.h,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
