import 'package:flutter/material.dart';

class BlockedUserScreen extends StatefulWidget {
  BlockedUserScreen({super.key});

  @override
  State<BlockedUserScreen> createState() => _BlockedUserScreenState();
}

class _BlockedUserScreenState extends State<BlockedUserScreen> {
  bool buttonText = true;
  int indexx = -1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(horizontal: 0),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 20),
                      child: Text(
                        "Blocked Users",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20, top: 20),
                      child: Text("5", style: TextStyle(color: Colors.grey)),
                    )
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: ListView.builder(
                      padding: EdgeInsets.only(top: 15),
                      itemExtent: 70.0,
                      shrinkWrap: true,
                      itemCount: 8,
                      itemBuilder: (context, index) {
                        var container = Container(
                          width: 70,
                          height: 30,
                          decoration: BoxDecoration(
                              color: Color(0xFF32B5AD),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Center(
                            child: InkWell(
                              child: Text(
                                indexx == index ? "Unblock" : "Unblock",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              onTap: () {
                                setState(() {
                                  buttonText = false;
                                  indexx = index;
                                });
                              },
                            ),
                          ),
                        );

                        return Container(
                          color: Color(0xFF17181C),
                          child: Column(
                            children: [
                              ListTile(
                                title: Text(
                                  "ConfigHub",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                leading: Image.asset('assets/menu.png'),
                                trailing: container,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                child: dividerWidget(context: context),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        backgroundColor: Color(0xFF101316),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Icon(
                        Icons.keyboard_backspace,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget dividerWidget({context}) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 8),
        child: Container(
          height: 1,
          width: MediaQuery.of(context).size.width,
          color: Colors.black,
        ),
      ),
      Divider(thickness: 0.10, height: 1, color: Colors.white),
    ],
  );
}
