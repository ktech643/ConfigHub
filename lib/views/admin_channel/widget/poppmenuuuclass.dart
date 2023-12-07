import 'package:demo/views/admin_channel/remove_user_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class MenuPopClaasss extends StatelessWidget {
  final txt1;
  final txt2;
  final txt3;
  final txt4;
  final svgg;
  final icon1;
  final icon2;
  final icon3;
  final icon4;
  final heightt;

  MenuPopClaasss({
    super.key,
    this.txt1,
    this.txt2,
    this.txt3,
    this.txt4,
    this.svgg,
    this.icon1,
    this.icon2,
    this.icon3,
    this.icon4,
    this.heightt,
  });

  final textColor = Color(0xFF32B5AD);
  final pad = EdgeInsets.symmetric(horizontal: 8);

  @override
  Widget build(BuildContext context) {
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
          height: 15,
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
}
