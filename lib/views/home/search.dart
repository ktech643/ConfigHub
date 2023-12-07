import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  bool buttonText = true;
  int indexx = -1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            padding: EdgeInsets.only(top: 10, right: 2, left: 2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
              color: Color(0xFF17181C),
            ),
            height: MediaQuery.of(context).size.height / 1.2,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              // itemExtent: 70.0,
              // shrinkWrap: true,
              physics: ScrollPhysics(),
              itemCount: 3,
              itemBuilder: (context, index) {
                var container = Container(
                  width: 70,
                  height: 30,
                  decoration: BoxDecoration(
                      color: Color(0xFF32B5AD),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Center(
                    child: InkWell(
                      child: Text(
                        indexx == index ? "Added" : "Add",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
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
                var containerr = Container(
                  width: 70,
                  height: 30,
                  decoration: BoxDecoration(
                      color: Color(0xFF32B5AD),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Center(
                    child: InkWell(
                      child: Text(
                        indexx == index ? "Joined" : "Join",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
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
                      SizedBox(
                        height: 10,
                      ),
                      ListTile(
                        title: Text(
                          "ConfigHub",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        leading: Image.asset('assets/picc.png'),
                        trailing: container,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: dividerWidget(context: context),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ListTile(
                        title: Text(
                          "ConfigHub",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        leading: Image.asset('assets/picc.png'),
                        trailing: containerr,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: dividerWidget(context: context),
                      ),
                    ],
                  ),
                );
              },
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
                      child: InkWell(
                        child: Icon(
                          Icons.arrow_back_sharp,
                          color: Colors.white,
                        ),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: SizedBox(
                          height: 40,
                          child: TextField(
                            scrollPadding: EdgeInsets.all(0),
                            decoration: InputDecoration(
                                border: UnderlineInputBorder(
                                    borderSide: BorderSide.none),
                                hintText: '@config',
                                hintStyle: TextStyle(color: Color(0xFFC0C0C0)),
                                fillColor: Color(0xFF17181C),
                                filled: true),
                            style: TextStyle(color: Color(0xFFC0C0C0)),
                          ),
                        ),
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
