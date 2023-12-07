import 'package:demo/utilities/screen_navigator.dart';
import 'package:demo/views/home/drawer.dart';
import 'package:demo/views/profile/menupop.dart';
import 'package:demo/views/user_end/hub_joinedd.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ChoseMembersScreen extends StatefulWidget {
  const ChoseMembersScreen({super.key});

  @override
  State<ChoseMembersScreen> createState() => _ChoseMembersScreenState();
}

class _ChoseMembersScreenState extends State<ChoseMembersScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 60,
          leading: InkWell(
            onTap: () {
              pop();
            },
            child: Center(
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
          ),
          title: Text(
            "Hi, Sundar Pichai",
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
          backgroundColor: Color(0xFF201F24),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
          ],
          elevation: 0.0,
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: InkWell(
            onTap: () {
              push(Hub_Joinedd_Screen(), '');
            },
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  color: Color(0xFF32B5AD), shape: BoxShape.circle),
              child: Icon(
                Icons.arrow_forward,
                color: Colors.white,
                size: 20,
              ),
            ),
          ),
        ),
        backgroundColor: Color(0xFF201F24),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Row(
                children: [
                  Text(
                    "Select member",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Row(
                children: [
                  containeer(imgg: "assets/profile.png"),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: containeer(),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF101316),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15)),
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: ListView.builder(
                    itemCount: 10,
                    physics: ScrollPhysics(),
                    itemBuilder: (contAext, index) => rowWidget(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget containeer({imgg, txtt}) {
  return Container(
    decoration: BoxDecoration(
      color: Color(0xFF32B5AD),
      borderRadius: BorderRadius.circular(15),
    ),
    height: 50,
    width: 130,
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: CircleAvatar(
            backgroundImage: AssetImage(imgg ?? "assets/profile.png"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            txtt ?? "Outlaw",
            style: TextStyle(color: Colors.white),
          ),
        )
      ],
    ),
  );
}

Widget rowWidget() {
  return Column(
    children: [
      Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 32,
                  backgroundImage: AssetImage(
                    "assets/profile.png",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "ConfigHub",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 70,
            height: 132,
            child: SvgPicture.asset(
              'assets/donee.svg',
              width: 15,
              fit: BoxFit.scaleDown,
            ),
          ),
        ],
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: dividerWidgett(),
      ),
    ],
  );
}
