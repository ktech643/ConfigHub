import 'package:demo/themes/colors.dart';
import 'package:demo/themes/style.dart';
import 'package:demo/themes/weights.dart';
import 'package:demo/utilities/constants.dart';
import 'package:demo/utilities/screen_navigator.dart';
import 'package:demo/views/admin_channel/remove_user_page.dart';
import 'package:demo/views/chat/open_chat.dart';
import 'package:demo/views/user_end/widget/jointed_card.dart';
import 'package:demo/views/user_end/widget/social_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class PeopleScreen extends StatefulWidget {
  const PeopleScreen({Key? key}) : super(key: key);

  @override
  State<PeopleScreen> createState() => _PeopleScreenState();
}

class _PeopleScreenState extends State<PeopleScreen> {
  int selectedIndex = 1;
  List<Widget> screens = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
          color: Color(0xFF101316),
        ),
        child: ListView.separated(
            shrinkWrap: true,
            primary: true,
            physics: ScrollPhysics(),
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) => listTileWidgett(),
            separatorBuilder: (context, index) => Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: dividerWidget(),
                ),
            // Column(
            //       children: [
            //         Divider(
            //           color: Colors.black,
            //           height: 0,
            //           thickness: 1,
            //         ),
            //         Divider(
            //           color: AppColors.color666666,
            //           height: 0,
            //         ),
            //       ],
            //     ),
            itemCount: 10),
      ),
    );
  }
}

Widget listTileWidgett() {
  return ListTile(
    onTap: () {
      push(OpenChatScreen(), '');
    },
    minVerticalPadding: 0,
    contentPadding: EdgeInsets.only(top: 0, left: 15, right: 15),
    leading: Image.asset('assets/profile.png'),
    title: Text(
      "Thomas",
      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
    ),
    subtitle: Row(
      children: [
        Container(
          height: 12,
          width: 12,
          decoration: BoxDecoration(
              color: Color(0xFF32B5AD),
              borderRadius: BorderRadius.all(Radius.circular(2))),
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          "New Snap",
          style: TextStyle(
              color: Color(0xFF32B5AD),
              fontWeight: FontWeight.bold,
              fontSize: 12),
        ),
        SizedBox(
          width: 5,
        ),
        Container(
          alignment: Alignment.center,
          height: 4,
          width: 4,
          decoration:
              BoxDecoration(color: Color(0xFFC4C4C4), shape: BoxShape.circle),
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          "1m",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12),
        ),
        SizedBox(
          width: 5,
        ),
        Container(
          alignment: Alignment.center,
          height: 4,
          width: 4,
          decoration:
              BoxDecoration(color: Color(0xFFC4C4C4), shape: BoxShape.circle),
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          "425",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12),
        ),
        SizedBox(
          width: 3,
        ),
        Image.asset(
          'assets/fire.png',
          height: 12,
          width: 12,
        ),
      ],
    ),
    trailing: Container(
      width: 40,
      height: 50,
      child: InkWell(
        onTap: () {
          push(OpenChatScreen(), '');
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 45,
              width: 1,
              decoration: BoxDecoration(
                color: Color(0xFFC4C4C4),
              ),
            ),
            SvgPicture.asset('assets/commenttt.svg')
          ],
        ),
      ),
    ),
  );
}
