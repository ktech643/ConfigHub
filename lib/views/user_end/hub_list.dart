import 'package:demo/views/profile/menupop.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../home/drawer.dart';

class hubs_for_you extends StatefulWidget {
  const hubs_for_you({super.key});

  @override
  State<hubs_for_you> createState() => _hubs_for_youState();
}

class _hubs_for_youState extends State<hubs_for_you> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          leading: Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 25,
          ),
          titleSpacing: 0,
          title: Text("Collections"),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(Icons.search),
            ),
          ],
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: Color(0xFF101316),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            height: MediaQuery.of(context).size.height / 1.20,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Color(0xFF17181C),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                topLeft: Radius.circular(10),
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 20, bottom: 10),
                  child: Row(
                    children: [
                      Text(
                        "ConfigHub File",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 10,
                    physics: ScrollPhysics(),
                    itemBuilder: (context, index) => listTileWidgettt(),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Column(
          children: [],
        ),
      ),
    );
  }
}

Widget listTileWidgettt() {
  return Column(
    children: [
      ListTile(
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
        trailing: Container(
          height: 18,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 40,
                child: Row(
                  children: [
                    Icon(
                      Icons.share,
                      color: Colors.white,
                      size: 15,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    SvgPicture.asset(
                      'assets/deletee.svg',
                      width: 15,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        // leading: CircleAvatar(
        //   radius: 30,
        //   backgroundImage: AssetImage("assets/mediaa.png"),
        // ),
        title: Padding(
          padding: EdgeInsets.only(top: 15),
          child: Text(
            "ConfigHub File",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 5, bottom: 5),
          child: Container(
            child: Text(
              "Lorem Ipsum is simply dummy text of the printing and industry.",
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: dividerWidgett(),
      )
    ],
  );
}
