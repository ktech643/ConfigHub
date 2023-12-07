import 'dart:io';

import 'package:demo/utilities/screen_navigator.dart';
import 'package:demo/views/admin_channel/widget/menupop.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../admin_channel/remove_user_page.dart';

import '../admin_channel/widget/poppmenuuuclass.dart';
import '../profile/menupop.dart';

class ProfileJoinScreen extends StatefulWidget {
  ProfileJoinScreen({super.key});

  @override
  State<ProfileJoinScreen> createState() => _ProfileJoinScreenState();
}

class _ProfileJoinScreenState extends State<ProfileJoinScreen> {
  String getCurrency(type) {
    var format =
        NumberFormat.simpleCurrency(locale: Platform.localeName, name: type);
    return format.currencySymbol;
  }

  final PopupMenuHandler _popupMenuHandler = PopupMenuHandler();
  String ngnSymbol = '\u20A6 ';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF201F24),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: InkWell(
          onTap: () {
            pop();
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 26,
          ),
        ),
        title: Text(
          'OutLaw',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 10),
              child: menuPopWidget(
                svgg: "assets/dots.svg",
                txt1: "Editname",
                txt2: "Button",
                txt3: "Set Profile photo",
                txt4: "Logout",
                icon1: 'assets/editname.svg',
                icon2: 'assets/buttonn.svg',
                icon3: 'assets/setprofile.svg',
                icon4: 'assets/logoutt.svg',
              )),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: Container(
          padding: EdgeInsets.only(top: 10, right: 2, left: 2),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
            color: Color(0xFF17181C),
          ),
          height: MediaQuery.of(context).size.height / 1.2,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Stack(
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        width: 2, color: Color(0xff32B5AD))),
                                child: CircleAvatar(
                                  radius: 60,
                                  backgroundImage: AssetImage(
                                    'assets/profile.png',
                                  ),
                                )),
                            Positioned(
                                bottom: 10,
                                right: 13,
                                child: SvgPicture.asset('assets/camera.svg'))
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 220,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/edit.svg',
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text(
                                "Edit Profile",
                                style: TextStyle(
                                    color: Color(0xff494949), fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Hi, Sundar Pichai",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 3),
                                child: Text(
                                  "@sundarpuchte",
                                  style: TextStyle(
                                    color: Color(0xffBABABA),
                                    fontSize: 14,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                newWidgett(
                  txt1: "Personal Data",
                  svggg: "assets/personaldata.svg",
                ),
                newWidgett(
                  txt1: "Settings",
                  svggg: "assets/settingsss.svg",
                ),
                newWidgett(
                  txt1: "Message",
                  svggg: "assets/messageee.svg",
                ),
                newWidgett(
                  txt1: "Notification",
                  svggg: "assets/notiiii.svg",
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10, left: 10, top: 10),
                  child: Row(
                    children: [
                      Text(
                        "Join",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: listtileWidget(),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 2),
                  child: listtileWidget(
                      counting: "2",
                      txt: "Whatsapp",
                      leadingg: "assets/whatsapp.svg"),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 2),
                  child: listtileWidget(
                      txt: "Instagram",
                      counting: "3",
                      leadingg: 'assets/instagrm.svg'),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget listtileWidget({counting, txt, leadingg, trilingg}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 10),
    child: Container(
      decoration: BoxDecoration(
        color: Color(0xFF464646C),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      height: 50,
      width: Get.width,
      child: ListTile(
        horizontalTitleGap: 0.0,
        leading: Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFF17181C),
          ),
          child: Center(
              child: Text(
            counting ?? "1",
            style: TextStyle(color: Colors.white, fontSize: 15),
          )),
        ),
        title: Text(
          txt ?? "Telegram",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        trailing: Container(
          height: 30,
          width: 80,
          decoration: BoxDecoration(
            color: Color(0xFF32B5AD),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(leadingg ?? "assets/telegrm.svg"),
              SizedBox(
                width: 10,
              ),
              Text(
                "Join",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
      ),
    ),
  );
}

Widget newWidgett({txt1, svggg, leadingg, trilingg}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
    child: Container(
      decoration: BoxDecoration(
        color: Color(0xFF464646C),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      height: 50,
      width: Get.width,
      child: ListTile(
        trailing: Icon(
          Icons.arrow_forward_ios,
          color: Color(0xFF32B5AD),
          size: 12,
          weight: 10.0,
        ),
        title: Text(
          txt1 ?? "Personal Data",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        horizontalTitleGap: 0.0,
        leading: Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFF17181C),
          ),
          child: Center(
            child: SvgPicture.asset(svggg ?? "assets/personaldata.svg"),
          ),
        ),
      ),
    ),
  );
}

Widget menuPopWidget({
  txt1,
  txt2,
  txt3,
  txt4,
  icon1,
  icon2,
  icon3,
  icon4,
  svgg,
}) {
  return SizedBox(
    width: 20,
    child: PopupMenuButton(
      color: Color(0xFF353535),
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      constraints: BoxConstraints(maxHeight: 190, maxWidth: 240),
      offset: Offset(-8, -5),
      position: PopupMenuPosition.under,
      // iconSize: 22,
      icon: SvgPicture.asset(
        svgg ?? 'assets/dottt.svg',
        height: 20,
        width: 10,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      itemBuilder: (context) {
        return [
          PopupMenuItem<int>(
            padding: EdgeInsets.all(0),
            value: 0,
            child: SizedBox(
              width: Get.width,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          txt1 ?? "save file",
                          style: TextStyle(
                              color: Color(0xFF32B5AD),
                              fontWeight: FontWeight.bold),
                        ),
                        SvgPicture.asset(icon1 ?? 'assets/savefile.svg')
                      ],
                    ),
                  ),
                  SizedBox(height: 4),
                  dividerWidget()
                ],
              ),
            ),
          ),
          PopupMenuItem<int>(
            padding: EdgeInsets.all(0),
            value: 1,
            child: SizedBox(
              width: Get.width,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          txt2 ?? "copy link",
                          style: TextStyle(
                              color: Color(0xFF32B5AD),
                              fontWeight: FontWeight.bold),
                        ),
                        SvgPicture.asset(icon2 ?? 'assets/copylinkk.svg')
                      ],
                    ),
                  ),
                  SizedBox(height: 4),
                  dividerWidget()
                ],
              ),
            ),
          ),
          PopupMenuItem<int>(
            padding: EdgeInsets.all(0),
            value: 3,
            child: SizedBox(
              width: Get.width,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          txt3 ?? "share",
                          style: TextStyle(
                              color: Color(0xFF32B5AD),
                              fontWeight: FontWeight.bold),
                        ),
                        SvgPicture.asset(icon3 ?? 'assets/sharee.svg')
                      ],
                    ),
                  ),
                  SizedBox(height: 4),
                  dividerWidget()
                ],
              ),
            ),
          ),
          PopupMenuItem<int>(
            padding: EdgeInsets.all(0),
            value: 4,
            child: SizedBox(
              height: 30,
              width: Get.width,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20,
                      right: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          txt4 ?? "Report",
                          style: TextStyle(
                              color: Color(0xFF32B5AD),
                              fontWeight: FontWeight.bold),
                        ),
                        SvgPicture.asset(icon4 ?? 'assets/reportblue.svg')
                      ],
                    ),
                  ),
                  // SizedBox(height: 4),
                  // dividerWidget()
                ],
              ),
            ),
          ),
        ];
      },
    ),
  );
}
