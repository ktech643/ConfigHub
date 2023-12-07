import 'package:flutter/material.dart';

class hub_Page extends StatefulWidget {
  const hub_Page({super.key});

  @override
  State<hub_Page> createState() => _hub_PageState();
}

class _hub_PageState extends State<hub_Page> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 25,
          ),
          title: Text("Collection"),
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
                ListTile(
                  contentPadding: EdgeInsets.only(top: 5),
                  leading: Icon(
                    Icons.add_a_photo,
                    color: Colors.white,
                  ),
                  // leading: CircleAvatar(
                  //   radius: 30,
                  //   backgroundImage: AssetImage("assets/mediaa.png"),
                  // ),
                  title: Text(
                    "ConfigHub File",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  subtitle: Text(
                    "Lorem Ipsum is simply dummy text of the printing and industry.",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                  trailing: Expanded(
                    child: Container(
                      width: 50,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.share,
                                color: Colors.white,
                                size: 20,
                              ),
                              Icon(Icons.delete_forever_outlined,
                                  color: Colors.white, size: 20),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, right: 5, left: 5),
                  child: Divider(
                    height: 7,
                    color: Colors.black,
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

Widget listtilee() {
  return ListTile(
    leading: CircleAvatar(),
    title: Text(
      "data",
      style: TextStyle(color: Colors.white),
    ),
  );
}
