import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CommentScreen extends StatefulWidget {
  const CommentScreen({super.key});

  @override
  State<CommentScreen> createState() => _CommentScreenState();
}

class _CommentScreenState extends State<CommentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF201F24),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xFf1A1A1A),
        toolbarHeight: 80,
        leading: Icon(Icons.arrow_back),
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/profile.png'),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "ConfigHub",
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: SvgPicture.asset('assets/dots.svg'),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) => Column(
                children: [
                  listTileWidgtt(),
                  listTillewidget2(),
                  datedividerwidget(),
                  listTileWidgtt(),
                ],
              ),
            ),
          )
        ],
      ),
      bottomSheet: bottomTextfield(),
    );
  }
}

Widget bottomTextfield() {
  return Container(
    decoration: BoxDecoration(
      color: Color(0xFF1A1A1A),
    ),
    height: 50,
    width: Get.width,
    child: Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Container(
              height: 30,
              width: 30,
              decoration:
                  BoxDecoration(color: Colors.black, shape: BoxShape.circle),
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 20,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Container(
              height: 30,
              width: 30,
              decoration:
                  BoxDecoration(color: Colors.black, shape: BoxShape.circle),
              child: SvgPicture.asset(
                'assets/giftt.svg',
                height: 20,
                width: 20,
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 30,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 7),
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 10, right: 5),
                      fillColor: Colors.black,
                      filled: true,
                      hintText: "Message",
                      hintStyle: TextStyle(
                        color: Color(0xFF8F8F8F),
                      ),
                      suffixIcon: SvgPicture.asset('assets/emojiwhite.svg',
                          height: 25, width: 25, fit: BoxFit.scaleDown),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(20)))),
                ),
              ),
            ),
          )
        ],
      ),
    ),
  );
}

Widget datedividerwidget() {
  return Row(
    children: [
      Expanded(
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Divider(
            color: Color(0xFF65666B),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Text(
          '22 November 2023',
          style: TextStyle(
            fontSize: 12,
            color: Color(0xFF626262),
          ),
        ),
      ),
      Expanded(
        child: Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Divider(
            color: Color(0xFF65666B),
          ),
        ),
      ),
    ],
  );
}

Widget listTileWidgtt() {
  return ListTile(
    leading: CircleAvatar(
      radius: 25,
      backgroundColor: Colors.white.withOpacity(0.50),
      backgroundImage: AssetImage('assets/profile.png'),
    ),
    title: Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Text(
            "Methew Andrew",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
          ),
          SizedBox(
            width: 20,
          ),
          Text("22/11/2023",
              style: TextStyle(
                color: Color(0xFFC9C9C9),
                fontSize: 12,
              )),
          SizedBox(
            width: 10,
          ),
          Text("01:55",
              style: TextStyle(color: Color(0xFFC9C9C9), fontSize: 12)),
        ],
      ),
    ),
    subtitle: Text(
      "Lorem Ipsum is simply dummy text of the printing",
      style: TextStyle(color: Color(0xFFC9C9C9), fontSize: 11),
    ),
  );
}

Widget listTillewidget() {
  return ListTile(
    horizontalTitleGap: 0,
    leading: CircleAvatar(
      radius: 15,
      backgroundColor: Colors.white.withOpacity(0.50),
      backgroundImage: AssetImage('assets/profile.png'),
    ),
    title: Row(children: [
      Text(
        "@Methew Andrew",
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 11),
      ),
      SizedBox(width: 5),
      Container(
        height: 23,
        width: 80,
        decoration: BoxDecoration(
            color: Color(0xFF32B5AD),
            borderRadius: BorderRadius.all(Radius.circular(6))),
        child: Center(
          child: Text(
            "@Salina Doe",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 11),
          ),
        ),
      ),
      SizedBox(width: 5),
      Expanded(
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text(
            "Ipsum is simply dummy text",
            style: TextStyle(
              fontSize: 10,
              color: Color(0xFFC9C9C9),
            ),
          ),
        ),
      ),
    ]),
  );
}

Widget listTillewidget2() {
  return Stack(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 40, top: 28),
        child: Row(
          children: [
            Container(
              height: 45,
              width: 35,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Color(0xFF65666B),
                  ),
                  left: BorderSide(
                    color: Color(0xFF65666B),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 50),
        child: listTillewidget(),
      ),
      Padding(
        padding: EdgeInsets.only(top: 60),
        child: listTileWidgtt(),
      ),
    ],
  );
}
