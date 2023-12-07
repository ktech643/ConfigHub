import 'package:demo/views/admin_channel/remove_user_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class MenuPopClass extends StatelessWidget {
  MenuPopClass({super.key});

  final textColor = Color(0xFF32B5AD);
  final pad = EdgeInsets.symmetric(horizontal: 8);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 20),
          child: SizedBox(
            width: 20,
            child: PopupMenuButton(
              color: Color(0xFF353535),
              padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
              constraints: BoxConstraints(maxHeight: 100, maxWidth: 250),
              offset: Offset(10, 0),
              position: PopupMenuPosition.under,
              // iconSize: 22,
              icon: SvgPicture.asset(
                'assets/dots.svg',
                height: 25,
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
                            padding:
                                EdgeInsets.only(left: 20, right: 20, top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Leave",
                                  style: TextStyle(
                                      color: Color(0xFFD8453D),
                                      fontWeight: FontWeight.bold),
                                ),
                                SvgPicture.asset('assets/leavee.svg')
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
                                  "Report",
                                  style: TextStyle(
                                      color: Color(0xFFD8453D),
                                      fontWeight: FontWeight.bold),
                                ),
                                SvgPicture.asset('assets/reportt.svg')
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
          ),
        ),
      ],
    );
  }
}
