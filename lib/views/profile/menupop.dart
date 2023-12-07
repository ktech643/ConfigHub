// popup_menu_handler.dart

import 'package:demo/views/admin_channel/remove_user_page.dart';
import 'package:demo/views/home/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class PopupMenuHandler {
  void showPopupMenu(BuildContext context, Function(String) onItemSelected) {
    showMenu(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      position: RelativeRect.fromLTRB(10, 30, 0, 10.0),
      color: Color(0xFF353535),
      items: [
        PopupMenuItem<String>(
          height: 20,
          value: 'item1',
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Editname',
                    style: TextStyle(color: Color(0xFF32B5AD)),
                  ),
                  SvgPicture.asset('assets/editname.svg')
                ],
              ),
              dividerWidgeet()
            ],
          ),
        ),
        PopupMenuItem<String>(
          value: 'item2',
          padding: EdgeInsets.only(top: 0, left: 15, right: 15),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Button',
                    style: TextStyle(color: Color(0xFF32B5AD)),
                  ),
                  SvgPicture.asset('assets/buttonn.svg')
                ],
              ),
              dividerWidgeet()
            ],
          ),
        ),
        PopupMenuItem<String>(
          value: 'item3',
          padding: EdgeInsets.only(top: 0, left: 15, right: 15),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Set profile photo',
                    style: TextStyle(color: Color(0xFF32B5AD)),
                  ),
                  SvgPicture.asset('assets/setprofile.svg')
                ],
              ),
              dividerWidgeet()
            ],
          ),
        ),
        PopupMenuItem<String>(
          value: 'item4',
          padding: EdgeInsets.only(top: 0, left: 15, right: 15),
          height: 15,
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Logout',
                    style: TextStyle(color: Color(0xFF32B5AD)),
                  ),
                  SvgPicture.asset('assets/logoutt.svg')
                ],
              ),
            ],
          ),
        ),
      ],
    ).then((value) {
      if (value != null) {
        onItemSelected(value);
      }
    });
  }
}

Widget dividerWidgeet() {
  return Column(
    children: [
      Container(
        height: 1,
        width: Get.width,
        color: Colors.black,
      ),
      Divider(thickness: 0.10, height: 1, color: Colors.white),
    ],
  );
}
