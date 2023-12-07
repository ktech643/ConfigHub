import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../user_end/dailogbutton.dart';

class RemoveUserScreen extends StatefulWidget {
  RemoveUserScreen({super.key});

  @override
  State<RemoveUserScreen> createState() => _RemoveUserScreenState();
}

class _RemoveUserScreenState extends State<RemoveUserScreen> {
  bool buttonText = false;
  int indexx = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: InkWell(
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 26,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: Text(
          "Removed users",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            color: Color(0xFF17181C),
          ),
          height: MediaQuery.of(context).size.height / 1.2,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: SizedBox(
                  height: 34,
                  child: TextField(
                    scrollPadding: EdgeInsets.all(0),
                    style: TextStyle(color: Colors.white, fontSize: 17),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(0),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      border: UnderlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(5)),
                      hintText: "Search For User",
                      hintStyle:
                          TextStyle(color: Colors.white.withOpacity(0.50)),
                      fillColor: Color(0xFF2C2F33),
                      filled: true,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.only(top: 15),
                  itemExtent: 70.0,
                  shrinkWrap: true,
                  itemCount: 12,
                  itemBuilder: (context, index) {
                    return Container(
                      color: Color(0xFF17181C),
                      child: Column(
                        children: [
                          ListTileWidget(
                            titlee: "Andrey Akf",
                            subtitlee: "Remove By Alex bhatti",
                            leadingg: Image.asset('assets/akf.png'),
                            tralingg: InkWell(
                              child: indexx == index
                                  ? SvgPicture.asset(
                                      'assets/remove_user_blue.svg',
                                      height: 22,
                                      fit: BoxFit.scaleDown,
                                      width: 22,
                                    )
                                  : SvgPicture.asset(
                                      'assets/remove_user.svg',
                                      height: 22,
                                      width: 22,
                                      fit: BoxFit.scaleDown,
                                    ),
                              onTap: () {
                                setState(() {
                                  showDialogueee(context: context);
                                  indexx = index;
                                  buttonText = false;
                                });
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: dividerWidget(),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: const Color(0xFF101316),
    );
  }
}

Future showDialogueee({BuildContext? context}) {
  return showDialog(
    context: context!,
    builder: (context) {
      return Alertdailogg();
    },
  );
}

Widget dividerWidget() {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 8),
        child: Container(
          height: 1,
          width: Get.width,
          color: Colors.black,
        ),
      ),
      Divider(thickness: 0.10, height: 1, color: Colors.white),
    ],
  );
}

Widget ListTileWidget({tralingg, titlee, subtitlee, leadingg}) {
  return ListTile(
    title: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titlee ?? "Confighub",
          style: TextStyle(color: Colors.white),
        ),
        Text(
          subtitlee ?? "Remove by Alex",
          style: TextStyle(color: Color(0xff32B5AD)),
        )
      ],
    ),
    leading: leadingg,
    trailing: tralingg,
  );
}
