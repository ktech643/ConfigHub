import 'dart:io';

import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:demo/utilities/constants.dart';
import 'package:demo/views/home/list_page.dart';
import 'package:demo/views/home/preview_channal_page.dart';
import 'package:demo/views/public_profile/public_profile_page.dart';
import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
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

class DetailPreviewScreen extends StatefulWidget {
  const DetailPreviewScreen({Key? key}) : super(key: key);

  @override
  _DetailPreviewScreenState createState() => _DetailPreviewScreenState();
}

class _DetailPreviewScreenState extends State<DetailPreviewScreen> {
  String comment =
      "Lorem aca c hbsdhf sbf fhsf s s fsfzncbscs hsvs  sf sbxcvsbc sdg vvfsbsabfsbfshv vjsd fs  sdhvfsdhfj vdhfshf s hv fhdsfv shvshkfvsh sn  fhsd fhks kfbksfbksbhgfsd hbfhjvf vhfhjsvfs s kof type and ...";
  var _searchCtr = TextEditingController();
  var _emojiCtr = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppColors.secondary,
        centerTitle: true,
        leading: InkWell(
          onTap: () => navigatorKey.currentState!.pop(),
          child: Center(
              child: Icon(
            Icons.arrow_back,
            color: AppColors.white,
            size: 25.sm,
          )),
        ),
        title: Text(
          'Detail Preview',
          style: textStyle(16.sm, AppFontWeights.liteBold, AppColors.white),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 16.h),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 50.sm,
                      height: 50.sm,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: AppColors.secondary),
                      child: Padding(
                        padding: EdgeInsets.all(10.sm),
                        child: const Icon(
                          Icons.file_present_rounded,
                          color: AppColors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    Column(
                      children: [
                        Text(
                          'file name',
                          style: textStyle(
                              14.sm, AppFontWeights.liteBold, AppColors.white),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Size  ',
                              style: textStyle(12.sm, AppFontWeights.normal,
                                  AppColors.white),
                            ),
                            Container(
                              width: 5.sm,
                              height: 5.sm,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.white),
                            ),
                            Text(
                              '  2MB',
                              style: textStyle(12.sm, AppFontWeights.medium,
                                  AppColors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.color7289DA),
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Icon(
                            Icons.file_download_sharp,
                            color: AppColors.background,
                          ),
                        )),
                    Text(
                      'Download file',
                      style: textStyle(
                          12.sm, AppFontWeights.normal, AppColors.color7289DA),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Text(
              "Lorpsum has been the industry's standar when an unknown printer took a galley of type and ...",
              style: textStyle(14.sm, AppFontWeights.normal, AppColors.white),
            ),
            SizedBox(
              height: 15.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 169.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      color: AppColors.color7289DA),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.arrow_drop_up,
                          color: AppColors.color76CE8F,
                        ),
                        Text(
                          '14.120',
                          style: textStyle(
                              14.sm, AppFontWeights.liteBold, AppColors.white),
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 6.w,
                  height: 30.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      color: AppColors.secondary),
                ),
                Container(
                  width: 169.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      color: AppColors.secondary),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 20.w,
                        ),
                        Text(
                          '300',
                          style: textStyle(
                              14.sm, AppFontWeights.liteBold, AppColors.white),
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          color: AppColors.colorDC5050,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            Row(
              children: [
                Text(
                  'Comments ',
                  style: textStyle(
                      14.sm, AppFontWeights.liteBold, AppColors.color7289DA),
                ),
                Text(
                  '(124)',
                  style: textStyle(14.sm, AppFontWeights.normal,
                      AppColors.white.withOpacity(0.5)),
                ),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            SizedBox(
              width: double.infinity,
              height: (comment.length > 50
                      ? comment.length % 50 == 0
                          ? ((comment.length / 50) * 14.sm)
                          : ((comment.length / 50 + 1) * 14.sm)
                      : 20.sm) +
                  66.sm,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: double.infinity,
                      height: (comment.length > 50
                              ? comment.length % 50 == 0
                                  ? ((comment.length / 50) * 14.sm)
                                  : ((comment.length / 50 + 1) * 14.sm)
                              : 20.sm) +
                          46.sm,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.r),
                          color: AppColors.secondary),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 8.h, horizontal: 14.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  onTap: () {
                                    navigatorKey.currentState!.push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const PublicProfileScreen()));
                                  },
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Container(
                                        width: 24.sm,
                                        height: 24.sm,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/profile.png'),
                                              fit: BoxFit.cover,
                                            )),
                                      ),
                                      SizedBox(
                                        width: 12.w,
                                      ),
                                      Text(
                                        'David miller',
                                        style: textStyle(
                                            14.sm,
                                            AppFontWeights.medium,
                                            AppColors.white),
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  '21/5/2022 15:33',
                                  style: textStyle(12.sm, AppFontWeights.normal,
                                      AppColors.white.withOpacity(0.5)),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10.sm,
                            ),
                            Text(
                              comment,
                              style: textStyle(12.sm, AppFontWeights.normal,
                                  AppColors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.r),
                        color: AppColors.background.withOpacity(0.5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              '1.2k  ',
                              style: textStyle(12.sm, AppFontWeights.normal,
                                  AppColors.white.withOpacity(0.5)),
                            ),
                            Image.asset(
                              'assets/1e.png',
                              width: 18.w,
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Image.asset(
                              'assets/2e.png',
                              width: 18.w,
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Image.asset(
                              'assets/3e.png',
                              width: 18.w,
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Image.asset(
                              'assets/4e.png',
                              width: 18.w,
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: AppColors.secondary,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15.r),
                topRight: Radius.circular(15.r)),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
            child: TextFormField(
              // focusNode: focusNode,
              onChanged: (value) {},
              textInputAction: TextInputAction.send,
              controller: _searchCtr,
              enableSuggestions: false,
              autocorrect: false,
              cursorColor: Colors.grey,
              keyboardType: TextInputType.text,
              style: textStyle(
                  19.sm, AppFontWeights.medium, AppColors.color999999),
              onFieldSubmitted: (value) {},
              decoration: InputDecoration(
                border: myinputborder(),
                errorBorder: myinputborder(),
                disabledBorder: myinputborder(),
                focusedBorder: myinputborder(),
                enabledBorder: myfocusborder(),
                hintText: 'Send a message',
                hintStyle: TextStyle(
                  color: AppColors.color999999,
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 10.w),
                suffixIcon: InkWell(
                  onTap: () async {},
                  child: Icon(
                    Icons.attach_file_outlined,
                    color: AppColors.white.withOpacity(0.5),
                  ),
                ),
                prefixIcon: InkWell(
                  onTap: () async {
                    buildSticker();
                  },
                  child: Icon(
                    Icons.emoji_emotions_rounded,
                    color: AppColors.white.withOpacity(0.5),
                  ),
                ),
                filled: true,
                fillColor: AppColors.background,
                focusColor: AppColors.background,
                hoverColor: AppColors.background,
              ),
            ),
          )),
    );
  }

  Widget buildSticker() {
    print('here');
    return EmojiPicker(
      onEmojiSelected: (category, emoji) {
        // Do something when emoji is tapped (optional)
      },
      onBackspacePressed: () {
        // Do something when the user taps the backspace button (optional)
        // Set it to null to hide the Backspace-Button
      },
      textEditingController:
          _emojiCtr, // pass here the same [TextEditingController] that is connected to your input field, usually a [TextFormField]
      config: Config(
        columns: 7,
        emojiSizeMax: 32 *
            (Platform.isAndroid
                ? 1.0
                : 1.30), // Issue: https://github.com/flutter/flutter/issues/28894
        verticalSpacing: 0,
        horizontalSpacing: 0,
        gridPadding: EdgeInsets.zero,
        initCategory: Category.RECENT,
        bgColor: Color(0xFFF2F2F2),
        indicatorColor: Colors.blue,
        iconColor: Colors.grey,
        iconColorSelected: Colors.blue,
        backspaceColor: Colors.blue,
        skinToneDialogBgColor: Colors.white,
        skinToneIndicatorColor: Colors.grey,
        enableSkinTones: true,
        // showRecentsTab: true,
        recentsLimit: 28,
        noRecents: const Text(
          'No Recents',
          style: TextStyle(fontSize: 20, color: Colors.black26),
          textAlign: TextAlign.center,
        ), // Needs to be const Widget
        loadingIndicator: const SizedBox.shrink(), // Needs to be const Widget
        tabIndicatorAnimDuration: kTabScrollDuration,
        categoryIcons: const CategoryIcons(),
        buttonMode: ButtonMode.MATERIAL,
      ),
    );
  }
}
