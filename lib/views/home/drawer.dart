import 'package:demo/utilities/screen_navigator.dart';
import 'package:demo/views/admin_channel/member_page.dart';
import 'package:demo/views/home/media_link_files.dart';
import 'package:demo/views/profile/profile_mediaall.dart';
import 'package:demo/views/public_profile/public_profile_join.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../user_end/home_page.dart';
import 'file_screen.dart';
import 'link_screen.dart';
import 'mediaa.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 80),
      child: Drawer(
        width: MediaQuery.of(context).size.width / 1.10,
        backgroundColor: Color(0xFF201F24),
        child: Column(
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 40, left: 20),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          push(UserHomeScreen(), '');
                        },
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF32B5AD),
                          ),
                          child: Icon(
                            Icons.home,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 30, left: 20),
                  child: Row(
                    children: [
                      Container(
                        height: 40,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Color(0xFF17181C),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: SvgPicture.asset(
                                'assets/device.svg',
                                height: 20,
                                width: 20,
                                fit: BoxFit.scaleDown,
                              ),
                            ),
                            Text(
                              "Device",
                              style: TextStyle(color: Color(0xFFC9C9C9)),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30, left: 10),
                  child: Row(
                    children: [
                      Container(
                        height: 40,
                        width: 110,
                        decoration: BoxDecoration(
                            color: Color(0xFF17181C),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: SvgPicture.asset(
                                'assets/archive.svg',
                                height: 20,
                                width: 20,
                                fit: BoxFit.scaleDown,
                              ),
                            ),
                            Text(
                              "Archived",
                              style: TextStyle(color: Color(0xFFC9C9C9)),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                push(ProfileJoinScreen(), '');
              },
              child: ListTile(
                leading: Container(
                  // height: MediaQuery.of(context).size.height,
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Image.asset(
                    'assets/pic.png',
                    fit: BoxFit.cover,
                  ),
                ),
                horizontalTitleGap: 10,
                title: Text(
                  "@smitcoooil",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            dividerWidgett(),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  myContainer(
                    onTap: () {
                      push(Media_Link_Screen(), '');
                    },
                    context: context,
                    txt: "Media",
                    backimagee: "assets/mediagreen.png",
                    svg: "assets/gallery.svg",
                  ),
                  myContainer(
                      onTap: () {
                        push(files_Screen(), '');
                      },
                      context: context,
                      txt: "Files",
                      svg: "assets/files.svg",
                      backimagee: 'assets/filesblue.png'),
                  myContainer(
                      onTap: () {
                        push(Link_Screen(), '');
                      },
                      context: context,
                      txt: "Link",
                      svg: "assets/link.svg",
                      backimagee: 'assets/linkred.png'),
                ],
              ),
            ),
            dividerWidgett(),
            Padding(
              padding: EdgeInsets.only(left: 20, top: 50),
              child: Row(
                children: [
                  Text(
                    "Menu",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            listTileWidget(
              leadingg: Icon(
                Icons.notifications_none_outlined,
                color: Colors.white,
                size: 20,
              ),
              titlee: "Notifications",
              trillingg: Icon(
                Icons.arrow_forward_ios,
                size: 10,
                color: Colors.white,
              ),
            ),
            dividerWidgett(),
            listTileWidget(
              onTapp: () {
                push(MemberScreen(), '');
              },
              leadingg: Padding(
                padding: const EdgeInsets.only(left: 3),
                child: SvgPicture.asset(
                  'assets/addpeople.svg',
                  height: 17,
                ),
              ),

              // Icon(
              //   Icons.people,
              //   color: Colors.white,
              //   size: 20,
              // ),
              titlee: "Add People",
            ),
            SizedBox(height: 50),
            listTileWidget(
              titlee: "Settings",
              leadingg: SvgPicture.asset(
                'assets/setting.svg',
                height: 25,
                width: 25,
                fit: BoxFit.scaleDown,
              ),
            ),
            dividerWidgett(),
            listTileWidget(
              titlee: "Feedback",
              leadingg: SvgPicture.asset(
                'assets/feedback.svg',
                height: 25,
                width: 25,
                fit: BoxFit.scaleDown,
              ),
            ),
            dividerWidgett(),
            listTileWidget(
                titlee: "About ConfigHub",
                leadingg: Icon(
                  Icons.info_outline,
                  color: Colors.white,
                  size: 25,
                )),
          ],
        ),
      ),
    );
  }
}

Widget dividerWidgett() {
  return Column(
    children: [
      Container(
        height: 1,
        width: Get.width,
        color: Colors.black,
      ),
      Divider(
        thickness: 0.10,
        height: 1,
        color: Color.fromARGB(255, 209, 200, 200),
      ),
    ],
  );
}

Widget listTileWidget({leadingg, titlee, trillingg, onTapp}) {
  return ListTile(
      onTap: onTapp,
      horizontalTitleGap: 0,
      leading: leadingg,
      title: Text(
        titlee ?? "Notifications",
        style: TextStyle(color: Colors.white, fontSize: 14),
      ),
      trailing: trillingg);
}

Widget myContainer({txt, backimagee, svg, context, onTap}) {
  return Column(
    children: [
      InkWell(
        child: Container(
          height: 55,
          width: 55,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(backimagee ?? "assets/linkred.png")),
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset(
            svg ?? "assets/link.svg",
            height: 30,
            width: 30,
            fit: BoxFit.scaleDown,
          ),
        ),
        onTap: onTap,
      ),
      SizedBox(
        height: 5,
      ),
      Text(
        txt ?? "Link",
        style: TextStyle(
          fontSize: 13,
          color: Color(0xFFBABABA),
        ),
      ),
    ],
  );
}
