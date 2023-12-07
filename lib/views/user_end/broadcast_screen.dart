import 'package:demo/utilities/screen_navigator.dart';
import 'package:demo/views/admin_channel/widget/menupop.dart';
import 'package:demo/views/public_profile/profile_chose.dart';
import 'package:demo/views/user_end/commentScreen.dart';
import 'package:demo/views/user_end/hub_list.dart';
import 'package:demo/views/user_end/hubs_details_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../admin_channel/widget/poppmenuuuclass.dart';
import '../home/drawer.dart';
import '../profile/profile_mediaall.dart';

class BroadcastScreen extends StatefulWidget {
  const BroadcastScreen({super.key});

  @override
  State<BroadcastScreen> createState() => _BroadcastScreenState();
}

class _BroadcastScreenState extends State<BroadcastScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF000000),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF201F24),
        toolbarHeight: 80,
        leading: InkWell(
          child: Icon(
            Icons.arrow_back,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        title: Row(
          children: [
            InkWell(
              onTap: () {
                push(ProfileMediaScreen(), '');
              },
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage('assets/profile.png'),
                radius: 30,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "ConfigHub",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                Text(
                  "6,736 members, 201 online",
                  style: TextStyle(
                    color: Color(0xFF9D9D9D),
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: MenuPopClass(),

            //     InkWell(
            //   child: SvgPicture.asset('assets/dots.svg'),
            //   onTap: () {},
            // ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(bottom: 60),
          child: Column(
            children: [
              Container(
                width: Get.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10, top: 10),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFf17181C),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: Get.width / 1.20,
                        // height: 205,
                        child: Column(
                          children: [
                            SizedBox(height: 5),
                            containerrrlistWidget(),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 15, right: 80, top: 15, bottom: 15),
                              child: Text(
                                "Lorem Ipsum is simply dummy text of the printing and industry.",
                                style: TextStyle(
                                    color: Color(0xFFBABABA), fontSize: 14),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 3),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    // color: Colors.red,
                                    width: Get.width * 0.65,
                                    child: Row(
                                      children: [
                                        conatinerlikewidget(),
                                        conatinerlikewidget(
                                          emoji: "assets/heartt.png",
                                          color: Color(0xFFFFA8A8),
                                          txt: "10.k",
                                        ),
                                        conatinerlikewidget(
                                            txt: "1.k",
                                            color: Color(0xFFFF9E47),
                                            emoji: "assets/fire.png"),
                                        // conatinerlikewidget(),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 5),
                                    child: iconTextWidget(
                                        txtt: "25", imagee: "assets/view.png"),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              child: dividerWidgett(),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 15, top: 8.5, bottom: 8.5),
                              child: commentlistWidget(),
                            ),
                          ],
                        ),
                      ),
                    ),
                    picContainerwidget(),
                    picContainerwidget(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        height: 50,
        width: Get.width,
        decoration: BoxDecoration(
          color: Color(0xFF201F24),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            children: [
              SvgPicture.asset('assets/emojii.svg'),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                  child: SizedBox(
                    height: 35,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Broadcast",
                          contentPadding: EdgeInsets.only(left: 10),
                          hintStyle: TextStyle(
                            color: Color(0xFFBDBDBD),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFE8E8E8),
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(50),
                            ),
                          ),
                          fillColor: Colors.white,
                          filled: true),
                    ),
                  ),
                ),
              ),
              Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                    color: Color(
                      0xFF32B5AD,
                    ),
                    shape: BoxShape.circle),
                child: SvgPicture.asset(
                  'assets/linkk.svg',
                  height: 30,
                  width: 30,
                  fit: BoxFit.scaleDown,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget commentlistWidget() {
  return InkWell(
    onTap: () => push(CommentScreen(), ""),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CircleAvatar(
          backgroundImage: AssetImage('assets/profile.png'),
          radius: 10,
        ),
        CircleAvatar(
          backgroundImage: AssetImage('assets/profile.png'),
          radius: 10,
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "2 Comments",
                style: TextStyle(
                    color: Color(
                      0xFF9D9D9D,
                    ),
                    fontSize: 14),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Icon(
                  Icons.arrow_forward_ios,
                  size: 13,
                  color: Color(
                    0xFF32B5AD,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    ),
  );
}

Widget iconTextWidget({imagee, txtt}) {
  return Row(
    children: [
      Image.asset(
        imagee ?? 'assets/like.png',
        height: 12,
        width: 12,
        fit: BoxFit.scaleDown,
        filterQuality: FilterQuality.high,
      ),
      SizedBox(
        width: 3,
      ),
      Text(
        txtt ?? "10.k",
        style: TextStyle(
          fontSize: 12,
          color: Color(0xFFC9C9C9),
        ),
      ),
    ],
  );
}

Widget conatinerlikewidget({txt, color, circleavatar, emoji}) {
  return Padding(
    padding: const EdgeInsets.only(right: 3, bottom: 2),
    child: Container(
      height: 24,
      // width: 80,
      decoration: BoxDecoration(
        color: color ?? Color(0xFF4A67FF),
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
        child: Row(
          children: [
            SizedBox(
              width: 5,
            ),
            Image.asset(
              emoji ?? 'assets/like.png',
              height: 12,
              width: 12,
              fit: BoxFit.scaleDown,
            ),
            Text(
              txt ?? "15.k",
              style: TextStyle(color: Colors.white, fontSize: 11),
            ),
            SizedBox(
              width: 3,
            ),
            Image.asset(circleavatar ?? 'assets/threeimg.png')
          ],
        ),
      ),
    ),
  );
}

Widget containerrrlistWidget() {
  return ListTile(
    minLeadingWidth: 0, horizontalTitleGap: 5,
    contentPadding: EdgeInsets.symmetric(horizontal: 10),
    // contentPadding: EdgeInsets.all(0),
    leading: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            height: Get.height,
            child: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/profile.png'),
              backgroundColor: Colors.transparent,
            ),
          ),
        ),
      ],
    ),
    trailing: MenuPopClaasss(),

    // leading: CircleAvatar(
    //   radius: 30,
    //   backgroundImage: AssetImage("assets/mediaa.png"),
    // ),
    title: Padding(
      padding: EdgeInsets.only(top: 15),
      child: Text(
        "Methew Andrew Tat",
        style: TextStyle(color: Colors.white, fontSize: 16),
      ),
    ),
    subtitle: Padding(
      padding: const EdgeInsets.only(top: 5, bottom: 5),
      child: Container(
        child: Text(
          "2.2 kb.srl",
          style: TextStyle(color: Colors.white, fontSize: 12),
        ),
      ),
    ),
  );
}

