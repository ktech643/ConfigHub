import 'package:demo/views/user_end/hubs_details_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
          color: Color(0xFF17181C)),
      height: Get.height,
      width: Get.width,
      child: Column(
        children: [
          Container(
            child: Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                SvgPicture.asset('assets/linee.svg')
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "Comments",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SvgPicture.asset('assets/infoo.svg')
              ],
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: Container(
              height: Get.height,
              width: Get.width,
              child: Column(
                children: [
                  dividerWidget(),
                  commntwidget(),
                  dividerWidget(),
                  Listtlewidget(),
                  Spacer(),
                  messageSendWidget(),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget Listtlewidget() {
  return Padding(
    padding: EdgeInsets.only(bottom: 10),
    child: ListTile(
      minVerticalPadding: 0,
      leading: CircleAvatar(
        backgroundColor: Colors.white.withOpacity(0.50),
        backgroundImage: AssetImage('assets/profile.png'),
        radius: 25,
      ),
      title: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'ConfigHub',
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              '4 h',
              style: TextStyle(color: Color(0xFF9D9D9D), fontSize: 12),
            ),
          ],
        ),
      ),
      trailing: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/heartgrey.svg'),
            SizedBox(
              height: 3,
            ),
            Text(
              "2",
              style: TextStyle(color: Color(0xFF9D9D9D), fontSize: 12),
            )
          ],
        ),
      ),
      subtitle: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 5,
          ),
          Text(
            "Awesome ❤️❤️❤️",
            style: TextStyle(color: Color(0xFFBABABA), fontSize: 13),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Reply",
            style: TextStyle(color: Color(0xFF9D9D9D), fontSize: 10),
          )
        ],
      ),
    ),
  );
}
