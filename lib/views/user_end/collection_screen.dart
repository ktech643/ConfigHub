import 'package:demo/views/home/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../home/search.dart';

class CollectionScreen extends StatefulWidget {
  const CollectionScreen({super.key});

  @override
  State<CollectionScreen> createState() => _CollectionScreenState();
}

class _CollectionScreenState extends State<CollectionScreen> {
  @override
  Widget build(BuildContext context) {
    int _selectedValue = 1;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: InkWell(
            child: Icon(
          Icons.arrow_back,
          color: Colors.white,
        )),
        title: Text("Saved"),
        actions: [menuPoppWidgett()],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 5, right: 5, top: 30),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15)),
              color: Color(0xFF101316)),
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: ListTile(
                        contentPadding: EdgeInsets.only(top: 10),
                        leading: SizedBox(
                          height: 50,
                          child: CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage(
                              'assets/profile.png',
                            ),
                          ),
                        ),
                        title: Text(
                          'Android Hub',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        trailing: Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child: Radio(
                            fillColor:
                                MaterialStatePropertyAll(Color(0xff32B5AD)),
                            activeColor: Colors.white,
                            value: 1,
                            groupValue: _selectedValue,
                            onChanged: (value) {
                              setState(() {
                                _selectedValue == value!;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    dividerWidgett(),
                    SizedBox(
                      height: 10,
                    ),
                    ListTile(
                      leading: SizedBox(
                        height: 50,
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage(
                            'assets/profile.png',
                          ),
                        ),
                      ),
                      title: Text(
                        'Android Hub',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      trailing: Radio(
                        fillColor: MaterialStatePropertyAll(Color(0xff3C3C3C)),
                        activeColor: Colors.white,
                        value: 0,
                        groupValue: _selectedValue,
                        onChanged: (value) {
                          setState(() {
                            _selectedValue == value!;
                          });
                        },
                      ),
                    ),
                    dividerWidgett()
                  ],
                );
              },
            ),
          ),
        ),
      ),
      backgroundColor: Color(0xff201F24),
    );
  }
}

Widget menuPoppWidgett() {
  return PopupMenuButton(
    color: Color(0xFF353535),
    padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
    constraints: BoxConstraints(maxWidth: 250),
    offset: Offset(0, 5),
    position: PopupMenuPosition.under,
    iconSize: 22,
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
                  padding: EdgeInsets.only(left: 20, right: 20, top: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Create Collection",
                        style: TextStyle(
                            color: Color(0xFF32B5AD),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 4),
                dividerWidgett()
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
                        "delete Collection",
                        style: TextStyle(
                            color: Color(0xFF32B5AD),
                            fontWeight: FontWeight.bold),
                      ),
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
  );
}