Widget picContainerwidget() {
  return Padding(
    padding: EdgeInsets.only(left: 10, top: 10),
    child: Container(
      decoration: BoxDecoration(
        color: Color(0xFf17181C),
        borderRadius: BorderRadius.circular(10),
      ),
      width: Get.width / 1.20,
      child: Column(
        children: [
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Image.asset(
              'assets/mee.png',
              height: 200,
              width: Get.width,
              fit: BoxFit.scaleDown,
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 15, right: 80, top: 15, bottom: 15),
            child: Text(
              "Lorem Ipsum is simply dummy text of the printing and industry.",
              style: TextStyle(color: Color(0xFFBABABA), fontSize: 14),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 3),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  // color: Colors.red,
                  width: Get.width * 0.65,
                  child: Row(
                    children: [
                      conatinerlikewidget(),
                      conatinerlikewidget(
                        emoji: "assets/heartt.png",
                        color: Color(0xFFFFA8A8),
                        txt: "10.k",
                      ),
                      conatinerlikewidget(
                          txt: "1.k",
                          color: Color(0xFFFF9E47),
                          emoji: "assets/fire.png"),
                      // conatinerlikewidget(),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: iconTextWidget(txtt: "25", imagee: "assets/view.png"),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: dividerWidgett(),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 8.5, bottom: 8.5),
            child: commentlistWidget(),
          ),
        ],
      ),
    ),
  );
}
